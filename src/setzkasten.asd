(asdf:defsystem setzkasten
  :description "Tool to encode and typeset the music of Nicola Vicentino."
  :version "0.1"
  :author "Johannes Keller <johannkell@gmail.com>"
  :licence "Public Domain"
  :components ((:file "gui-test"))
  :defsystem-depends-on (:qtools)
  :depends-on (:qtools
               :qtcore
               :qtgui)
  :build-operation "qt-program-op"
  :build-pathname "testgui"
  :entry-point "qtools-intro:main")
