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
         :documentation "Describes the clef a note is contextualised in. Clef format: (type . line).")))


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
