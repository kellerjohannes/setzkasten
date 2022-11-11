(defpackage :setzkasten
  (:import-from :cl-ppcre :regex-replace-all)
  (:import-from :hunchentoot :define-easy-handler)
  (:import-from :cl-who :fmt :htm :with-html-output-to-string)
  (:use :cl))

(in-package :setzkasten)

(defparameter *svg-export-path* (pathname "~/common-lisp/setzkasten/svg-export/"))
(defparameter *encoding-source* (pathname "~/common-lisp/setzkasten/encoding/"))

(defparameter *score-margins* '(0 0 0 0))


(defparameter *mission*
  '(("b1-c5-m1" "a" (:diplomatic) #'type-imitation)
    ("b1-c5-m1" "b" (:idealised) #'type-imitation)
    ("b1-c5-m2" "a" (:diplomatic) #'type-imitation)
    ("b1-c5-m2" "b" (:idealised) #'type-imitation)))
