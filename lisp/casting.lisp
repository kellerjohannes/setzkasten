;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; family of casting methods, to produce SVG output for each type container ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :setzkasten)


(defgeneric cast (setzkasten/type)
  (:documentation
   "Creates SVG files for any sort of type by calling the :around-method to create and close the SVG context and the applicable methods to generate the SVG paths of the types' components."))


;; container, svg stuff

;; (let ((scene (make-svg-toplevel 'svg-1.1-toplevel :height 300 :width 300)))
;;   (draw scene (:rect :x 5 :y 5 :width 30 :height 30))
;;   (stream-out *standard-output* scene))

;; (defparameter tmp-image nil "Used to temporarily collect SVG fragments.")

(defmethod cast :around ((type-generic setzkasten/type))
  "Main casting method, wrapping all other casting methods for the components of this type."
  (setf (svg-object type-generic)
	(make-svg-toplevel 'svg-1.1-toplevel
			   :height (* 1 (type-height type-generic))
			   :width (* 1 (type-width type-generic))
			   :stroke (ink-color type-generic)))
  (call-next-method)
  (with-open-file (stream (merge-pathnames
			   *svg-export-path*
			   (pathname (format nil "~a-~a.svg"
					     (filename type-generic)
					     (ink-color type-generic))))
			  :direction :output
			  :if-exists :supersede
			  :if-does-not-exist :create)
    (stream-out stream (svg-object type-generic)))
  (stream-out *standard-output* (svg-object type-generic)))




;; staff lines

(defmethod v-center ((type setzkasten/type))
  "Returns the x-coordinate of the center line of the type."
  (* 0.5 (type-height type)))

(defmethod h-center ((type setzkasten/type))
  "Returns the y-coordinate of the center line of the type."
  (* 0.5 (type-width type)))

(defmethod number-of-staff-positions ((type setzkasten/type-staff))
  "Returns the highest possible staff position without using ledger lines."
  (1+ (* 2 (number-of-lines (staff-instance type)))))

(defmethod inverse-staff-position ((type setzkasten/type-staff) staff-position)
  "Inverses the staff position by mirroring the position at the center position."
  (- (number-of-staff-positions type) 1 staff-position))

(defmethod calculate-absolute-staff-position ((type setzkasten/type-staff) staff-position)
  "Returns the y-coordinate referencing a given staff position."
  (with-slots ((dist distance-between-lines)
	       (num-lines number-of-lines))
      (staff-instance type)
    (let ((pos-0 (- (v-center type) (* dist (+ 0.5 (* 0.5 (1- num-lines)))))))
      (+ pos-0 (* 0.5 dist (inverse-staff-position type staff-position))))))

(defun find-next-space-above (staff-position)
  "Returns the staff position of the next available space above a notehead position."
  (let ((result (+ 2 staff-position)))
    (if (oddp result)
	(1+ result)
      result)))

(defmethod cast ((type-blank setzkasten/type-staff))
  "Generates SVG data for staff lines, vertically centered."
  (with-slots ((num-lines number-of-lines)
	       thickness
	       offset
	       (linecap endings))
      (staff-instance type-blank)
    (loop repeat num-lines
	  for staff-pos from 1 by 2 
	  do (let ((y (calculate-absolute-staff-position type-blank staff-pos)))
	       (draw (svg-object type-blank) (:line :x1 offset
					  :y1 y
					  :x2 (- (type-width type-blank) offset)
					  :y2 y)
		     :stroke-width thickness
		     :stroke-linecap linecap)))))



;; notehead

(defun create-path (list-of-vecs)
  (append (list (list 'move-to
		      (vec:x-coord (first list-of-vecs))
		      (vec:y-coord (second list-of-vecs))))
	  (mapcar #'(lambda (vec) (list 'line-to (vec:x-coord vec) (vec:y-coord vec)))
		  (rest list-of-vecs))
	  '((close-path))))

(defmacro draw-path-from-vecs (stream &rest list-of-vecs)
  `(draw ,stream (:path :d (path (move-to (vec:x-coord ,(first list-of-vecs))
					  (vec:y-coord ,(first list-of-vecs)))
			     ,@(mapcar #'(lambda (vec) (list 'line-to
							     (list 'vec:x-coord vec)
							     (list 'vec:y-coord vec)))
				       (rest list-of-vecs))
			     (close-path))
		   :fill-rule 'evenodd)))

(defmacro path-el (command vec)
  `(,command (vec:x-coord ,vec) (vec:y-coord ,vec)))

(defmethod draw-notehead-square ((type-notehead-i setzkasten/type-notehead) center-x center-y width height l1 l2 black-p distance-between-lines)
  "Generates SVG data for a square shaped notehead, black or white notation."
  (let* ((w-2 (* 0.5 width))
	 (h-2 (* 0.5 height))
	 (d-2 (* 0.5 distance-between-lines))
	 (center (vec:create center-x center-y))
	 (a (vec:create (- center-x w-2) (+ center-y h-2)))
	 (b (vec:create (- center-x w-2) (- center-y h-2)))
	 (c (vec:add b (vec:create l2 0)))
	 (d (vec:create (vec:x-coord c) (+ center-y d-2)))
	 (e (vec:mirror-x d center-x))
	 (f (vec:mirror-x c center-x))
	 (g (vec:mirror-x b center-x))
	 (h (vec:mirror-dot b center))
	 (i (vec:mirror-dot c center))
	 (j (vec:mirror-dot d center))
	 (k (vec:mirror-y d center-y))
	 (l (vec:mirror-y c center-y))
	 (path-notehead (create-path (list a b c d e f g h i j k l))))
    (unless black-p
      (let* ((m (vec:add k (vec:create 0 l1)))
	     (n (vec:mirror-y m center-y))
	     (o (vec:mirror-dot m center))
	     (p (vec:mirror-x m center-x)))
	(setf path-notehead (append path-notehead (create-path (list m n o p))))))
    (draw (svg-object type-notehead-i) (:path :d path-notehead) :fill-rule 'evenodd)))


(defmethod draw-notehead-diamond ((type-notehead-i setzkasten/type-notehead) center-x center-y width height)
  "Generates SVG data for a diamond shaped notehead, black or white notation."
  (with-slots (bold-stroke light-stroke black) (notehead-instance type-notehead-i)
    (let* ((a (vec:create center-x (+ center-y (* 0.5 height))))
	   (b (vec:create (- center-x (* 0.5 width)) center-y))
	   (c (vec:create center-x (- center-y (* 0.5 height))))
	   (d (vec:create (+ center-x (* 0.5 width)) center-y)))
      (if black
	  (draw (svg-object type-notehead-i)
	      (:path :d (path (path-el move-to a)
			  (path-el line-to b)
			  (path-el line-to c)
			  (path-el line-to d)
			  (close-path))))
	  (let* ((center (vec:create center-x center-y))
     		 (e (vec:add a (vec:add (vec:scale (vec:unit-vector a b) light-stroke)
     					(vec:scale (vec:unit-vector a d) bold-stroke))))
     		 (f (vec:add b (vec:add (vec:scale (vec:unit-vector b a) light-stroke)
     					(vec:scale (vec:unit-vector a d) bold-stroke))))
     		 (g (vec:add center (vec:subtract center e)))
		 (h (vec:add center (vec:subtract center f))))
	    (draw (svg-object type-notehead-i)
		(:path :fill-rule 'evenodd
		  :d (path (path-el move-to a)
		       (path-el line-to b)
		       (path-el line-to c)
		       (path-el line-to d)
		       (close-path)
		       (path-el move-to e)
		       (path-el line-to f)
		       (path-el line-to g)
		       (path-el line-to h)
		       (close-path)))))))))

(defmethod calculate-notehead-height ((type setzkasten/type-notehead))
  "Returns the vertical height of a notehead, including the overhead value."
  (with-slots ((dist distance-between-lines))
      (staff-instance type)
    (with-slots ((overhead length-over-line))
	(notehead-instance type)
      (+ dist (* 2 overhead dist)))))

(defmethod cast ((type-notehead setzkasten/type-notehead))
  "Generates SVG data for a notehead."
  (with-slots (oblique-p
	       (width-factor width)
	       (black-p black)
	       bold-stroke
	       light-stroke)
      (notehead-instance type-notehead)
    (let* ((x (h-center type-notehead))
	   (y (calculate-absolute-staff-position
	       type-notehead
	       (notehead-position type-notehead)))
	   (h (calculate-notehead-height type-notehead))
	   (w (* width-factor h)))
      (if oblique-p
	  (draw-notehead-diamond type-notehead x y w h)
	(draw-notehead-square type-notehead x y w h bold-stroke light-stroke black-p
			      (distance-between-lines (staff-instance type-notehead))))))
  (call-next-method))




;; enharmonic dot

(cl-defmethod calculate-x-pos ((type-dot setzkasten/type-notehead-dot))
  "Returns the absolute x coordinate for an enharmonic dot, aligned to the notehead."
  (let ((center-x (h-center type-dot))
	(h-w (* 0.5 (width (notehead-instance type-dot))
		(calculate-notehead-height type-dot))))
    (pcase (dot-alignment type-dot)
      ('center center-x)
      ('right (+ center-x h-w))
      ('left (- center-x h-w)))))

(cl-defmethod cast ((type-dot setzkasten/type-notehead-dot))
  "Generates SVG data for an enharmonic dot above a notehead."
  (when (dot-instance type-dot)
    (let ((center-x (calculate-x-pos type-dot))
	  (center-y (calculate-absolute-staff-position
		     type-dot
		     (find-next-space-above (notehead-position type-dot))))
	  (width (* (size (dot-instance type-dot))
		    (distance-between-lines (staff-instance type-dot)))))
      (draw-notehead-diamond center-x center-y width width 0 0 t)))
  (cl-call-next-method))



;; stem

(cl-defmethod cast ((type-stem setzkasten/type-notehead-stem))
  "Generates SVG data for a note stem."
  (when (stem-instance type-stem)
    (insert "\nCasting note stem not implemented yet."))
  (cl-call-next-method))



;; flag

(cl-defmethod cast ((type-flag setzkasten/type-notehead-flagged))
  "Generates SVG data for a note stem flag."
  (when (flag-instance type-flag)
    (insert "\nCasting stem flag not implemented yet."))
  (cl-call-next-method))



;; rest

(cl-defmethod cast ((type-rest setzkasten/type-rest))
  "Generates SVG data for a rest."
  (insert "\nCasting rest not implemented yet.")
  (svg-line setzkasten/tmp-image 0 0 10 10)
  (cl-call-next-method))


;; sharp

(cl-defmethod cast ((type-sharp setzkasten/type-sharp))
  "Generates SVG data for a sharp sign."
  (insert "\nCasting a sharp sign not implemented yet.")
  (cl-call-next-method))


;; flat

(cl-defmethod cast ((type-flat setzkasten/type-flat))
  "Generates SVG data for a flat sign."
  (insert "\nCasting a flat sign not implemented yet.")
  (cl-call-next-method))

;; g-clef

(cl-defmethod cast ((type-clef setzkasten/type-clef))
  "Generates SVG data for a c- or g-clef."
  (insert "\nCasting a c- or g-clef not implemented yet.")
  (cl-call-next-method))


;; f-clef

(cl-defmethod cast ((type-fclef setzkasten/type-fclef-component))
  "Generates SVG data for the right part of a f-clef."
  (insert "\nCasting a f-clef component not implemented yet.")
  (cl-call-next-method))


;; barline

(cl-defmethod cast ((type-barline setzkasten/type-barline))
  "Generates SVG data for a barline."
  (insert "\nCasting a barline not implemented yet.")
  (cl-call-next-method))
