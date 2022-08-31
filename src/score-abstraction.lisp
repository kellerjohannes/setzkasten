(in-package :setzkasten)

(defclass score ()
  ((sections :initform (list (make-instance 'section))
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
  ((voices :initform (list (make-instance 'voice))
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
  ((mobjects :initform (list (make-instance 'mobject))
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
   (chromatic-accidental :initform nil
                         :initarg :chromatic-accidental
                         :accessor chromatic-accidental
                         :documentation "This describes the alteration sign in front of a note: :natural, :sharp, :flat.")
   (enharmonic-accidental :initform nil
                          :initarg :enharmonic-accidental
                          :accessor enharmonic-accidental
                          :documentation "This describes the enharmonic alteration sign of a dot above the note.")
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







;;; Lilypond translators


(defparameter *dict-ly-duration* '((:maxima . "\\maxima")
                                   (:longa . "\\longa")
                                   (:brevis . "\\breve")
                                   (:semibrevis . "1")
                                   (:minima . "2")
                                   (:semiminima . "4")
                                   (:croma . "8")
                                   (:semicroma . "16")))

(defparameter *dict-ly-octave* '((1 . ",")
                                 (2 . "")
                                 (3 . "'")
                                 (4 . "''")
                                 (5 . "'''")))

(defparameter *dict-ly-notenames* '(("c1" . "d")
                                    ("c3" . "bis")
                                    ("c4" . "c-.")
                                    (
                                        ;work
                                     )))

(defun value->ly-duration (value)
  (cdr (assoc value *dict-ly-duration*)))

(defun octave->ly-octave (octave)
  (cdr (assoc octave *dict-ly-octave*)))

(defun key->ly-notename (lettera ordine)
  ;; work: 2 classes of mappings
  )

(defun key->ly-pitch (key)
  ())
