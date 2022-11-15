(in-package :setzkasten)

;; generic helpers

(defun avg (&rest numbers)
  (/ (reduce #'+ numbers) (length numbers)))

(defun reduce-string-list (lst)
  (reduce (lambda (a b) (concatenate 'string a b)) lst))

(defun make-keyword (name)
  (values (intern (string-upcase name) "KEYWORD")))



;; to be used on score encoding expressions

(defun extract-item (category sub-category data)
  "Returns the contents of a sub-category of a category in the list describing a score. If it is a single expression, it returns only this expression, if it is several expressions, it returns a list containing these expressions."
  (let ((result (rest (find sub-category (rest (find category data :key #'first))
                            :key #'first))))
    (if (= 1 (length result))
        (first result)
        result)))

(defun extract-category (category data)
  "Returns the sublist that is labelled with the `category' keyword in score data."
  (rest (find category data :key #'first)))



;; trivial helper to make class definitions more compact

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
