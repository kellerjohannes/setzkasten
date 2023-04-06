(in-package :setzkasten)

;; for now an empty class, just for the purpose of symmetry to type-imitation-backend
;; slots of this subclass can be used to globally configure lilypond, for example a
;; state deciding whether to use modern or old clefs
(defclass lilypond-backend (setzkasten-backend)
  ((timep :initform nil
          :initarg :timep
          :accessor timep
          :documentation "If nil, no time signature (meter) will be set, lilypond will use \\cadenzaOn and \\cadenzaOff to implmement free time.")
   (output-format :initform :svg-cropped
                  :initarg :output-format
                  :accessor output-format
                  :documentation "Value can be :svg-cropped or :pdf-multipage")
   (clef-type :initform :modern
              :initarg :clef-type
              :accessor clef-type
              :documentation "Values can be :original, :mensural or :modern.")
   (rest-type :initform :standard
              :initarg :rest-type
              :accessor rest-type
              :documentation "Values can be :standard or :mensural.")
   (notename-convention :initform :vicentino
                        :initarg :notename-convention
                        :accessor notename-convention
                        :documentation "Values can be :vicentino or :double-accidentals")
   (pitch-conversion :initform :none
                     :initarg :pitch-conversion
                     :accessor pitch-conversion
                     :documentation "Values can be :none, :transposition-quarta-discendente :transposition-tono-discendente")
   (notehead-type :initform :standard
                  :initarg :notehead-type
                  :accessor notehead-type
                  :documentation "Values can be :standard or :petrucci.")))

(defmethod set-clef-type ((backend lilypond-backend) new-clef-type)
  (setf (clef-type backend) new-clef-type))



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

;; TODO add more possible key lists, mainly the ones with :natural
(defparameter *dict-ly-notenames*
  '(((:c nil nil) "c" "" "")
    ((:b :sharp nil) "b" "is" "")
    ((:c nil :dot) "\\dot c" "" "-.")
    ((:c :flat :dot) "\\dot c" "es" "-.")
    ((:c :flat nil) "c" "es" "")
    ((:c nil :comma) "c" "" "^\\markup{\\hspace #0.8 ,}")
    ((:d nil nil) "d" "" "")
    ((:c :sharp nil) "c" "is" "")
    ((:c :sharp :dot) "\\dot c" "is" "-.")
    ((:d :flat nil) "d" "es" "")
    ((:d nil :dot) "\\dot d" "" "-.")
    ((:d :flat :dot) "\\dot d" "es" "-.")
    ((:d nil :comma) "d" "" "^\\markup{\\hspace #0.8 ,}")
    ((:e nil nil) "e" "" "")
    ((:e :flat nil) "e" "s" "")
    ((:d :sharp nil) "d" "is" "")
    ((:d :sharp :dot) "\\dot d" "is" "-.")
    ((:e nil :dot) "\\dot e" "" "-.")
    ((:e :flat :dot) "\\dot e" "s" "-.")
    ((:e nil :comma) "e" "" "^\\markup{\\hspace #0.8 ,}")
    ((:f nil nil) "f" "" "")
    ((:e :sharp nil) "e" "is" "")
    ((:f nil :dot) "\\dot f" "" "-.")
    ((:g nil nil) "g" "" "")
    ((:f :sharp nil) "f" "is" "")
    ((:f :flat nil) "f" "es" "")
    ((:f :sharp :dot) "\\dot f" "is" "-.")
    ((:g :flat nil) "g" "es" "")
    ((:g nil :dot) "\\dot g" "" "-.")
    ((:g :flat :dot) "\\dot g" "es" "-.")
    ((:g nil :comma) "g" "" "^\\markup{\\hspace #0.8 ,}")
    ((:a nil nil) "a" "" "")
    ((:g :sharp nil) "g" "is" "")
    ((:g :sharp :dot) "\\dot g" "is" "-.")
    ((:a :flat nil) "a" "s" "")
    ((:a nil :dot) "\\dot a" "" "-.")
    ((:a :flat :dot) "\\dot a" "s" "-.")
    ((:a :sharp :dot) "\\dot a" "is" "-.")
    ((:a nil :comma) "a" "" "^\\markup{\\hspace #0.8 ,}")
    ((:b nil nil) "b" "" "")
    ((:b :natural nil) "b" "" "")
    ((:b :flat nil) "b" "es" "")
    ((:a :sharp nil) "a" "is" "")
    ((:b nil :dot) "\\dot b" "" "-.")
    ((:b :natural :dot) "\\dot b" "" "-.")
    ((:b :flat :dot) "\\dot b" "es" "-.")
    ((:b nil :comma) "b" "" "^\\markup{,}")))

(defparameter *dict-ly-notenames-double-accidentals*
  '(((:c nil nil) "c")
    ((:b :sharp nil) "b" "is")
    ((:c nil :dot) "d" "eses")
    ((:c :flat :dot) "c" "isis")
    ((:c :flat nil) "c" "es")
    ((:c nil :comma) "c^\\markup{,}")
    ((:d nil nil) "d")
    ((:c :sharp nil) "c" "is")
    ((:c :sharp :dot) "d" "es")
    ((:d :flat nil) "d" "es")
    ((:d nil :dot) "e" "es")
    ((:d :flat :dot) "c" "isis")
    ((:d nil :comma) "d^\\markup{,}")
    ((:e nil nil) "e")
    ((:e :flat nil) "e" "s")
    ((:d :sharp nil) "d" "is")
    ((:d :sharp :dot) "e" "s")
    ((:e nil :dot) "f" "es")
    ((:e :flat :dot) "d" "isis")
    ((:e nil :comma) "e^\\markup{,}")
    ((:f nil nil) "f")
    ((:e :sharp nil) "e" "is")
    ((:f nil :dot) "g" "eses")
    ((:g nil nil) "g")
    ((:f :sharp nil) "f" "is")
    ((:f :flat nil) "f" "es")
    ((:f :sharp :dot) "g" "es")
    ((:g :flat nil) "g" "es")
    ((:g nil :dot) "a" "eses")
    ((:g :flat :dot) "f" "isis")
    ((:g nil :comma) "g^\\markup{,}")
    ((:a nil nil) "a")
    ((:g :sharp nil) "g" "is")
    ((:g :sharp :dot) "a" "s")
    ((:a :flat nil) "a" "s")
    ((:a nil :dot) "b" "eses")
    ((:a :flat :dot) "g" "isis")
    ((:a :sharp :dot) "a" "s")
    ((:a nil :comma) "a^\\markup{,}")
    ((:b nil nil) "b")
    ((:b :natural nil) "b")
    ((:b :flat nil) "b" "es")
    ((:a :sharp nil) "a" "is")
    ((:b nil :dot) "c" "es")
    ((:b :natural :dot) "c" "es")
    ((:b :flat :dot) "a" "isis")
    ((:b nil :comma) "b^\\markup{,}")))

(defparameter *dict-ly-notenames-double-accidentals-cents*
  '(((:c nil nil) "c" "" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 0 } }")
    ((:b :sharp nil) "b" "is" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 1158.94 } }")
    ((:c nil :dot) "d" "eses" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 41.05 } }")
    ((:c :flat :dot) "c" "isis" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 1158.94 } }")
    ((:c :flat nil) "c" "es" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 1123.94 } }")
    ((:c nil :comma) "c" "" "^\\markup{,}")
    ((:d nil nil) "d" "" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 193.16 } }")
    ((:c :sharp nil) "c" "is" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 76.05 } }")
    ((:c :sharp :dot) "d" "es" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 117.12 } }")
    ((:d :flat nil) "d" "es" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 117.12 } }")
    ((:d nil :dot) "e" "es" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 234.21 } }")
    ((:d :flat :dot) "c" "isis" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 158.17 } }")
    ((:d nil :comma) "d" "" "^\\markup{,}")
    ((:e nil nil) "e" "" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 386.21 } }")
    ((:e :flat nil) "e" "s" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 310.26 } }")
    ((:d :sharp nil) "d" "is" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 269.21 } }")
    ((:d :sharp :dot) "e" "s" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 310.26 } }")
    ((:e nil :dot) "f" "es" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 427.26 } }")
    ((:e :flat :dot) "d" "isis" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 351.31 } }")
    ((:e nil :comma) "e^\\markup{,}")
    ((:f nil nil) "f" "" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 503.42 } }")
    ((:e :sharp nil) "e" "is" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 462.36 } }")
    ((:f nil :dot) "g" "eses" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 544.47 } }")
    ((:g nil nil) "g" "" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 696.58 } }")
    ((:f :sharp nil) "f" "is" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 579.47 } }")
    ((:f :flat nil) "f" "es" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 427.26 } }")
    ((:f :sharp :dot) "g" "es" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 620.53 } }")
    ((:g :flat nil) "g" "es" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 620.53 } }")
    ((:g nil :dot) "a" "eses" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 737.63 } }")
    ((:g :flat :dot) "f" "isis" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 661.58 } }")
    ((:g nil :comma) "g^\\markup{,}")
    ((:a nil nil) "a" "" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 889.73 } }")
    ((:g :sharp nil) "g" "is" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 772.63 } }")
    ((:g :sharp :dot) "a" "s" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 813.69 } }")
    ((:a :flat nil) "a" "s" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 813.69 } }")
    ((:a nil :dot) "b" "eses" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 930.78 } }")
    ((:a :flat :dot) "g" "isis" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 854.74 } }")
    ((:a :sharp :dot) "a" "s" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 1006.84 } }")
    ((:a nil :comma) "a^\\markup{,}")
    ((:b nil nil) "b" "" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 1082.89 } }")
    ((:b :natural nil) "b" "" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 1082.89 } }")
    ((:b :flat nil) "b" "es" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 1006.84 } }")
    ((:a :sharp nil) "a" "is" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 965.78 } }")
    ((:b nil :dot) "c" "es" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 1123.94 } }")
    ((:b :natural :dot) "c" "es" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 1123.94 } }")
    ((:b :flat :dot) "a" "isis" "^\\markup{ \\abs-fontsize #4 \\center-align { \\hspace #0.5 1047.89 } }")
    ((:b nil :comma) "b^\\markup{,}")))


(defparameter *dict-conversion-quarta-discendente*
  '(((:c nil nil) :g nil nil -1)
    ((:b :sharp nil) :g :flat :dot 0)
    ((:c nil :dot) :g nil :dot -1)
    ((:c :flat :dot) :g :flat :dot -1)
    ((:c :flat nil) :g :flat nil -1)
    ((:c nil :comma) :g nil :comma -1)
    ((:d nil nil) :a nil nil -1)
    ((:c :sharp nil) :g :sharp nil -1)
    ((:c :sharp :dot) :a :flat nil -1)
    ((:d :flat nil) :a :flat nil -1)
    ((:d nil :dot) :a nil :dot -1)
    ((:d :flat :dot) :a :flat :dot -1)
    ((:d nil :comma) :a nil :comma -1)
    ((:e nil nil) :b nil nil -1)
    ((:e :flat nil) :b :flat nil -1)
    ((:d :sharp nil) :a :sharp nil -1)
    ((:d :sharp :dot) :b :flat nil -1)
    ((:e nil :dot) :b nil :dot -1)
    ((:e :flat :dot) :b :flat :dot -1)
    ((:e nil :comma) :b nil :comma -1)
    ((:f nil nil) :c nil nil 0)
    ((:e :sharp nil) :b :sharp nil -1)
    ((:f nil :dot) :c nil :dot 0)
    ((:g nil nil) :d nil nil 0)
    ((:f :sharp nil) :c :sharp nil 0)
    ((:f :flat nil) :c :flat nil 0)
    ((:f :sharp :dot) :d :flat nil 0)
    ((:g :flat nil) :d :flat nil 0)
    ((:g nil :dot) :d nil :dot 0)
    ((:g :flat :dot) :d :flat :dot 0)
    ((:g nil :comma) :d nil :comma 0)
    ((:a nil nil) :e nil nil 0)
    ((:g :sharp nil) :d :sharp nil 0)
    ((:g :sharp :dot) :e :flat nil 0)
    ((:a :flat nil) :e :flat nil 0)
    ((:a nil :dot) :e nil :dot 0)
    ((:a :flat :dot) :e :flat :dot 0)
    ((:a :sharp :dot) :f nil nil 0)
    ((:a nil :comma) :e nil :comma 0)
    ((:b nil nil) :f :sharp nil 0)
    ((:b :natural nil) :f :sharp nil 0)
    ((:b :flat nil) :f nil nil 0)
    ((:a :sharp nil) :e :sharp nil 0)
    ((:b nil :dot) :g :flat nil 0)
    ((:b :natural :dot) :g :flat nil 0)
    ((:b :flat :dot) :f nil :dot 0)
    ((:b nil :comma) :f :sharp :comma 0)))

(defparameter *dict-ly-mensural-clefs* '(("C7" . "mensural-c4")
                                         ("C5" . "mensural-c3")
                                         ("C3" . "mensural-c2")
                                         ("C1" . "mensural-c1")
                                         ("C9" . "mensural-c5")
                                         ("F9" . "mensural-f")
                                         ("F7" . "mensural-f")
                                         ("F5" . "varbaritone")
                                         ("G3" . "mensural-g")
                                         ("G1" . "french")))

(defparameter *dict-ly-clefs* '(("C7" . "tenor")
                                ("C5" . "alto")
                                ("C3" . "mezzosoprano")
                                ("C1" . "soprano")
                                ("F9" . "bass")
                                ("F7" . "bass")
                                ("F5" . "varbaritone")
                                ("G3" . "treble")
                                ("G1" . "french")))

(defparameter *dict-ly-modern-clefs* '(("C7" . "treble_8")
                                       ("C5" . "treble")
                                       ("C3" . "treble")
                                       ("C1" . "treble")
                                       ("F9" . "bass")
                                       ("F7" . "bass")
                                       ("F5" . "bass")
                                       ("G3" . "treble")
                                       ("G1" . "treble")))

(defparameter *dict-ly-rest-types* '((:standard . "default")
                                     (:mensural . "mensural")))

(defparameter *dict-ly-notehead-types* '((:standard . "baroque")
                                         (:petrucci . "petrucci")))

(defun lookup-notehead-type (notehead-type-keyword)
  (cdr (assoc notehead-type-keyword *dict-ly-notehead-types*)))

(defun lookup-rest-type (rest-type-keyword)
  (cdr (assoc rest-type-keyword *dict-ly-rest-types*)))

(defun value->ly-duration (value)
  (cdr (assoc value *dict-ly-duration*)))

(defun octave->ly-octave (octave)
  (cdr (assoc octave *dict-ly-octave*)))

(defun convert-pitch (key keyword)
  (if (eq keyword :none)
      key
      (let* ((candidate (list (first key) (second key) (third key)))
             (result (cdr (assoc candidate
                                 (case keyword
                                   (:transposition-quarta-discendente
                                    *dict-conversion-quarta-discendente*)
                                   (:transposition-tono-discendente
                                    *dict-conversion-tono-discendente*))
                                 :test #'equal))))
        (list (first result) (second result) (third result) (+ (fourth key)
                                                               (if (fourth result)
                                                                   (fourth result)
                                                                   0))))))

(defun key->ly-notename (lettera chromatic-alteration enharmonic-alteration convention)
  (cdr (assoc (list lettera chromatic-alteration enharmonic-alteration)
              (case convention
                (:vicentino *dict-ly-notenames*)
                (:double-accidentals *dict-ly-notenames-double-accidentals*)
                (:double-accidentals-cents *dict-ly-notenames-double-accidentals-cents*))
              :test #'equal)))

(defun key->ly-pitch (key note-value dottedp duration-override divider convention conversion)
  (if key
      (let* ((new-key (convert-pitch key conversion))
             (notename (key->ly-notename (first new-key) (second new-key) (third new-key)
                                         convention)))
        ;; (format t "~&ly notename: ~s" notename)
        (format nil "~a~@[~a~]~a~a~a~a~@[~a~] ~@[~a~]"
                (first notename) ;; root name (a, b, c, ...)
                (second notename) ;; alteration suffix (is, es)
                (octave->ly-octave (+ (fourth new-key)
                                      (if (and (or (eq convention :double-accidentals)
                                                   (eq convention :double-accidentals-cents))
                                               (and (string= (first notename) "c")
                                                    (string= (second notename) "es")))
                                          1 0))) ;; (' ,)
                (value->ly-duration note-value) ;; (\breve, 1, 2, 4, 8)
                (if dottedp "." "") ;; rhythmic dot
                (if duration-override (format nil "*~a" duration-override) "") ;; for tuplet implementation
                (third notename) ;; dot-appendix (-.)
                (case divider
                  (:regular "\\bar \"|\"")
                  (:dashed "\\bar \"!\"")
                  (:dotted "\\bar \";\"")
                  (:double "\\bar \"||\""))))
      (format nil "r~a" (value->ly-duration note-value))))

(defmethod clef->ly-clef ((backend lilypond-backend) clef)
  "Clef is '(type . position), `type' is :c, :f or :g, `position' is 0-10. Set `modernp' to T to get modern key equivalents."
  (cdr (assoc (format nil "~a~a" (symbol-name (car clef)) (cdr clef))
              (case (clef-type backend)
                (:modern *dict-ly-modern-clefs*)
                (:original *dict-ly-clefs*)
                (:mensural *dict-ly-mensural-clefs*))
              :test #'string=)))



(defparameter *dict-ligature-values* '((:longa . :brevis)
                                       (:brevis . :semibrevis)
                                       (:semibrevis . :minima)
                                       (:minima . :semiminima)
                                       (:semiminima . :croma)))

(defun ligature-value-override (value)
  (cdr (assoc value *dict-ligature-values*)))


(defparameter *dict-value-number* '((:semibrevis . 1)
                                    (:brevis . 2)
                                    (:longa . 4)
                                    (:maxima . 8)
                                    (:minima . 1/2)
                                    (:semiminima . 1/4)
                                    (:croma . 1/8)
                                    (:biscroma . 1/16)))

(defun value->number (value)
  (cdr (assoc value *dict-value-number*)))

(defmethod find-shortest-duration ((score score))
  (let ((result 8))
    (mapc (lambda (section)
            (mapc (lambda (voice)
                    (mapc (lambda (mobject)
                            (let ((duration (value mobject)))
                              ;; (format t "~&Duration: ~a" duration)
                              (when (and duration (< (value->number duration) result))
                                (setf result (value->number duration)))))
                          (mobjects voice)))
                  (voices section)))
          (sections score))
    result))

(defun convert-key-signature (key-signature conversion)
  (loop for item in key-signature
        for i from 0
        collect (cons i (cond ((not (eq conversion :none)) (intern ",NATURAL"))
                              ((eq item nil) (intern ",NATURAL"))
                              ((eq item :flat) (intern ",FLAT"))
                              ((eq item :sharp) (intern ",SHARP"))
                              (t (format t "~&Unknown accidental in signature."))))))

;; option for old-style key signatures, maybe to be controlled in a backend class slot:
;;~%~16,0t\\override Staff.KeySignature.flat-positions = #'((-5 . 5))
;;~%~16,0t\\override Staff.KeyCancellation.flat-positions = #'((-5 . 5))

(defun generate-key-signature (key-signature conversion)
  (format nil "~
~%~18,0t\\key c #`~a "
          (convert-key-signature key-signature conversion)))

(defmethod generate-mobject-ly-code ((mobject mobject) (backend lilypond-backend)
                                     clef-state key-state clef-override)
  (let ((current-clef (if clef-override
                          clef-override
                          (clef->ly-clef backend (clef mobject))))
        (current-key (key-signature mobject))
        (result nil))
    (when (string/= current-clef clef-state)
      (setf result (format nil "~%~18,0t\\clef ~s" current-clef)))
    (when (and current-key (not (equal current-key key-state)))
      (setf result (concatenate 'string result
                                (generate-key-signature current-key (pitch-conversion backend)))))
    ;;(format t "~&~s" (value mobject))
    (setf result
          (concatenate 'string
                       result
                       (if (ligature mobject)
                           (let ((old-pitch (pitch mobject)))
                             (format nil " \\[ ~a( \\melisma ~a) \\] \\melismaEnd"
                                     (key->ly-pitch (list (first old-pitch)
                                                          (first (ligature mobject))
                                                          (third (ligature mobject))
                                                          (fourth old-pitch))
                                                    (ligature-value-override (value mobject))
                                                    (dottedp mobject)
                                                    (duration-override mobject)
                                                    (divider mobject)
                                                    (notename-convention backend)
                                                    (pitch-conversion backend))
                                     (key->ly-pitch (list (first old-pitch)
                                                          (second (ligature mobject))
                                                          (fourth (ligature mobject))
                                                          (fourth old-pitch))
                                                    (ligature-value-override (value mobject))
                                                    (dottedp mobject)
                                                    (duration-override mobject)
                                                    (divider mobject)
                                                    (notename-convention backend)
                                                    (pitch-conversion backend))))
                           (format nil " ~a"
                                   (key->ly-pitch (pitch mobject)
                                                  (value mobject)
                                                  (dottedp mobject)
                                                  (duration-override mobject)
                                                  (divider mobject)
                                                  (notename-convention backend)
                                                  (pitch-conversion backend))))))
    (values result current-clef current-key)))


;; only a sketch, this should be put in a dictionary to implement different meters based on a keyword: parser implementation missing
(defun generate-ly-meter (meter-keyword)
  (declare (ignore meter-keyword))
  "\\override Score.TimeSignature.stencil = #(fixed-signature-c-cut \"timesig.neomensural22\") \\time 4/2")

(defmethod generate-voice-ly-code ((voice voice) (backend lilypond-backend))
  (let ((clef-state nil)
        (key-state nil))
    (format nil "~
~14,0t\\new Staff \\with { instrumentName = \"~a\"}
~14,0t{
~16,0t\\new Voice \\with { \\remove \"Note_heads_engraver\"
~36,0t\\consists \"Completion_heads_engraver\"
~36,0t\\remove \"Rest_engraver\"
~36,0t\\consists \"Completion_rest_engraver\"}
~16,0t{
~18,0t\\accidentalStyle Score.forget
%~18,0t\\override Accidental.after-line-breaking = #'()
~18,0t\\override Rest.style = #'~a
~18,0t\\override NoteHead.style = #'~a
~@[~a~]
~{~a ~}
~@[~a~]
~16,0t}
~@[~a~]
~14,0t}"
            (label voice)
            (lookup-rest-type (rest-type backend))
            (lookup-notehead-type (notehead-type backend))
            (if (timep backend)
                (let ((first-mobject (first (mobjects voice))))
                  (if first-mobject
                      (format nil "~18,0t~a" (generate-ly-meter (meter (first (mobjects voice)))))
                      ""))
                (format nil "~
~18,0t\\cadenzaOn
~18,0t\\override Staff.TimeSignature.stencil = ##f"))
            (mapcar (lambda (mobject)
                      (multiple-value-bind (mobject-string current-clef current-key)
                          (generate-mobject-ly-code mobject backend clef-state key-state
                                                    (clef-override voice))
                        (setf clef-state current-clef)
                        (setf key-state current-key)
                        mobject-string))
                    (mobjects voice))
            (if (timep backend)
                "" ;; nothing in case of time signature
                (format nil "~18,0t\\cadenzaOff"))
            (when (lyrics voice) (format nil "~16,0t\\addlyrics { ~a }" (lyrics voice))))))


(defun generate-formatted-text (format-list)
  (let ((result nil))
    (dolist (item format-list result)
      (cond ((eq item :bold) (setf result (concatenate 'string result " \\bold ")))
            ((eq item :italics) (setf result (concatenate 'string result " \\italic ")))
            ((eq item :normal) (setf result (concatenate 'string result " \\normal-text ")))
            (t (setf result (concatenate 'string result "\"" item "\"")))))))

(defun generate-multiline-text (text-string)
  (format nil "~
~{~8,0t\\line {
~10,0t\\left-align { ~a }
~8,0t}
~}" (mapcar (lambda (textline)
              (generate-formatted-text (split-formatted-string textline)))
            (split-string-to-list text-string "\\"))))

(defun generate-l-bracket-string (bracket-data)
  (format nil "\\path #0.20 #'((moveto ~a ~a) (rlineto -0.5 0) (rlineto 0 ~a) (rlineto 0.5 0))"
          (first bracket-data)
          (second bracket-data)
          (third bracket-data)))

;; "\\path #0.25 #'((moveto 0 12) (rlineto -0.5 0) (rlineto 0 -16) (rlineto 0.5 0))"

(defun generate-r-bracket-string (bracket-data)
  (format nil "\\path #0.20 #'((moveto ~a ~a) (rlineto 0.5 0) (rlineto 0 ~a) (rlineto -0.5 0))"
          (fourth bracket-data)
          (fifth bracket-data)
          (sixth bracket-data)))

(defmethod generate-section-ly-code ((section section) (backend lilypond-backend) shortest-duration)
  "`shortest-duration' in Lilypond note value (1/2 for minima)."
  (let ((section-code (format nil "~
~6,0t\\center-column {
~@[~a
~8,0t\\vspace #0.2~]
~8,0t\\line {
~@[~10,0t~a~]
~10,0t\\score {
~@[~a~]
~12,0t<<
~{~&~a~}
~12,0t>>
~12,0t\\layout {
%~14,0t#(layout-set-staff-size 15)
~@[~14,0tindent = ~a\\cm~]
~14,0t\\context {
~16,0t\\Score
~16,0t\\override SpacingSpanner.common-shortest-duration = #(ly:make-moment ~a)
~16,0t\\override LyricText.font-size = #'-1.0
~14,0t}
~12,0t}
~10,0t}
~@[~10,0t~a~]
~8,0t}
~@[~8,0t\\vspace #0.2
~a~]
~6,0t}
~6,0t\\hspace #3"
          (if (string= (heading section) "")
              nil
              (generate-multiline-text (heading section)))
          (when (bracket section)
            (generate-l-bracket-string (bracket section)))
          (when (lyrics (first (voices section)))
            (format nil "~12,0t\\new ChoirStaff"))
          (mapcar (lambda (voice)
                    (generate-voice-ly-code voice backend))
                  (voices section))
          (when (bracket section) 0)
          shortest-duration
          (when (bracket section)
            (generate-r-bracket-string (bracket section)))
          (if (string= (caption section) "")
              nil
              (generate-multiline-text (caption section)))))
        (newline-code (format nil "~
~4,0t}
~4,0t\\null
~4,0t\\null
~@[~4,0t\\line {
~6,0t\\center-align
~6,0t\\fontsize#2 { ~a }
~4,0t}
~4,0t\\null~]
~4,0t\\line {"
                              (line-heading section))))
    (if (newlinep section)
        (concatenate 'string newline-code section-code)
        section-code)))


(defmethod generate-score-ly-code ((score score) (backend lilypond-backend))
  (case (output-format backend)
    (:svg-cropped
     (format nil "~
\\version \"2.24.1\"

% Auto generated file

\\header {
  tagline = ##f
}

#(define ((fixed-signature-c-cut glyph) grob)
~4,0t(grob-interpret-markup grob
~6,0t(markup #:override '(baseline-skip . 0) #:number
~8,0t(markup (#:fontsize 0 #:musicglyph glyph)))))

dot = {
~2,0t \\once \\override Script.add-stem-support = ##f
~2,0t \\once \\override Script.toward-stem-shift = 0
~2,0t \\once \\override Script.skyline-horizontal-padding = 0
~2,0t \\once \\override Script.direction = 1
~2,0t \\once \\override Script.font-size = 1
}

\\markup {
~2,0t\\center-column {
~@[~{~4,0t\\line {
~6,0t\\center-align
~6,0t\\fontsize#3 { \\concat {~a} }
~8,0t\\vspace #1
~4,0t}~}
~4,0t\\null~]
~@[~4,0t\\line {
~6,0t\\center-align
~6,0t\\fontsize#2 { ~a }
~4,0t}
~4,0t\\null~]
~4,0t\\line {
~{~a ~&~}
~4,0t}
~2,0t}
}"
             ;; (generate-formatted-text (split-formatted-string (title score)))
             (mapcar (lambda (textline)
                       (generate-formatted-text (split-formatted-string textline)))
                     (split-string-to-list (title score) "\\"))
             (line-heading (first (sections score)))
             (mapcar (lambda (section)
                       (generate-section-ly-code section
                                                 backend
                                                 (find-shortest-duration score)))
                     (sections score))))
    (:pdf-multipage
     (let ((section (first (sections score))))
       (format nil "~
\\version \"2.24.1\"

% Auto generated file

\\header {
  title = \"~a\"
  subtitle = \"~a\"
  copyright = \\markup { \\tiny #(string-append \"Vicentino21, generated on \" (strftime \"%d/%m/%Y\" (localtime (current-time)))) }
  tagline = ##f
}

#(define ((fixed-signature-c-cut glyph) grob)
~4,0t(grob-interpret-markup grob
~6,0t(markup #:override '(baseline-skip . 0) #:number
~8,0t(markup (#:fontsize 0 #:musicglyph glyph)))))

dot = {
~2,0t \\once \\override Script.add-stem-support = ##f
~2,0t \\once \\override Script.toward-stem-shift = 0
~2,0t \\once \\override Script.skyline-horizontal-padding = 0
~2,0t \\once \\override Script.direction = 1
~2,0t \\once \\override Script.font-size = 1
}

\\score {
~@[~a~]
~2,0t<<
~{~&~a~}
~2,0t>>
~2,0t\\layout {
~4,0t#(layout-set-staff-size 20)
~4,0t\\context {
~6,0t\\Score
~6,0t\\override LyricText.font-size = #'-1.0
~4,0t}
~2,0t}
}"
               (standalone-title score)
               (standalone-subtitle score)
               (when (lyrics (first (voices section)))
                 (format nil "~2,0t\\new ChoirStaff"))
               (mapcar (lambda (voice)
                         (generate-voice-ly-code voice backend))
                       (voices section)))))))


(defun exec-lilypond (input &key (output "")
                              (lilypond-path *lilypond-path*)
                              (output-format :svg-cropped))
  (case output-format
    (:svg-cropped
     (uiop:run-program (list lilypond-path "-dbackend=svg" "-dcrop" "-o"
                             (uiop:native-namestring
                              (namestring (make-pathname :type nil :defaults output)))
                             (uiop:native-namestring input))
                       :output :interactive :error-output :interactive))
    (:pdf-multipage (uiop:run-program (list lilypond-path "-o"
                             (uiop:native-namestring
                              (namestring (make-pathname :type nil :defaults output)))
                             (uiop:native-namestring input))
                       :output :interactive :error-output :interactive))))

(defun run-lilypond (ly-code output-format &key (ly-file nil ly-file-supplied-p)
                                             (output-file nil output-file-supplied-p)
                                             (lilypond-path *lilypond-path*))
  (declare (ignore ly-file-supplied-p))
  (flet ((tmp (pathname)
           (uiop:tmpize-pathname (uiop:merge-pathnames* (uiop:temporary-directory)
                                                        pathname))))
    (let* ((ly-file (or ly-file (tmp "cl-lilypond.ly")))
           (output-file (or output-file (tmp "lilypond.pdf"))))
      (unwind-protect
           (progn
             (alexandria:write-string-into-file ly-code
                                                ly-file
                                                :if-exists :supersede
                                                :if-does-not-exist :create)
             (exec-lilypond ly-file
                            :output output-file
                            :lilypond-path lilypond-path
                            :output-format output-format))
        ;(unless ly-file-supplied-p (uiop:delete-file-if-exists ly-file))
        (unless output-file-supplied-p (uiop:delete-file-if-exists output-file))))))

(defun create-lilypond-score (score-instance backend suffix)
  (format t "~&Running Lilypond on ~a-~a" (filename score-instance) suffix)
  (run-lilypond (generate-score-ly-code score-instance backend)
                (output-format backend)
                :ly-file (merge-pathnames *lilypond-export-path*
                                              (pathname
                                               (format nil "~a-~a.ly"
                                                       (filename score-instance) suffix)))
                :output-file (merge-pathnames *lilypond-export-path*
                                              (pathname
                                               (case (output-format backend)
                                                 (:svg-cropped
                                                  (format nil "~a-~a.svg"
                                                          (filename score-instance) suffix))
                                                 (:pdf-multipage
                                                  (format nil "~a-~a.pdf"
                                                          (filename score-instance) suffix))))))
  (when (eq (output-format backend) :svg-cropped)
    (rename-file (merge-pathnames *lilypond-export-path*
                                  (pathname (format nil "~a-~a.cropped.svg"
                                                    (filename score-instance)
                                                    suffix)))
                 (merge-pathnames *lilypond-export-path*
                                  (pathname (format nil "~a-~a.svg"
                                                    (filename score-instance)
                                                    suffix)))))
  (format nil "~a-~a" (filename score-instance) suffix))


(defmethod create-score-file ((backend lilypond-backend) score suffix)
  (add-output-file backend (create-lilypond-score (parse-score score suffix) backend suffix)))
