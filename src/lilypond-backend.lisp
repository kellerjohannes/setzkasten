(in-package :setzkasten)

;; for now an empty class, just for the purpose of symmetry to type-imitation-backend
(defclass lilypond-backend (setzkasten-backend)
  ())







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
(defparameter *dict-ly-notenames* '(((:c nil nil) "c" "" "")
                                    ((:b :sharp nil) "b" "is" "")
                                    ((:c nil :dot) "\\dot c" "" "-.")
                                    ((:d nil nil) "d" "" "")
                                    ((:c :sharp nil) "c" "is" "")
                                    ((:d :flat nil) "d" "es" "")
                                    ((:d nil :dot) "\\dot d" "" "-.")
                                    ((:d :flat :dot) "\\dot d" "es" "-.")
                                    ((:d nil :comma) "d" "" "^\\markup{,}")
                                    ((:e nil nil) "e" "" "")
                                    ((:e :flat nil) "e" "s" "")
                                    ((:d :sharp nil) "d" "is" "")
                                    ((:e nil :dot) "\\dot e" "" "-.")
                                    ((:e :flat :dot) "\\dot e" "s" "-.")
                                    ((:e nil :comma) "e" "" "^\\markup{,}")
                                    ((:f nil nil) "f" "" "")
                                    ((:e :sharp nil) "e" "is" "")
                                    ((:f nil :dot) "\\dot f" "" "-.")
                                    ((:g nil nil) "g" "" "")
                                    ((:f :sharp nil) "f" "is" "")
                                    ((:g :flat nil) "g" "es" "")
                                    ((:g nil :dot) "\\dot g" "" "-.")
                                    ((:g :flat :dot) "\\dot g" "es" "-.")
                                    ((:g nil :comma) "g" "" "" "^\\markup{,}")
                                    ((:a nil nil) "a" "" "")
                                    ((:g :sharp nil) "g" "is" "")
                                    ((:a :flat nil) "a" "s" "")
                                    ((:a nil :dot) "\\dot a" "" "-.")
                                    ((:a :flat :dot) "\\dot a" "s" "-.")
                                    ((:a nil :comma) "a" "" "^\\markup{,}")
                                    ((:b nil nil) "b" "" "")
                                    ((:b :natural nil) "b" "" "")
                                    ((:b :flat nil) "b" "es" "")
                                    ((:a :sharp nil) "a" "is" "")
                                    ((:b nil :dot) "\\dot b" "" "-.")
                                    ((:b :flat :dot) "\\dot b" "es" "-.")
                                    ((:b nil :comma) "b" "" "^\\markup{,}")))

(defparameter *dict-ly-clefs* '(("C7" . "tenor")
                                ("C5" . "alto")
                                ("C3" . "mezzosoprano")
                                ("C1" . "soprano")
                                ("F7" . "bass")
                                ("F5" . "varbaritone")
                                ("G3" . "treble")
                                ("G1" . "french")))

(defparameter *dict-ly-modern-clefs* '(("C7" . "treble_8")
                                       ("C5" . "treble")
                                       ("C3" . "treble")
                                       ("C1" . "treble")
                                       ("F7" . "bass")
                                       ("F5" . "bass")
                                       ("G3" . "treble")
                                       ("G1" . "treble")))

(defun value->ly-duration (value)
  (cdr (assoc value *dict-ly-duration*)))

(defun octave->ly-octave (octave)
  (cdr (assoc octave *dict-ly-octave*)))

(defun key->ly-notename (lettera chromatic-alteration enharmonic-alteration)
  (cdr (assoc (list lettera chromatic-alteration enharmonic-alteration)
              *dict-ly-notenames* :test #'equal)))

(defun key->ly-pitch (key note-value)
  (let ((notename (key->ly-notename (first key) (second key) (third key))))
    ;; (format t "~&ly notename: ~s" notename)
    (format nil "~a~a~a~a~a"
            (first notename)
            (second notename)
            (octave->ly-octave (fourth key))
            (value->ly-duration note-value)
            (third notename))))

(defun clef->ly-clef (clef modernp)
  "Clef is '(type . position), `type' is :c, :f or :g, `position' is 0-10. Set `modernp' to T to get modern key equivalents."
  (cdr (assoc (format nil "~a~a" (symbol-name (car clef)) (cdr clef))
              (if modernp
                  *dict-ly-modern-clefs*
                  *dict-ly-clefs*)
              :test #'string=)))






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



(defmethod generate-mobject-ly-code ((mobject mobject) clef-state)
  (let ((current-clef (clef->ly-clef (clef mobject) nil)))
    (values
     (if (string= current-clef clef-state)
         (format nil "~%~16,0t~a" (key->ly-pitch (pitch mobject) (value mobject)))
         (format nil "~%~16,0t\\clef ~s ~a"
                 current-clef
                 (key->ly-pitch (pitch mobject) (value mobject))))
     current-clef)))



(defmethod generate-voice-ly-code ((voice voice) heading)
  (let ((clef-state nil)
        (headingp nil))
    (format nil "~
~14,0t\\new Staff \\with { instrumentName = \"~a\"} {
~16,0t\\override Staff.TimeSignature.stencil = ##f
~16,0t\\override Staff.NoteHead.style = #'baroque
~16,0t~a
~16,0t\\cadenzaOn~{~a ~}
~16,0t\\cadenzaOff
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


(defmethod generate-section-ly-code ((section section) shortest-duration)
  "`shortest-duration' in Lilypond note value (1/2 for minima)."
  (format nil "~
~6,0t\\center-column {
~8,0t\\line {
~10,0t\\score {
~12,0t<<
~{~&~a~}
~12,0t>>
~12,0t\\layout {
~14,0t\\context {
~16,0t\\Score
~16,0t\\override SpacingSpanner.common-shortest-duration = #(ly:make-moment ~a)
~14,0t}
~12,0t}
~10,0t}
~8,0t}
~6,0t}"
          (mapcar (lambda (voice)
                    (generate-voice-ly-code voice (heading section)))
                  (voices section))
          shortest-duration))


(defmethod generate-score-ly-code ((score score))
  (format nil "~
\\version \"2.22.2\"

% Auto generated file

\\header {
  tagline = ##f
}

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
                    (generate-section-ly-code section (find-shortest-duration score)))
                  (sections score))))


(defun exec-lilypond (input &key (output "") (lilypond-path *lilypond-path*))
  (uiop:run-program (list lilypond-path
                          "-dbackend=svg"
                          "-dcrop"
                          "-o"
                          (uiop:native-namestring
                           (namestring (make-pathname :type nil :defaults output)))
                          (uiop:native-namestring input))
                    :output :interactive :error-output :interactive))

(defun run-lilypond (ly-code &key (ly-file nil ly-file-supplied-p)
                               (output-file nil output-file-supplied-p)
                               (lilypond-path *lilypond-path*))
  (flet ((tmp (pathname)
           (uiop:tmpize-pathname (uiop:merge-pathnames* (uiop:temporary-directory)
                                                        pathname))))
    (let* ((ly-file (or ly-file (tmp "cl-lilypond.ly")))
           (output-file (or output-file (tmp "lilypond.pdf"))))
      (unwind-protect
           (progn
             (alexandria:write-string-into-file ly-code ly-file :if-exists :overwrite)
             (exec-lilypond ly-file
                            :output output-file :lilypond-path lilypond-path))
        (unless ly-file-supplied-p (uiop:delete-file-if-exists ly-file))
        (unless output-file-supplied-p (uiop:delete-file-if-exists output-file))))))

(defun create-lilypond-score (score-instance suffix)
  (format t "~&Running Lilypond on ~a-~a" (filename score-instance) suffix)
  (run-lilypond (generate-score-ly-code score-instance)
                :output-file (merge-pathnames *lilypond-export-path*
                                              (pathname
                                               (format nil "~a-~a.ly"
                                                       (filename score-instance)
                                                       suffix))))
  (format nil "~a-~a" (filename score-instance) suffix))


(defmethod create-score-file ((backend lilypond-backend) score suffix)
  (add-output-file backend (create-lilypond-score (parse-score score suffix) suffix)))
