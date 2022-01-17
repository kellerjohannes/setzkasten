;;;; helper functions for vector calculations
;;;; vectors are 2-dimensional, cons-cells (x . y)

(defun jk/vector (x y)
  (cons x y))

(defun jk/x-coord (v)
  (car v))

(defun jk/y-coord (v)
  (cdr v))

(defun jk/add (a b)
  (jk/vector (+ (jk/x-coord a) (jk/x-coord b))
	     (+ (jk/y-coord a) (jk/y-coord b))))

(defun jk/subtract (a b)
  (jk/vector (- (jk/x-coord a) (jk/x-coord b))
	     (- (jk/y-coord a) (jk/y-coord b))))

(defun jk/scale (v f)
  (jk/vector (* (jk/x-coord v) f)
	     (* (jk/y-coord v) f)))

(defun jk/distance (a b)
  (let ((vect (jk/subtract b a)))
    (sqrt (+ (* (jk/x-coord vect) (jk/x-coord vect))
	     (* (jk/y-coord vect) (jk/y-coord vect))))))

(defun jk/unit-vector (a b)
  (let ((vect (jk/subtract b a))
	(len (jk/distance a b)))
    (jk/vector (/ (jk/x-coord vect) len)
	       (/ (jk/y-coord vect) len))))

(defun jk/mirror-x (v x)
  (jk/vector (+ x (- x (jk/x-coord v))) (jk/y-coord v)))

(defun jk/mirror-y (v y)
  (jk/vector (jk/x-coord v) (+ y (- y (jk/y-coord v)))))

(defun jk/mirror-dot (v dot)
  (jk/add dot (jk/subtract dot v)))
