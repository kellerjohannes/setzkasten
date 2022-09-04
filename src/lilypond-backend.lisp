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
                                    ("C4" "\\dot c" "" "-.")
                                    ("D1" "d" "" "")
                                    ("D2" "c" "is" "")
                                    ("D3" "d" "es" "")
                                    ("D4" "\\dot d" "" "-.")
                                    ("D5" "\\dot d" "es" "-.")
                                    ("D6" "d" "" "^\\markup{,}")
                                    ("E1" "e" "" "")
                                    ("E2" "e" "s" "")
                                    ("E3" "d" "is" "")
                                    ("E4" "\\dot e" "" "-.")
                                    ("E5" "\\dot e" "s" "-.")
                                    ("E6" "e" "" "^\\markup{,}")
                                    ("F1" "f" "" "")
                                    ("F3" "e" "is" "")
                                    ("F4" "\\dot f" "" "-.")
                                    ("G1" "g" "" "")
                                    ("G2" "f" "is" "")
                                    ("G3" "g" "es" "")
                                    ("G4" "\\dot g" "" "-.")
                                    ("G5" "\\dot g" "es" "-.")
                                    ("G6" "g" "" "" "^\\markup{,}")
                                    ("A1" "a" "" "")
                                    ("A2" "g" "is" "")
                                    ("A3" "a" "s" "")
                                    ("A4" "\\dot a" "" "-.")
                                    ("A5" "\\dot a" "s" "-.")
                                    ("A6" "a" "" "^\\markup{,}")
                                    ("B1" "b" "" "")
                                    ("B2" "b" "es" "")
                                    ("B3" "a" "is" "")
                                    ("B4" "\\dot b" "" "-.")
                                    ("B5" "\\dot b" "es" "-.")
                                    ("B6" "b" "" "^\\markup{,}")))

(defparameter *dict-ly-clefs* '(("C4" . "tenor")
                                ("C3" . "alto")
                                ("C2" . "mezzosoprano")
                                ("C1" . "soprano")
                                ("F4" . "bass")
                                ("F3" . "varbaritone")
                                ("G2" . "treble")
                                ("G1" . "french")))

(defparameter *dict-ly-modern-clefs* '(("C4" . "treble_8")
                                       ("C3" . "treble")
                                       ("C2" . "treble")
                                       ("C1" . "treble")
                                       ("F4" . "bass")
                                       ("F3" . "bass")
                                       ("G2" . "treble")
                                       ("G1" . "treble")))

(defun value->ly-duration (value)
  (cdr (assoc value *dict-ly-duration*)))

(defun octave->ly-octave (octave)
  (cdr (assoc octave *dict-ly-octave*)))

(defun key->ly-notename (lettera ordine)
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

(defun clef->ly-clef (clef modernp)
  "Clef is '(type . position), `type' is :c, :f or :g, `position' is 1-5. Set `modernp' to T to get modern key equivalents."
  (cdr (assoc (format nil "~a~a" (symbol-name (car clef)) (cdr clef))
              (if modernp
                  *dict-ly-modern-clefs*
                  *dict-ly-clefs*)
              :test #'string=)))









;;; testscore

(defparameter *testscore* nil)

(defun reset-score ()
  (setf *testscore* (make-instance 'score :title "Descrittione"))

  (add-section *testscore* (make-instance 'section :id "section1" :heading "[A]"))
  (add-section *testscore* (make-instance 'section :id "section2" :heading "[B]"))

  (add-voice-to-score *testscore* "section1" (make-instance 'voice :id "canto" :label "Canto"))
  (add-voice-to-score *testscore* "section1" (make-instance 'voice :id "tenor" :label "Tenor"))

  (add-voice-to-score *testscore* "section2" (make-instance 'voice :id "canto" :label "Canto"))
  (add-voice-to-score *testscore* "section2" (make-instance 'voice :id "alto" :label "Alto"))
  (add-voice-to-score *testscore* "section2" (make-instance 'voice :id "tenor" :label "Tenor"))
  (add-voice-to-score *testscore* "section2" (make-instance 'voice :id "basso" :label "Basso"))

  (add-mobject-to-score *testscore* "section1" "canto" (make-note "n1" 'd 1 3 :semibrevis nil '(:c . 1)))
  (add-mobject-to-score *testscore* "section1" "canto" (make-note "n2" 'd 2 3 :semibrevis nil '(:c . 1)))
  (add-mobject-to-score *testscore* "section1" "canto" (make-note "n3" 'e 1 3 :semibrevis nil '(:c . 2)))
  (add-mobject-to-score *testscore* "section1" "canto" (make-note "n4" 'e 2 3 :semibrevis nil '(:c . 1)))

  (add-mobject-to-score *testscore* "section1" "tenor" (make-note "n1" 'd 1 3 :semibrevis nil '(:c . 4)))
  (add-mobject-to-score *testscore* "section1" "tenor" (make-note "n2" 'd 2 3 :semibrevis nil '(:c . 4)))
  (add-mobject-to-score *testscore* "section1" "tenor" (make-note "n3" 'e 5 3 :semibrevis nil '(:c . 4)))
  (add-mobject-to-score *testscore* "section1" "tenor" (make-note "n4" 'e 2 3 :semibrevis nil '(:c . 4)))

  (add-mobject-to-score *testscore* "section2" "canto" (make-note "n1" 'c 1 3 :semibrevis nil '(:c . 1)))
  (add-mobject-to-score *testscore* "section2" "alto" (make-note "n1" 'c 1 3 :semibrevis nil '(:c . 3)))
  (add-mobject-to-score *testscore* "section2" "tenor" (make-note "n1" 'c 1 3 :semibrevis nil '(:c . 4)))
  (add-mobject-to-score *testscore* "section2" "basso" (make-note "n1" 'c 1 3 :semibrevis nil '(:f . 4))))




;;; ly code generation

(defmethod generate-mobject-ly-code ((mobject mobject) clef-state)
  (let ((current-clef (clef->ly-clef (clef mobject) nil)))
    (values
     (if (string= current-clef clef-state)
         (format nil "~%~16,0t~a" (key->ly-pitch (key mobject) (value mobject)))
         (format nil "~%~16,0t\\clef ~s ~a"
                 current-clef
                 (key->ly-pitch (key mobject) (value mobject))))
     current-clef)))

(defmethod generate-voice-ly-code ((voice voice) heading)
  (let ((clef-state nil)
        (headingp nil))
    (format nil "~
~14,0t\\new Staff \\with { instrumentName = \"~a\"} {
~16,0t\\override Staff.TimeSignature.stencil = ##f
~16,0t~a~{~a ~}
~14,0t}"
            (label voice)
            (unless headingp
              (setf headingp t)
              (format nil "~@[\\tempo ~s~]" heading))
            (mapcar (lambda (mobject)
                      (multiple-value-bind (mobject-string current-clef)
                          (generate-mobject-ly-code mobject clef-state)
                        (setf clef-state current-clef)
                        mobject-string))
                    (mobjects voice)))))


(defmethod generate-section-ly-code ((section section))
  (format nil "~
~6,0t\\center-column {
~8,0t\\line {
~10,0t\\score {
~12,0t<<
~{~&~a~}
~12,0t>>
~10,0t}
~8,0t}
~6,0t}"
          (mapcar (lambda (voice)
                    (generate-voice-ly-code voice (heading section)))
                  (voices section))))

(defmethod generate-score-ly-code ((score score))
  (format nil "~
\\version \"2.22.2\"

% Auto generated file

dot = {
~2,0t \\once \\override Script.add-stem-support = ##f
~2,0t \\once \\override Script.toward-stem-shift = 0
~2,0t \\once \\override Script.skyline-horizontal-padding = 0
~2,0t \\once \\override Script.direction = 1
~2,0t \\once \\override Script.font-size = 1
}

\\markup {
~2,0t\\center-column {
~4,0t\\override #'(line-width . 90)
~4,0t\\center-align
~4,0t\\fontsize#4
~4,0t\\wordwrap-string { ~s }
~4,0t\\null
~4,0t\\line {
~{~a ~&~}
~4,0t}
~2,0t}
}"
          ;; alternative: fill-line instead of line, only works if ly linewidth is set sanely
          (title score)
          (mapcar (lambda (section)
                    (generate-section-ly-code section))
                  (sections score))))

(defun write-ly ()
  (reset-score)

  (with-open-file (file "~/Vicentino21/edition/setzkasten/ly-export/textscore.ly"
                        :direction :output
                        :if-exists :supersede
                        :if-does-not-exist :create)
    (format file "~a" (generate-score-ly-code *testscore*))))
