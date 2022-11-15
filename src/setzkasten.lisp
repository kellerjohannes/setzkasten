(defpackage :setzkasten
  (:import-from :cl-ppcre :regex-replace-all)
  (:import-from :hunchentoot :define-easy-handler)
  (:import-from :cl-who :fmt :htm :with-html-output-to-string)
  (:use :cl))

(in-package :setzkasten)

(defparameter *global-bg-color* "#e3f3ff")
(defparameter *svg-export-path*
  (pathname "~/common-lisp/setzkasten/svg-export/"))
(defparameter *apparatus-export-path*
  (pathname "~/common-lisp/setzkasten/apparatus-export/"))
(defparameter *encoding-source*
  (pathname "~/common-lisp/setzkasten/encoding/"))
(defparameter *log-file-path*
  (pathname "~/common-lisp/setzkasten/logfiles/"))
(defparameter *configuration-path*
  (pathname "~/common-lisp/setzkasten/backend-configuration/"))
(defparameter *lilypond-export-path*
  (pathname "~/common-lisp/setzkasten/lilypond-export/"))
(defparameter *lilypond-path*
  (pathname "/usr/bin/lilypond"))
