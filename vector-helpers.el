;;;; helper functions for vector calculations
;;;; vectors are 2-dimensional, cons-cells (x . y)

(defun jk/vector (x y)
  (cons x y))

(defun jk/x-coord (v)
  (car v))

(defun jk/y-coord (v)
  (cdr v))

(defun jk/add (a b)
  (cons (+ (jk/x-coord a) (jk/x-coord b))
	(+ (jk/y-coord a) (jk/y-coord b))))

(defun jk/subtract (a b)
  (cons (- (jk/x-coord a) (jk/x-coord b))
	(- (jk/y-coord a) (jk/y-coord b))))

(defun jk/scale (v f)
  (cons (* (jk/x-coord v) f)
	(* (jk/y-coord v) f)))

(defun jk/distance (a b)
  (let ((vect (jk/subtract b a)))
    (sqrt (+ (* (jk/x-coord vect) (jk/x-coord vect))
	     (* (jk/y-coord vect) (jk/y-coord vect))))))

(defun jk/unit-vector (a b)
  (let ((vect (jk/subtract b a))
	(len (jk/distance a b)))
    (cons (/ (jk/x-coord vect) len)
	  (/ (jk/y-coord vect) len))))

(setq jk/a '(0 . 6))
(setq jk/b '(-5 . 0))
(setq jk/d '(5 . 0))

(setq jk/t1 2)
(setq jk/t2 1)

(setq jk/e (jk/add jk/a (jk/add (jk/scale (jk/unit-vector jk/a jk/b) jk/t1)
				(jk/scale (jk/unit-vector jk/a jk/d) jk/t2))))
