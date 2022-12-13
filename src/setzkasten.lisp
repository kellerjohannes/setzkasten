(defpackage :setzkasten
  (:import-from :cl-ppcre :regex-replace-all)
  (:import-from :hunchentoot :define-easy-handler)
  (:import-from :cl-who :fmt :htm :with-html-output-to-string)
  (:use :cl))

(in-package :setzkasten)

(defparameter *global-bg-color* "#e3f3ff")
(defparameter *score-bg-color* "white")

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


;; TODO: bracketed sections
;; \postscript "0 12 rmoveto -0.5 0 rlineto 0 -16 rlineto 0.5 0 rlineto stroke"
;; indent = 0\cm
