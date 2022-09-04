(in-package :setzkasten)

(defclass score ()
  ((sections :initform nil
             :accessor sections)
   (filename :initform ""
             :initarg :filename
             :accessor filename)
   (title :initform ""
          :initarg :title
          :accessor title
          :documentation "This string will be displayed as a centered title.")
   (voice-labels :initform nil
                 :initarg :voice-labels
                 :accessor voice-labels
                 :documentation "This alist contains pairs of voice ids and strings that will be printed as instrument names in front of staves. They can be overridden by local label definitions in voice instances.")))

(defclass section ()
  ((voices :initform nil
           :accessor voices)
   (id :initform nil
       :initarg :id
       :accessor id
       :documentation "This symbol can be used to reference the section internally. It is taken from the score definition.")
   (heading :initform ""
            :initarg :heading
            :accessor heading
            :documentation "This string will be displayed as a heading, flush-left above the section.")))

(defclass voice ()
  ((mobjects :initform nil
             :accessor mobjects)
   (id :initform nil
       :initarg :id
       :accessor id
       :documentation "This symbol can be used to reference the voice internally. It is taken from the score definition. It can occur multiple times within a score, in different sections.")
   (label :initform :inherit
          :initarg :label
          :accessor label
          :documentation "This string will be displayed as instrument labels at the beginning of a stave. When set to :inherit it will be taken from the labels defined on score level.")))

(defclass mobject ()
  ((key :initform nil
                 :initarg :key
                 :accessor key
                 :documentation "This describes the pitch of a note as an organ key: (lettera ordine octave). 'lettera' is one of the seven root note letters, as symbols. 'ordine' is 1-6, referencing the rows of keys. 'octave' is 1-5, where middle-C is 3. If NIL, the object is treated as a rest.")
   (id :initform nil
       :initarg :id
       :accessor id)
   (value :initform nil
          :initarg :value
          :accessor value
          :documentation "This describes the rhythmic value of the note or rest. It can be :maxima, :longa, :brevis, :semibrevis, :minima, :semiminima, :croma, :semicroma.")
   (dottedp :initform nil
            :initarg :dottedp
            :accessor dottedp
            :documentation "T if the rhythmic value is dotted.")
   (clef :initform nil
         :initarg :clef
         :accessor clef
         :documentation "Describes the clef a note is contextualised in. Clef format: (type . line). Type is :c, :f or :g.")))


(defmethod add-mobject ((voice voice) mobject-instance)
  (setf (mobjects voice) (append (mobjects voice) (list mobject-instance))))

(defmethod get-mobject ((voice voice) mobject-id)
  (find mobject-id (mobjects voice) :key #'id :test #'string=))

(defmethod add-section ((score score) section-instance)
  (setf (sections score) (append (sections score) (list section-instance))))

(defmethod get-section ((score score) section-id)
  (find section-id (sections score) :key #'id :test #'string=))

(defmethod add-voice ((section section) voice-instance)
  (setf (voices section) (append (voices section) (list voice-instance))))

(defmethod get-voice ((section section) voice-id)
  (find voice-id (voices section) :key #'id :test #'string=))

(defmethod add-voice-to-score ((score score) section-id voice-instance)
  (add-voice (get-section score section-id) voice-instance))

(defmethod add-mobject-to-score ((score score) section-id voice-id mobject-instance)
  (add-mobject (get-voice (get-section score section-id) voice-id)
               mobject-instance))

(defmethod make-note (id lettera ordine octave value dottedp clef)
  (make-instance 'mobject :id id
                          :key (list lettera ordine octave)
                          :value value
                          :dottedp dottedp
                          :clef clef))

(defmethod make-rest (id value dottedp)
  (make-instance 'mobject :id id
                          :key nil
                          :value value
                          :dottedp dottedp
                          :clef nil))

(defmethod print-element ((voice voice))
  (format t "~&    Voice ~a:" (id voice))
  (dolist (mobject (mobjects voice))
    (format t "~&      Musical Object ~a:~&" (id mobject))))

(defmethod print-element ((section section))
  (format t "~&  Section ~a:" (id section))
  (dolist (voice (voices section))
    (print-element voice)))

(defmethod print-element ((score score))
  (format t "~&Score:")
  (dolist (section (sections score))
    (print-element section)))


(defparameter *test-data*
  '((:metadata
     (:file-name "m1.13"))
    (:preamble-types
     (:width nil)
     (:height nil)
     (:background "white"))
    (:preamble-lilypond
     (:title "Descritione Test"))
    (:data
     (:text 50 78 (230 nil "Testext."))
     (:music nil
      max7 fclef7 b22 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb5 b22 sb4 b22 sb3 b38 bl)
     )))


;;; parsing

(defparameter *list-ignore* '(b22 b38))
(defparameter *list-notes* '(sb1 sb2 sb3 sb4 sb5 sb6 sb7 sb8 sb9 sb10))



(defun extract-item (category sub-category data)
  (second (find sub-category (rest (find category data :key #'first))
                :key #'first)))

(defun filter-music (data)
  (remove nil
          (remove-if #'numberp
                     (remove :music
                             (reduce #'append
                                     (remove-if-not (lambda (candidate)
                                                      (eq :music (first candidate)))
                                                    (rest (find :data data :key #'first))))))))
(defparameter *dict-values*
  ;; TODO complete
  '(("sb" . :semibrevis)))

(defparameter *gamut*
  '((:c . 1) (:d . 1) (:e . 1) (:f . 1) (:g . 1) (:a . 1) (:b . 1)
    (:c . 2) (:d . 2) (:e . 2) (:f . 2) (:g . 2) (:a . 2) (:b . 2)
    (:c . 3) (:d . 3) (:e . 3) (:f . 3) (:g . 3) (:a . 3) (:b . 3)
    (:c . 4) (:d . 4) (:e . 4) (:f . 4) (:g . 4) (:a . 4) (:b . 4)
    (:c . 5)))

(defparameter *dict-clef-gamut*
  '((:c . (:c . 3))
    (:f . (:f . 2))
    (:g . (:g . 3))))

(defun glyph-name->value (name)
  "`name': string such as 'sb', will return `:semibrevis'. If there is the letter 'd' attached to the glyph name, the second return value will be T (meaning there is an enharmonic dot above the note)."
  (values
   ;;; BUG: suffix needs to be removed from search string
   (cdr (assoc name *dict-values* :test #'string=))
   (let ((suffix (subseq name (1- (length name)))))
     (cond ((string= "d" suffix) :diesis)
           ((string= "c" suffix) :comma)))))

(defun split-string-at-digit (str)
  "Splits a string before the first occurrence of a digit."
  (let ((split-point (position-if #'digit-char-p str)))
    (cons (subseq str 0 split-point)
          (subseq str split-point))))

(defun clef->root-pitch (clef)
  "Takes a `clef' in the form of '(:c . 7) and returns a root pitch of the clefs reference note in the form of '(:c . 3), which is pitchclass and octave indicator."
  (cdr (assoc (first clef) *dict-clef-gamut*)))

(defun glyph->root-pitch (clef staff-position)
  "`glyph': string such as 'sb', `clef': '(:c . 7), `staff-position' of notehead as a string: 0-10. Returns a note in the form of '(:c . 3), where the cdr is the octave indicator."
  (nth (- (position (clef->root-pitch clef) *gamut* :test #'equal)
          (- (cdr clef) (parse-integer staff-position)))
       *gamut*))

(defparameter *glyph-key*
  '(((:c nil nil) (:c 1))
    ((:c nil :diesis) (:c 4))
    ((:c :sharp nil) (:d 2))
    ((:d :flat nil) (:d 3))
    ((:d :flat :diesis) (:d 5))
    ((:d nil :comma) (:d 6))
    ((:d nil nil) (:d 1))
    ((:d nil :diesis) (:d 4))
    ((:d :sharp nil) (:e 2))
    ((:e :flat nil) (:e 3))
    ((:e :flat :diesis) (:e 5))
    ((:e nil :comma) (:e 6))))

(defun glyph->key (root accidental enharmonic)
  "`root' in the form of '(:c . 2) where 2 is the octave indicator, `accidental' in the form of :sharp, `enharmonicp' is T if there is a dot above the notehead. Returns a Vicentino-key in the form of '(:c 5 2) where 5 is the 'ordine' and 2 is the octave indicator."
  (let ((root-ordine (second (find (list (first root) accidental enharmonic)
                                   *glyph-key*
                                   :test #'equal))))
    (append root-ordine (list (cdr root)))))

;;; TODO test
(defun parse-note (clef accidental glyph)
  "`clef' in the form of '(:c . 7), `accidental' in the form of :sharp, :flat, :natural, `glyph' in the form of a string like 'sb3'. Returns a value pair with a `score'-class compatible key in the form of '(:d 1 2) where :d is the Vicentino-note-identifier, 1 is the 'ordine' and 2 is the octave indicator. The second value is the rhythmic value of the note in the form of `:semibrevis'."
  (let* ((split-glyph (split-string-at-digit glyph))
         (root-pitch (glyph->root-pitch clef (cdr split-glyph))))
    (multiple-value-bind (note-value enharmonic)
        (glyph-name->value (car split-glyph))
      (values (glyph->key root-pitch accidental enharmonic) note-value))))


(defparameter *score* nil)

(defun push-note (score section-state voice-state accidental-state clef-state counter glyph)
  (unless section-state
    (setf section-state "anonymous")
    (add-section score (make-instance 'section :id section-state :heading "")))
  (unless voice-state
    (setf voice-state "anonymous")
    (add-voice-to-score score section-state (make-instance 'voice :id voice-state :label "")))
  ;; TODO convert glyph into key / value
  (add-mobject-to-score score
                        section-state
                        voice-state
                        (make-instance 'mobject :clef clef-state
                                                :id (format nil "~a-~a-~a"
                                                            section-state
                                                            voice-state
                                                            counter)
                                                :key (parse-note clef-state
                                                                 accidental-state
                                                                 (symbol-name glyph))
                                                :value :semibrevis))
  (values section-state voice-state accidental-state))

(defun populate-score (data)
  (let ((*score* (make-instance 'score :title (extract-item :preamble-lilypond :title data))))
    (do* ((clef-state nil)
          (accidental-state nil)
          (f-clef-flag nil)
          (section-state nil)
          (voice-state nil)
          (object-id-counter 0)
          (remaining-data (filter-music data) (rest remaining-data))
          (candidate (first remaining-data) (first remaining-data)))
         ((null remaining-data) nil)
      (cond ((eq candidate 'max7) (setf f-clef-flag t))
            ((eq candidate 'fclef7)
             (setf f-clef-flat nil)
             (setf clef-state '(:c . 4)))
            ((member candidate *list-notes*)
             (multiple-value-bind (new-section new-voice new-accidental)
                 (push-note *score*
                            section-state
                            voice-state
                            accidental-state
                            clef-state
                            object-id-counter
                            candidate)
               ;; possible to bind directly?
               (setf section-state new-section)
               (setf voice-state new-voice)
               (setf accidental-state new-accidental)
               (incf object-id-counter)))
            (t (unless (member candidate *list-ignore*)
                 (format t "~&Symbol ~a unknown." candidate)))))
    *score*))
