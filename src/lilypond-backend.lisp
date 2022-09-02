(in-package :setzkasten)

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

(defparameter *dict-ly-notenames* '(("C1" "c" "" "")
                                    ("C3" "b" "is" "")
                                    ("C4" "c" "" "^.")
                                    ("D1" "d" "" "")
                                    ("D2" "c" "is" "")
                                    ("D3" "d" "es" "")
                                    ("D4" "d" "" "^.")
                                    ("D5" "d" "es" "^.")
                                    ("D6" "d" "" "^\\markup{,}")
                                    ("E1" "e" "" "")
                                    ("E2" "e" "s" "")
                                    ("E3" "d" "is" "")
                                    ("E4" "e" "" "^.")
                                    ("E5" "e" "s" "^.")
                                    ("E6" "e" "" "^\\markup{,}")))
;; TODO write down remaining keys

(defun value->ly-duration (value)
  (cdr (assoc value *dict-ly-duration*)))

(defun octave->ly-octave (octave)
  (cdr (assoc octave *dict-ly-octave*)))

(defun key->ly-notename (lettera ordine)
  ;;(format t "~&~a~a" (symbol-name lettera) ordine)
  (cdr (assoc (format nil "~a~a" (symbol-name lettera) ordine)
              *dict-ly-notenames* :test #'string=)))

(defun key->ly-pitch (key note-value)
  (let ((notename (key->ly-notename (first key) (second key))))
    (format nil "~a~a~a~a~a"
            (first notename)
            (second notename)
            (octave->ly-octave (third key))
            (value->ly-duration note-value)
            (third notename))))








;;; testscore

(defparameter *testscore* (make-instance 'score))

(add-section *testscore* (make-instance 'section :id "section1"))
(add-section *testscore* (make-instance 'section :id "section2"))

(add-voice-to-score *testscore* "section1" (make-instance 'voice :id "canto" :label "Canto"))
(add-voice-to-score *testscore* "section1" (make-instance 'voice :id "tenor" :label "Tenor"))

(add-voice-to-score *testscore* "section2" (make-instance 'voice :id "canto" :label "Canto"))
(add-voice-to-score *testscore* "section2" (make-instance 'voice :id "alto" :label "Alto"))
(add-voice-to-score *testscore* "section2" (make-instance 'voice :id "tenor" :label "Tenor"))
(add-voice-to-score *testscore* "section2" (make-instance 'voice :id "basso" :label "Basso"))

(add-mobject-to-score *testscore* "section1" "canto" (make-note "n1" 'd 1 3 :semibrevis nil '(cclef . 1)))
(add-mobject-to-score *testscore* "section1" "canto" (make-note "n2" 'd 2 3 :semibrevis nil '(cclef . 1)))
(add-mobject-to-score *testscore* "section1" "canto" (make-note "n3" 'e 1 3 :semibrevis nil '(cclef . 1)))
(add-mobject-to-score *testscore* "section1" "canto" (make-note "n4" 'e 2 3 :semibrevis nil '(cclef . 1)))

(add-mobject-to-score *testscore* "section1" "tenor" (make-note "n1" 'd 1 3 :semibrevis nil '(fclef . 4)))
(add-mobject-to-score *testscore* "section1" "tenor" (make-note "n2" 'd 2 3 :semibrevis nil '(fclef . 4)))
(add-mobject-to-score *testscore* "section1" "tenor" (make-note "n3" 'e 1 3 :semibrevis nil '(fclef . 4)))
(add-mobject-to-score *testscore* "section1" "tenor" (make-note "n4" 'e 2 3 :semibrevis nil '(fclef . 4)))

(add-mobject-to-score *testscore* "section2" "canto" (make-note "n1" 'c 1 3 :semibrevis nil '(cclef . 4)))
(add-mobject-to-score *testscore* "section2" "alto" (make-note "n1" 'c 1 3 :semibrevis nil '(cclef . 4)))
(add-mobject-to-score *testscore* "section2" "tenor" (make-note "n1" 'c 1 3 :semibrevis nil '(cclef . 4)))
(add-mobject-to-score *testscore* "section2" "basso" (make-note "n1" 'c 1 3 :semibrevis nil '(fclef . 4)))

(defmethod generate-ly-code ((mobject mobject))
  (key->ly-pitch (key mobject) (value mobject)))

(defmethod generate-ly-code ((voice voice))
  (format nil "~&\\new Staff~&{~&~{~a ~}~&}"
          (mapcar (lambda (mobject)
                    (generate-ly-code mobject))
                  (mobjects voice))))

(defmethod generate-ly-code ((section section))
  (format nil "\\center-column~&{~&\\line~&{~&\\score~&{~&<<~{~&~a~}~&>>~&}~&}~&}"
          (mapcar (lambda (voice)
                    (generate-ly-code voice))
                  (voices section))))

(defmethod generate-ly-code ((score score))
  (format nil "\\version \"2.22.2\"~&\\markup{~&~{~a~&~}~&}"
          (mapcar (lambda (section)
                    (generate-ly-code section))
                  (sections score))))

(defmethod write-ly ((score score))
  (with-open-file (file "~/Vicentino21/edition/setzkasten/ly-export/textscore.ly" :direction :output :if-exists :supersede :if-does-not-exist :create)
    (format file "~a" (generate-ly-code score))))
