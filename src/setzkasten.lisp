(defpackage :setzkasten
  (:import-from :cl-ppcre :regex-replace-all)
  (:import-from :hunchentoot :define-easy-handler)
  (:import-from :cl-who :fmt :htm :with-html-output-to-string)
  (:import-from :vicentino-tunings :setzkasten-pitch)
  (:use :cl)
  (:export "get-parsed-score"
           "process-score"
           "execute-mission"
           "get-mobjects-in-voice"
           "get-pitch"))

(in-package :setzkasten)

(defparameter *global-bg-color* nil
  ;; "#e3f3ff"
  )

(defparameter *score-bg-color* nil
  ;; "white"
  )

(defparameter *score-processing* t)

(defparameter *svg-export-path*
  (pathname "~/common-lisp/setzkasten-output/svg/"))
(defparameter *apparatus-export-path-raw*
  (pathname "~/common-lisp/setzkasten-output/apparatus/raw/"))
(defparameter *apparatus-export-path-tex*
  (pathname "~/common-lisp/setzkasten-output/apparatus/tex/"))
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
(defparameter *visual-score-export-path*
  (pathname "~/common-lisp/setzkasten-output/visual-score/"))
