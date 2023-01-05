(defpackage :setzkasten
  (:import-from :cl-ppcre :regex-replace-all)
  (:import-from :hunchentoot :define-easy-handler)
  (:import-from :cl-who :fmt :htm :with-html-output-to-string)
  (:use :cl))

(in-package :setzkasten)

(defparameter *global-bg-color* nil
  ;; "#e3f3ff"
  )

(defparameter *score-bg-color* nil
  ;; "white"
  )

(defparameter *svg-export-path*
  (pathname "~/common-lisp/setzkasten-output/svg/"))
(defparameter *apparatus-export-path*
  (pathname "~/common-lisp/setzkasten-output/apparatus/"))
(defparameter *encoding-source*
  (pathname "~/common-lisp/setzkasten/encoding/"))
(defparameter *log-file-path*
  (pathname "~/common-lisp/setzkasten-output/logfiles/"))
(defparameter *configuration-path*
  (pathname "~/common-lisp/setzkasten/backend-configuration/"))
(defparameter *lilypond-export-path*
  (pathname "~/common-lisp/setzkasten-output/ly/"))
(defparameter *lilypond-path*
  (pathname "/usr/bin/lilypond"))


;; TODO: bracketed sections
;; \postscript "0 12 rmoveto -0.5 0 rlineto 0 -16 rlineto 0.5 0 rlineto stroke"
;; indent = 0\cm
