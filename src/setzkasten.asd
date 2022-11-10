(asdf:defsystem setzkasten
  :description "Tool to encode and typeset the music of Nicola Vicentino."
  :version "0.1"
  :author "Johannes Keller <johannkell@gmail.com>"
  :licence "Public Domain"
  :components ((:file "vector-package")
               (:file "setzkasten")
               (:file "macros")
               (:file "class-definitions" :depends-on ("macros" "setzkasten"))
               (:file "casting" :depends-on ("class-definitions"))
               (:file "typesetter" :depends-on ("casting"))
               (:file "svg-generator")
               (:file "setzkasten-syntax")
               (:file "glyph-definitions")
               (:file "score-definitions")
               (:file "backend-type-imitation" :depends-on ("typesetter"))
               (:file "webserver-display" :depends-on ("backend-type-imitation")))
  :depends-on (:hunchentoot
               :cl-who
               :cl-ppcre)
  :build-pathname "setzkasten-bin"
  :entry-point "setzkasten:main")
