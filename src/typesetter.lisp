;;;; TODO describe this file

(in-package :setzkasten)

(defun parse-setzkasten-instance (instance-definition syntax-definition
                  &optional list-of-components)
  "Takes the definition of one instance and the syntax description of one
   instance and returns a new actual instance with parameters set according
   to the two input arguments."
  (let ((new-stencil (make-instance (first instance-definition))))
    (labels ((rec-user-defined (accessors values)
           (cond ((or (null accessors) (null values)) nil)
             (t (let ((value (first values))
                  (accessor (first (first accessors)))
                  (default-value (second (first accessors))))
              (cond ((eq default-value :instance)
                 (setf (slot-value new-stencil accessor)
                       (find value list-of-components :key #'id :test #'string=)))
                ((eq value 'default)
                 (setf (slot-value new-stencil accessor) default-value))
                (t (setf (slot-value new-stencil accessor) value))))
            (rec-user-defined (rest accessors) (rest values)))))
         (rec-pre-defined (accessor)
           (cond ((null accessor) nil)
             (t (setf (slot-value new-stencil (first (first accessor)))
                  (second (first accessor)))
            (rec-pre-defined (rest accessor))))))
      (rec-user-defined (second syntax-definition) (rest (rest instance-definition)))
      (rec-pre-defined (third syntax-definition)))
    new-stencil))

(defun parse-setzkasten (definition-components definition-glyphs syntax-definition)
  "Takes user defined stencils and a syntax definition, returns a list of stencil instances."
  (let ((list-of-components
      (mapcar (lambda (definition)
            (parse-setzkasten-instance definition (assoc (first definition)
                                 syntax-definition)))
          definition-components)))
    (mapcar (lambda (definition)
          (parse-setzkasten-instance definition (assoc (first definition) syntax-definition)
                     list-of-components))
        definition-glyphs)))





(defclass typesetter ()
  ((line-container :initform nil :accessor line-container)
   (line-width-list :initform nil :accessor line-width-list)
   (svg-symbol-container :initform nil :accessor svg-symbol-container)
   (name :initform "" :initarg :name :accessor name)
   (width :initform 0 :initarg :width :accessor width)
   (height :initform 0 :initarg :height :accessor height)
   (margins :initform '(0 0 0 0) :initarg :margins :accessor margins
        :documentation "Top, Right, Bottom, Left")
   (bg-color :initform nil :initarg :bg-color :accessor bg-color)
   (svg-use-container :initform nil :accessor svg-use-container)))

;; TODO probably redundant
(defmethod add-line ((score typesetter) line-width)
  (push '() (line-container score))
  (push line-width (line-width-list score)))

(defmethod add-text-line ((score typesetter) text-data)
  (push text-data (line-container score))
  (push nil (line-width-list score)))

;; TODO keep an eye on this, probably not necessary
(defmethod initialize-instance :after ((score typesetter) &key)
  (setf (line-container score) nil)
                                        ;(add-line score (width score))
  )

(defmethod add-stencil-to-line ((score typesetter) (stencil glyph))
  (push stencil (first (line-container score))))

(defun get-stencil (id stencils)
  (let ((result (find id stencils :test #'string= :key #'id)))
    (if result
        result
        ;; (format t "~&~a not found." id)
        )))

(defmethod add-music-line ((score typesetter) music-data stencil-list)
  (push '() (line-container score))
  (push (second music-data) (line-width-list score))
  (mapc (lambda (element)
          (add-stencil-to-line score (get-stencil element stencil-list)))
        (rest (rest music-data)))
  (push (second music-data) (first (line-container score)))
  (push :music (first (line-container score))))

(defmethod show-data ((score typesetter))
  (format t "~&----line-container:~&~s
~&----svg-symbol-container:~&~s
~&----svg-use-container:~&~s"
          (line-container score)
          (svg-symbol-container score)
          (svg-use-container score)))

(defmethod calculate-glyph-width (line)
  (reduce #'+ (rest (rest line)) :key #'glyph-width))

(defmethod top-margin ((score typesetter)) (first (margins score)))

(defmethod right-margin ((score typesetter)) (second (margins score)))

(defmethod bottom-margin ((score typesetter)) (third (margins score)))

(defmethod left-margin ((score typesetter)) (fourth (margins score)))

(defmethod typeset-music-line ((score typesetter) line line-width alignment y-counter)
  (let ((x-counter (left-margin score))
        (padding (if (eq alignment :block)
                     (/ (if line-width
                            (- line-width (calculate-glyph-width line))
                            0)
                        (- (length line) 2.0))
                     0)))
    (mapc (lambda (stencil)
            (unless (svg-data stencil)
              (cast stencil)
              (push (svg-data stencil) (svg-symbol-container score)))
            (push (output-use (id stencil) :x x-counter :y y-counter)
                  (svg-use-container score))
            ;;(format t "~&x: ~a" x-counter)
            (incf x-counter (+ padding (glyph-width stencil))))
          (reverse (rest (rest line)))))
  (glyph-height (third line)))

(defparameter *font-height* 0 "Needs to be set when defining scores.")

;; ('text height y-offset (x-offset length string) (x-offset length string))
(defmethod typeset-text-line ((score typesetter) text-data y-counter)
  (mapc (lambda (text-element)
          (push (output-text (+ (first text-element) (left-margin score))
                             (+ y-counter (third text-data))
                             (third text-element)
                             *font-height*
                             (second text-element))
                (svg-use-container score)))
        (rest (rest (rest text-data))))
  (second text-data))

(defmethod typeset ((score typesetter) alignment)
  (let ((y-counter (top-margin score)))
    (mapc (lambda (line line-width)
            ;; TODO restructure case: incf -> case
            (case (first line)
              (:text (incf y-counter (typeset-text-line score line y-counter)))
              (:music (incf y-counter (typeset-music-line score line line-width alignment y-counter)))))
          (reverse (line-container score))
          (reverse (line-width-list score)))))


(defmethod get-svg-height ((score typesetter))
  (let ((top-and-bottom-margin (+ (top-margin score)
                                  (bottom-margin score))))
    (if (height score)
        (+ top-and-bottom-margin (height score))
        (+ top-and-bottom-margin
           (reduce #'+ (line-container score)
                   :key (lambda (line)
                          (if (eq (first line) :text)
                              (second line)
                              (glyph-height (third line)))))))))

;; uncovered case: if a snippet does not have a defined width (nil), the width of the svg will be
;; wrong. Not a problem, because music examples without a music line as its defining width are
;; to be neglected.
(defun calculate-text-width (text-line)
  (let ((last-snippet (first (last (rest (rest (rest text-line)))))))
    (if (second last-snippet)
        (+ (first last-snippet) (second last-snippet))
        (first last-snippet))))

(defmethod get-svg-width ((score typesetter))
  (let ((left-and-right-margin (+ (right-margin score)
                                  (left-margin score))))
    (if (width score)
        (+ left-and-right-margin (width score))
        (+ left-and-right-margin
           (loop for line in (line-container score)
                 maximize (if (eq (first line) :text)
                              (calculate-text-width line)
                              (if (second line)
                                  (second line)
                                  (calculate-glyph-width line))))))))

(defmethod write-score ((score typesetter))
  (with-open-file (stream (merge-pathnames *svg-export-path*
                                           (pathname (format nil "~a.svg" (name score))))
                          :direction :output
                          :if-exists :supersede
                          :if-does-not-exist :create)
    (format stream "~a~@[~a~]<defs>~{~a~}</defs>~{~a~}~a"
            (toplevel-open (get-svg-width score)
                           (get-svg-height score)
                           (name score))
            (when (bg-color score) (output-background (bg-color score)))
            (svg-symbol-container score)
            (svg-use-container score)
            (toplevel-close))))


;;; parsing vicentino code

(defun lookup-vicentino-code (item glyph-definitions)
  (let ((result (third (find item glyph-definitions :key #'second))))
    (if result result item)))

(defun parse-vicentino-code (data glyph-definitions)
  (mapcar (lambda (line)
            (if (eq (first line) :music)
                (append (list :music (second line))
                        (remove nil (mapcar (lambda (item)
                                              (when (atom item)
                                                (lookup-vicentino-code item glyph-definitions)))
                                            (rest (rest line)))))
                line))
          data))

(defun score-name (score) (first (extract-item :header :filename score)))
(defun score-width (score) (first (extract-item :preamble-type-imitation :width score)))
(defun score-height (score) (first (extract-item :preamble-type-imitation :height score)))
(defun score-bg-color (score) (first (extract-item :preamble-type-imitation :background score)))
(defun score-elements (score) (extract-category :data score))

;; probably the only public symbol, in case I decide to isolate type-imitation into a separate package
(defun create-type-imitation-score (score suffix components glyphs syntax)
  "Takes a complete score encoding expression (including :header), writes a svg file. Returns a string with the filename of the generated file."
  (format t "~&Crafting SVG type imitation for ~a-~a" (score-name score) suffix)
  (let ((stencil-list (parse-setzkasten components glyphs syntax))
        (setter (make-instance 'typesetter
                               :bg-color (if *global-bg-color*
                                             *global-bg-color*
                                             (score-bg-color score))
                               :width (score-width score)
                               :height (score-height score)
                               :margins *score-margins*
                               :name (format nil "~a-~a" (score-name score) suffix))))
    (mapc (lambda (line)
            (cond ((eq (first line) :music)
                   (add-music-line setter line stencil-list))
                  ((eq (first line) :text)
                   (add-text-line setter line))
                  (t nil)))
          (parse-vicentino-code (score-elements score) glyphs))
    (typeset setter :block)  ; use :block for Blocksatz, use :flushed for Flattersatz
    (write-score setter)
    (format nil "~a-~a" (score-name score) suffix)))


;; obsolete, needs to be deleted once hunchentoot is reimplemented
(defun create-scores (data components glyphs syntax)
  (mapcar (lambda (score) (create-type-imitation-score score components glyphs syntax)) data))
