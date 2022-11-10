(defpackage :setzkasten
  (:import-from :cl-ppcre :regex-replace-all)
  (:import-from :hunchentoot :define-easy-handler)
  (:import-from :cl-who :fmt :htm :with-html-output-to-string)
  (:use :cl))

(in-package :setzkasten)

(defparameter *svg-export-path* (pathname "~/common-lisp/setzkasten/svg-export/"))

(defparameter *score-margins* '(0 0 0 0))
