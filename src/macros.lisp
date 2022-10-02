(in-package :setzkasten)

(defun avg (&rest numbers)
  (/ (reduce #'+ numbers) (length numbers)))

(defun reduce-string-list (lst)
  (reduce (lambda (a b) (concatenate 'string a b)) lst))

(defun make-keyword (name)
  (values (intern (string-upcase name) "KEYWORD")))

(defmacro define-setzkasten-class (class-name super-class class-docstring &rest parameters)
  "Creates a simple class with parameters."
  `(defclass ,class-name ,super-class
     ,(mapcar (lambda (par)
        `(,(first par) :initarg ,(make-keyword (first par))
                   :initform ,(second par)
                   :accessor ,(first par)
                   :documentation ,(third par)))
       parameters)
     (:documentation ,class-docstring)))
