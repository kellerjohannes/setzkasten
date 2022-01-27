(defmacro define-class (name &rest parameters)
  `(defclass ,name
     ,(mapcar #'(lambda (par) par) parameters)))



(defclass dings ()
  (asd (content1 :initarg :content1)))
