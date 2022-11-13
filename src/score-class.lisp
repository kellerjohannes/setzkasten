(in-package :setzkasten)

;;; TODOs:
;;; - debug glyph name parsing: dotted rhythms
;;; - create parser state class, use dynamic global instance to deal with it
;;; - implement section and voice tags in source data
;;; - implement voice label list in preamble
;;; - solve voice order problem


(defclass score ()
  ((sections :initform nil
             :accessor sections
             :documentation "This simple list contains instances of the `section' class.")
   (filename :initform ""
             :initarg :filename
             :accessor filename
             :documentation "This string contains the filename of the encoding file describing the score, without suffix.")
   (title :initform ""
          :initarg :title
          :accessor title
          :documentation "This string will be displayed as a centered title.")
   (voice-labels :initform nil
                 :initarg :voice-labels
                 :accessor voice-labels
                 :documentation "This alist contains pairs of voice ids and strings that will be printed as instrument names in front of staves. They can be overridden by local label definitions in voice instances."))
  (:documentation "This class contains a model of the complete score."))

(defclass section ()
  ((voices :initform nil
           :accessor voices
           :documentation "This simple list contains instances of the `section' class, the order is relevant for the graphical output.")
   (id :initform nil
       :initarg :id
       :accessor id
       :documentation "This symbol can be used to reference the section internally. It is taken from the score encoding file.")
   (heading :initform ""
            :initarg :heading
            :accessor heading
            :documentation "This string will be displayed as a heading, flush-left above the section. In a normal use case this would resemble the `id' slot, but can be defined independently in the score encoding file.")
   (caption :initform ""
            :initarg :caption
            :accessor caption
            :documentation "This string contains text to be displayed centered below the section."))
  (:documentation "This class contains all information of one section of the score. It acts independently of other sections."))

(defclass voice ()
  ((mobjects :initform nil
             :accessor mobjects
             :documentation "This simple list contains instances of `mobject' (notes and rests). The order is musically relevant and should be respected in the graphical output.")
   (id :initform nil
       :initarg :id
       :accessor id
       :documentation "This symbol can be used to reference the voice internally. It is taken from the score encoding file. It can occur multiple times within a score, in different sections.")
   (label :initform ""
          :initarg :label
          :accessor label
          :documentation "This string will be displayed as instrument labels at the beginning of a stave. If `nil' it will be ignored for graphical output."))
  (:documentation "This class contains all the information about a voice within a section of the score. Voices in other sections need to be instanciated independently in the `voices' slot of each section."))

(defclass mobject ()
  ((pitch :initform nil
          :initarg :pitch
          :accessor pitch
          ;; needs to be changed, because the notation is more expressive than the keyboard:
          ;; probably in the form of '(:a :♯ :⋅)
          :documentation "This list describes the pitch of a note as an organ key: (lettera ordine octave). 'lettera' is one of the seven root note letters, as symbols. 'ordine' is 1-6, referencing the rows of keys. 'octave' is 1-5, where middle-C is 3. If NIL, the object is treated as a rest.")
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
         :documentation "Describes the clef a note is contextualised in. Clef format: (type . line). Type is :c, :f or :g. A tenor clef is represented by '(:c . 7).")
   ;; TODO add a slot for 'tonality context', including an implementation on the level of glyph encoding (because the parser can't decide whether a 'sh' is for a note or for the whole system)
   )
  (:documentation "This class contains all information about a rest or note. Pitch encoding and duration are obvious. Also clef and tonality context are stored for each note individually. When rendering the `mobject' clef and tonality changes need to be identified with a state variable in order to trigger clef display correctly."))


(defmethod add-mobject ((voice voice) mobject-instance)
  "Adds an instance of `mobject' to an instance of `voice'."
  (setf (mobjects voice) (append (mobjects voice) (list mobject-instance))))

(defmethod get-mobject ((voice voice) mobject-id)
  "Returns the instance of a `mobject' based on its `id' slot, given a `voice' instance."
  (find mobject-id (mobjects voice) :key #'id :test #'string=))

(defmethod add-section ((score score) section-instance)
  "Adds an instance of `section' to a given instance of `score'."
  (setf (sections score) (append (sections score) (list section-instance))))

(defmethod get-section ((score score) section-id)
  "Returns the instance of a `section' based on its `id', given a `score' instance."
  (find section-id (sections score) :key #'id :test #'string=))

(defmethod set-section-heading* ((score score) id new-heading)
  "Sets the `heading' of a section referenced by its `id'. If no `section' instance with this `id' exists in `score', it will will be created."
  (let ((candidate (get-section score id)))
    (if candidate
        (setf (heading candidate) new-heading)
        (add-section score (make-instance 'section :id id :heading new-heading)))))

(defmethod set-section-caption* ((score score) id new-caption)
  "Sets the `caption' of a section referenced by its `id'. If no `section' instance with this `id' exists in `score', it will be created."
  (let ((candidate (get-section score id)))
    (if candidate
        (setf (caption candidate) new-caption)
        (add-section score (make-instance 'section :id id :caption new-caption)))))

(defmethod add-voice ((section section) voice-instance)
  "Adds the instance of `voice' to an instance of `section'."
  (setf (voices section) (append (voices section) (list voice-instance))))

(defmethod get-voice ((section section) voice-id)
  "Returns the instance of a voice with a given `id' in an instance of `section'"
  (find voice-id (voices section) :key #'id :test #'string=))

(defmethod add-voice-to-section ((score score) section-id voice-instance)
  "Adds a given instance of `voice' to a `section' referenced by its `id' in a given `score'."
  (add-voice (get-section score section-id) voice-instance))

(defmethod get-voice-in-section ((score score) section-id voice-id)
  "Returns the instance of `voice', referenced by its `id' and the `id' of a section within the instance of `score'."
  (let ((sec (get-section score section-id)))
    (when sec (get-voice sec voice-id))))

(defmethod set-voice-label* ((score score) section-id voice-id voice-label)
  "Sets the `label' slot of a voice in a `score', referenced by the `id' of the `voice' and the `id' of the `section'."
  (let ((sec-candidate (get-section score section-id)))
    (unless sec-candidate
      (add-section score (make-instance 'section :id section-id)))
    (let ((voice-candidate (get-voice-in-section score section-id voice-id)))
      (unless voice-candidate
        (add-voice sec-candidate (make-instance 'voice :id voice-id)))
      (setf (label (get-voice-in-section score section-id voice-id)) voice-label))))

(defmethod add-mobject-to-score ((score score) section-id voice-id mobject-instance)
  "Adds the instance of `mobject' to a voice in a `score', references by the voice's `id' and the section's `id'."
  (add-mobject (get-voice (get-section score section-id) voice-id)
               mobject-instance))

(defmethod make-note (id lettera chromatic-alteration enharmonic-alteration octave value dottedp clef)
  "Instanciates a `mobject' representing a note (not a rest). `lettera', `chromatic-alteration' and `enharmonic-alteration' all need to be provided in keyword form."
  (make-instance 'mobject :id id
                          :pitch (list lettera chromatic-alteration enharmonic-alteration)
                          :value value
                          :dottedp dottedp
                          :clef clef))

(defmethod make-rest (id value dottedp)
  "Instanciates a `mobject' representing a rest (not a note)."
  (make-instance 'mobject :id id
                          :pitch nil
                          :value value
                          :dottedp dottedp
                          :clef nil))


(defmethod print-element ((voice voice))
  "Printing to standard-output, for debugging purposes."
  (format t "~&~4,0tVoice ~a (~s):" (id voice) (label voice))
  (dolist (mobject (mobjects voice))
    (format t "~&~6,0tMusical Object ~a:~&~8,0tPitch = ~a~&~8,0tValue = ~a"
            (id mobject)
            (pitch mobject)
            (value mobject))))

(defmethod print-element ((section section))
  "Printing to standard-output, for debugging purposes."
  (format t "~&~2,0tSection ~a (~s / ~s):" (id section) (heading section) (caption section))
  (dolist (voice (voices section))
    (print-element voice)))

(defmethod print-element ((score score))
  "Printing to standard-output, for debugging purposes."
  (format t "~&Score (~s, ~s):" (title score) (filename score))
  (dolist (section (sections score))
    (print-element section)))










;;; testing / development



;;; parsing
;; OBSOLETE, will be replaced by score-parser.lisp, incorporating all the following
;; functionality

(defparameter *list-ignore* '(b22 b38 bl))
(defparameter *list-notes* '(sb0 sb1 sb2 sb3 sb4 sb5 sb6 sb7 sb8 sb9 sb10
                             m0 m1 m2 m3 m4 m5 m6 m7 m8 m9 m10))



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
  '(("sb" . :semibrevis)
    ("m" . :minima)))

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
  (let ((result (cdr (assoc name *dict-values* :test #'string-equal))))
     (unless result (format t "~&Warning: unknown glyph name ~s." name))
    (values
   ;;; BUG: suffix needs to be removed from search string
     result
     (let ((suffix (subseq name (1- (length name)))))
       (cond ((string= "d" suffix) :diesis)
             ((string= "c" suffix) :comma))))))

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
  '(((:c nil nil)       (:c 1))
    ((:c nil :diesis)   (:c 4))
    ((:c :sharp nil)    (:d 2))
    ((:d :flat nil)     (:d 3))
    ((:d :flat :diesis) (:d 5))
    ((:d nil nil)       (:d 1))
    ((:d nil :comma)    (:d 6))
    ((:d nil :diesis)   (:d 4))
    ((:d :sharp nil)    (:e 3))
    ((:e :flat nil)     (:e 2))
    ((:e :flat :diesis) (:e 5))
    ((:e nil nil)       (:e 1))
    ((:e nil :comma)    (:e 6))
    ((:e nil :diesis)   (:e 4))
    ((:e :sharp nil)    (:f 3))
    ((:f nil nil)       (:f 1))
    ((:f nil :diesis)   (:f 4))
    ((:f :sharp nil)    (:g 2))
    ((:g :flat nil)     (:g 3))
    ((:g :flat :diesis) (:g 5))
    ((:g nil nil)       (:g 1))
    ((:g nil :comma)    (:g 6))
    ((:g nil :diesis)   (:g 4))
    ((:g :sharp nil)    (:a 2))
    ((:a :flat nil)     (:a 3))
    ((:a :flat :diesis) (:a 5))
    ((:a nil nil)       (:a 1))
    ((:a nil :comma)    (:a 6))
    ((:a nil :diesis)   (:a 4))
    ((:a :sharp nil)    (:b 3))
    ((:a :flat nil)     (:b 2))
    ((:a :flat :diesis) (:b 5))
    ((:b nil nil)       (:b 1))
    ((:b nil :comma)    (:b 6))
    ((:b nil :diesis)   (:b 4))
    ((:b :sharp nil)    (:c 3))))

(defun glyph->key (root accidental enharmonic)
  "`root' in the form of '(:c . 2) where 2 is the octave indicator, `accidental' in the form of :sharp, `enharmonicp' is T if there is a dot above the notehead. Returns a Vicentino-key in the form of '(:c 5 2) where 5 is the 'ordine' and 2 is the octave indicator."
  (let ((root-ordine (second (find (list (first root) accidental enharmonic)
                                   *glyph-key*
                                   :test #'equalp
                                   :key #'first))))
    (unless root-ordine (format t "~&Warning: glyph ~s not found."
                                (list (first root) accidental enharmonic)))
    (append root-ordine (list (cdr root)))))

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
  (multiple-value-bind (key value)
      (parse-note clef-state accidental-state (symbol-name glyph))
    (add-mobject-to-score score
                          section-state
                          voice-state
                          (make-instance 'mobject :clef clef-state
                                                  :id (format nil "~a-~a-~a"
                                                              section-state
                                                              voice-state
                                                              counter)
                                                  :key key
                                                  :value value)))
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
             (setf clef-state '(:f . 7)))
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
