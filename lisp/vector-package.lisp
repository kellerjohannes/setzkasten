;;;; helper functions for vector calculations
;;;; vectors are 2-dimensional, cons-cells (x . y)

(defpackage :vec
  (:use :cl)
  (:export
   :create
   :x-coord
   :y-coord
   :add
   :subtract
   :scale
   :distance
   :unit-vector
   :mirror-x
   :mirror-y
   :mirror-dot))

(in-package :vec)


(defun create (x y)
  (cons x y))

(defun x-coord (v)
  (car v))

(defun y-coord (v)
  (cdr v))

(defun add (a b)
  (create (+ (x-coord a) (x-coord b))
	     (+ (y-coord a) (y-coord b))))

(defun subtract (a b)
  (create (- (x-coord a) (x-coord b))
	     (- (y-coord a) (y-coord b))))

(defun scale (v f)
  (create (* (x-coord v) f)
	     (* (y-coord v) f)))

(defun distance (a b)
  (let ((vect (subtract b a)))
    (sqrt (+ (* (x-coord vect) (x-coord vect))
	     (* (y-coord vect) (y-coord vect))))))

(defun unit-vector (a b)
  (let ((vect (subtract b a))
	(len (distance a b)))
    (create (/ (x-coord vect) len)
	       (/ (y-coord vect) len))))

(defun mirror-x (v x)
  (create (+ x (- x (x-coord v))) (y-coord v)))

(defun mirror-y (v y)
  (create (x-coord v) (+ y (- y (y-coord v)))))

(defun mirror-dot (v dot)
  (add dot (subtract dot v)))
