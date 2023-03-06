(asdf:defsystem setzkasten
  :description "Tool to encode and typeset the music of Nicola Vicentino."
  :version "0.1"
  :author "Johannes Keller <johannkell@gmail.com>"
  :licence "Public Domain"
  :components ((:file "vector-package")
               (:file "setzkasten")
               (:file "macros")
               (:file "score-class")
               (:file "score-parser"
                :depends-on ("score-class"))
               (:file "apparatus")
               (:file "class-definitions"
                :depends-on ("macros" "setzkasten"))
               (:file "casting"
                :depends-on ("class-definitions"))
               (:file "typesetter"
                :depends-on ("casting"))
               (:file "svg-generator")
               (:file "backend-class")
               (:file "backend-type-imitation"
                :depends-on ("backend-class" "typesetter"))
               (:file "lilypond-backend"
                :depends-on ("backend-class" "score-parser"))
               (:file "dispatcher"
                :depends-on ("backend-type-imitation" "apparatus" "score-parser"))
               (:file "webserver-display"
                :depends-on ("backend-type-imitation")))
  :depends-on (:hunchentoot :cl-who :cl-ppcre)
  :build-pathname "setzkasten-bin"
  :entry-point "setzkasten:main")


;; development TODOs
;; - something is wrong with (:divider :double), see b3-c53-m1.lisp
;; - implement custos
;; - look after time signature implementation (right now it's rudimentary)
;; - find a solution for repeated accidentals after ties
;;   - \override Accidental.after-line-breaking = #'() doen't work, creates spacing issues
;;     between accidental and preceding barline
;;   - dot is not repeated, since it's implemented as 'staccato'
