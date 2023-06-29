(in-package :setzkasten)

;; TODO: to be completed and placed somewhere else, maybe together with glyph definitions
(defparameter *musical-elements*
  '(max7 fclef7 cclef7 sb3 sb4 sh4 sb6))

(defparameter *apparatus-string* nil)
(defparameter *glyph-counter* nil)
(defparameter *musical-element-counter* nil)
(defparameter *line-counter* nil)

;; obsolete, only here for temporary legacy
(defun count-elements (expression)
  (dolist (item expression expression)
    (incf *glyph-counter*)
    (when (member item *musical-elements*) (incf *musical-element-counter*))))

;; obsolete, only here for temporary legacy
(defun append-apparatus-line (line)
  (setf *apparatus-string* (concatenate 'string *apparatus-string* line)))

;; obsolete, only here for temporary legacy
(defun generate-apparatus-item (line glyph element reading content)
  (format nil "Line ~a, glyph ~a (element ~a): reading ~a used ~s.~%"
          line glyph element reading content))

;; obsolete, only here for temporary legacy
(defun loop-alt (alt-list filter)
  (unless (null filter)
    (let ((candidate (find (first filter) alt-list :key #'first)))
      (cond (candidate
             (append-apparatus-line
              (generate-apparatus-item *line-counter* *glyph-counter* *musical-element-counter*
                                       (first filter)
                                       (rest candidate)))
             (rest candidate))
            (t (loop-alt alt-list (rest filter)))))))


;; obsolete, only here for temporary legacy
(defun resolve-alt (expression filter)
  (cond ((eq (first expression) :alt)
         (count-elements (loop-alt (rest expression) filter)))
        (t (format t "~&Error in apparatus: no :alt-expression."))))


;; obsolete, only here for temporary legacy
(defun loop-data (restdata filter)
  (cond ((null restdata) nil)
        ((atom (first restdata))
         (let ((item (first restdata)))
           (incf *glyph-counter*)
           (when (member item *musical-elements*) (incf *musical-element-counter*))
           (when (or (eq item 'music) (eq item 'text))
             (setf *glyph-counter* 0 *musical-element-counter* 0)
             (incf *line-counter*))
           (cons item (loop-data (rest restdata) filter))))
        ((eq (first (first restdata)) :alt) (append (resolve-alt (first restdata) filter)
                                                    (loop-data (rest restdata) filter)))
        (t (cons (loop-data (first restdata) filter)
                 (loop-data (rest restdata) filter)))))




(defclass apparatus-state ()
  ((data :initform nil :accessor data)
   (filter :initform nil :initarg :filter :accessor filter)
   (reference-reading :initform nil :initarg :reference-reading :accessor reference-reading)
   (in-header-p :initform nil :accessor in-header-p)
   (line-counter :initform 0 :accessor line-counter)
   (glyph-counter :initform 0 :accessor glyph-counter)
   (musical-element-counter :initform 0 :accessor musical-element-counter)
   (current-section :initform nil :accessor current-section)
   (current-voice :initform nil :accessor current-voice)
   (mobject-counter :initform 0 :accessor mobject-counter)))

(defmethod count-resolved-elements (expression (state apparatus-state))
  (dolist (item expression expression)
    (incf (glyph-counter state))
    (when (member item *musical-elements*) (incf (musical-element-counter state)))))

(defmethod loop-alt-expression (expression filter (state apparatus-state))
  (unless (null filter)
    (let ((candidate (find (first filter) expression :key #'first)))
      (cond (candidate
           ;; generate an apparatus entry here
             (rest candidate))
            (t (loop-alt-expression expression (rest filter) state))))))

(defmethod resolve-reading (expression (state apparatus-state))
  (when (eq (first expression) :alt)
    (count-resolved-elements (loop-alt-expression (rest expression) (filter state) state) state)))

(defmethod loop-score (rest-score (state apparatus-state))
  (cond ((null rest-score) nil)
        ((atom (first rest-score))
         (let ((item (first rest-score)))
           ;; all kinds of counter updates
           (cons item (loop-score (rest rest-score) state))))
        ((eq (first (first rest-score)) :alt)
         (append (resolve-reading (first rest-score) state)
                 (loop-score (rest rest-score) state)))
        (t (cons (loop-score (first rest-score) state)
                 (loop-score (rest rest-score) state)))))

(defun extract-reading (score extraction-arguments reference-reading)
  (let ((state (make-instance 'apparatus-state
                              :reference-reading reference-reading
                              :filter extraction-arguments)))
    (values (loop-score score state) (data state))))





;; obsolete, only here for temporary legacy
(defun extract-apparatus (score extraction-arguments)
  (let ((*apparatus-string* nil)
        (*line-counter* 0)
        (*glyph-counter* 0)
        (*musical-element-counter* 0))
    (values (loop-data score extraction-arguments) *apparatus-string*)))



;; example for meta data
'(:metadata
  :filename "b5-c53-m2"
  :alternative-numbering "m5.058"
  :comment "q021_s256, rotation: 0.94, origin: 932")

;; example for a note idealisation
'(:music
  :type-imitation-line 1
  :type-imitation-glyph 15
  :type-imitation-musical-element 7
  :score-section s3
  :score-voice v2
  :original (sh5 sb5)
  :replacement (b38 b38)
  :reading :idealised
  :comment "C♯ ist hier fragwürdig, wird entfernt."
  :flag :suggestion-jk)

;; example for a original text idealisation
'(:type-imitation-text
  :type-imitation-line 2
  :type-imitation-text-field 1
  :original "tono"
  :replacement "sem.tono"
  :reading :idealised
  :comment "\"sem.\" ergänzt."
  :flag :suggestion-jk)

;; example for a normalised text idealisation (comment only)
'(:normalised-text
  :score-text-element (:section-headings s2)
  :comment "Im Original fehlt hier \"semitono minore\"."
  :flag :suggestion-jk)
