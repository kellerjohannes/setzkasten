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
  '(("b1-c5-m1" "x" (:diplomatic) #'type-imitation)
    ("b1-c5-m1" "y" (:idealised) #'type-imitation)
    ("b1-c5-m2" "x" (:diplomatic) #'type-imitation)
    ("b1-c5-m2" "y" (:idealised) #'type-imitation)))




(defparameter *score-margins* '(10 10 10 10))

(defparameter *score-bg-color* "white")
(defparameter *font-height* 58)


(defun extract-apparatus (score extraction-arguments)
  (declare (ignore extraction-arguments))
  (values score "Empty apparatus [under construction]."))

(defun process-score (filename suffix extraction-arguments backend-class)
  (with-open-file (encoding-stream (merge-pathnames *encoding-source*
                                                    (pathname (format nil "~a.lisp" filename)))
                                   :if-does-not-exist :create
                                   :if-exists :supersede
                                   :direction :input)
    (let ((score (eval (read encoding-stream))))
      (multiple-value-bind (simplified-score apparatus-string)
          (extract-apparatus score extraction-arguments)
        (; method call of backend class to acutally produce svg file
         )))))
