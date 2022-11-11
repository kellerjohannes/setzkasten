(defpackage :setzkasten
  (:import-from :cl-ppcre :regex-replace-all)
  (:import-from :hunchentoot :define-easy-handler)
  (:import-from :cl-who :fmt :htm :with-html-output-to-string)
  (:use :cl))

(in-package :setzkasten)

(defparameter *svg-export-path* (pathname "~/common-lisp/setzkasten/svg-export/"))
(defparameter *encoding-source* (pathname "~/common-lisp/setzkasten/encoding/"))




(defparameter *glyph-height* 230)

(defparameter *vicentino-types-backend* (make-instance 'type-imitation-backend))

(read-configuration *vicentino-types-backend*
                    "../backend-configuration/vicentino-types-components.lisp"
                    :components)
(read-configuration *vicentino-types-backend*
                    "../backend-configuration/vicentino-types-glyphs.lisp"
                    :glyphs)
(read-configuration *vicentino-types-backend*
                    "../backend-configuration/vicentino-types-syntax.lisp"
                    :syntax)




(defparameter *mission*
  `(("b1-c5-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c5-m2" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c5-m3" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c5-m4" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c5-m5" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c5-m6" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c5-m7" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c5-m8" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c6-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c7-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c8-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c8-m2" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c9-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c10-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c10-m2" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c11-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c11-m2" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c11-m3" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c12-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c13-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c15-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c16-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c17-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c18-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c19-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c20-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c21-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c22-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c23-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c24-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c25-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c26-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c27-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c28-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c29-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c30-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c31-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c32-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c33-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c34-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c35-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c36-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c37-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c37-m2" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c38-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c39-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c39-m2" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c40-m1" "a" (:diplomatic) ,*vicentino-types-backend*)
    ("b1-c40-m2" "a" (:diplomatic) ,*vicentino-types-backend*)))




(defparameter *score-margins* '(10 10 10 10))

(defparameter *score-bg-color* "white")
(defparameter *font-height* 58)


(defun extract-apparatus (score extraction-arguments)
  (declare (ignore extraction-arguments))
  (values score "Empty apparatus [under construction]."))

(defun process-score (filename suffix extraction-arguments backend-instance)
  (with-open-file (encoding-stream (merge-pathnames *encoding-source*
                                                    (pathname (format nil "~a.lisp" filename)))
                                   :direction :input)
    (let ((score (eval (read encoding-stream))))
      (multiple-value-bind (simplified-score apparatus-string)
          (extract-apparatus score extraction-arguments)
        (format t "~&~a-~a: ~a" filename suffix apparatus-string)
        (create-score-file backend-instance simplified-score suffix)))))

(defun execute-mission (mission-list)
  (reset-file-list *vicentino-types-backend*)
  (dolist (item mission-list)
    (process-score (first item) (second item) (third item) (fourth item))))
