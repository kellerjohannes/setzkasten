;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; family of casting methods, to produce SVG output for each type container ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; TODO
;; - relocate path macros (path el) and (generate-path)
;;   -> create separate macro collection file?
;; - update docstrings for new terminology (type / glyph / instance / component)


(in-package :setzkasten)


(defgeneric cast (glyph)
  (:documentation
   "Creates SVG files for any sort of type by calling the :around-method to create and close the SVG context and the applicable methods to generate the SVG paths of the types' components."))


;; container, svg stuff, wraps :around casting methods that generate svg code

(defmethod cast :around ((stencil glyph))
  "Main casting method, wrapping all other casting methods for the components of this type."
  (setf (svg-data stencil) nil)
  (call-next-method)
  (let ((svg-all-data (reduce-string-list (svg-data stencil))))
    (setf (svg-data stencil)
	  (concatenate 'string
		       (output-svg-symbol-open (id stencil))
		       svg-all-data
		       (output-svg-symbol-close)))))



;; staff lines

(defmethod v-center ((stencil glyph))
  "Returns the x-coordinate of the center line of the type."
  (* 0.5 (glyph-height stencil)))

(defmethod h-center ((stencil glyph))
  "Returns the y-coordinate of the center line of the type."
  (* 0.5 (glyph-width stencil)))

(defmethod number-of-staff-positions ((stencil glyph-staff))
  "Returns the highest possible staff position without using ledger lines."
  (1+ (* 2 (number-of-lines (staff-component stencil)))))

(defmethod inverse-staff-position ((stencil glyph-staff) staff-position)
  "Inverses the staff position by mirroring the position at the center position."
  (- (number-of-staff-positions stencil) 1 staff-position))

(defmethod calculate-absolute-staff-position ((stencil glyph-staff) staff-position)
  "Returns the y-coordinate referencing a given staff position."
  (with-slots ((dist distance-between-lines)
	       (num-lines number-of-lines))
      (staff-component stencil)
    (let ((pos-0 (- (v-center stencil) (* dist (+ 0.5 (* 0.5 (1- num-lines)))))))
      (+ pos-0 (* 0.5 dist (inverse-staff-position stencil staff-position))))))

(defun find-next-space-above (staff-position)
  "Returns the staff position of the next available space above a notehead position."
  (let ((result (+ 2 staff-position)))
    (if (oddp result)
	(1+ result)
	result)))

(defmethod cast ((stencil glyph-staff))
  "Generates SVG data for staff lines, vertically centered."
  (with-slots ((num-lines number-of-lines)
	       thickness
	       offset
	       (linecap endings))
      (staff-component stencil)
    (loop repeat num-lines
	  for staff-pos from 1 by 2 
	  do (let ((y (calculate-absolute-staff-position stencil staff-pos)))
	       (push (output-line offset y (- (glyph-width stencil) offset) y thickness linecap)
		     (svg-data stencil))))))



;; notehead

(defmethod draw-notehead-square ((stencil glyph-notehead) center-x center-y width height)
  "Generates SVG data for a square shaped notehead, black or white notation."
  (with-slots (bold-stroke light-stroke black) (notehead-component stencil)
    (let* ((w-2 (* 0.5 width))
	   (h-2 (* 0.5 height))
	   (d-2 (* 0.5 (distance-between-lines (staff-component stencil))))
	   (center (vec:create center-x center-y))
	   (a (vec:create (- center-x w-2) (+ center-y h-2)))
	   (b (vec:create (- center-x w-2) (- center-y h-2)))
	   (c (vec:add b (vec:create light-stroke 0)))
	   (d (vec:create (vec:x-coord c) (+ center-y d-2)))
	   (e (vec:mirror-x d center-x))
	   (f (vec:mirror-x c center-x))
	   (g (vec:mirror-x b center-x))
	   (h (vec:mirror-dot b center))
	   (i (vec:mirror-dot c center))
	   (j (vec:mirror-dot d center))
	   (k (vec:mirror-y d center-y))
	   (l (vec:mirror-y c center-y)))
      (if black
	  (output-path "evenodd" (ink-color stencil)
		       `((m ,a) (l ,b) (l ,c) (l ,d)
			 (l ,e) (l ,f) (l ,g) (l ,h) (l ,i) (l ,j) (l ,k) (l ,l) (c)))
	  (let* ((m (vec:add k (vec:create 0 bold-stroke)))
		 (n (vec:mirror-y m center-y))
		 (o (vec:mirror-dot m center))
		 (p (vec:mirror-x m center-x)))
	    (output-path "evenodd" (ink-color stencil)
			 `((m ,a) (l ,b) (l ,c) (l ,d)
			   (l ,e) (l ,f) (l ,g) (l ,h) (l ,i) (l ,j) (l ,k) (l ,l) (c)
			   (m ,m) (l ,n) (l ,o) (l ,p) (c))))))))


(defmethod draw-notehead-diamond ((stencil glyph-notehead) center-x center-y width height)
  "Generates SVG data for a diamond shaped notehead, black or white notation."
  (with-slots (bold-stroke light-stroke black) (notehead-component stencil)
    (let* ((a (vec:create center-x (+ center-y (* 0.5 height))))
	   (b (vec:create (- center-x (* 0.5 width)) center-y))
	   (c (vec:create center-x (- center-y (* 0.5 height))))
	   (d (vec:create (+ center-x (* 0.5 width)) center-y)))
      (if black
	  (output-path "evenodd" (ink-color stencil)
		       `((m ,a) (l ,b) (l ,c) (l ,d) (c)))
	  (let* ((center (vec:create center-x center-y))
     		 (e (vec:add a (vec:add (vec:scale (vec:unit-vector a b) light-stroke)
     					(vec:scale (vec:unit-vector a d) bold-stroke))))
     		 (f (vec:add b (vec:add (vec:scale (vec:unit-vector b a) light-stroke)
     					(vec:scale (vec:unit-vector a d) bold-stroke))))
     		 (g (vec:add center (vec:subtract center e)))
		 (h (vec:add center (vec:subtract center f))))
	    (output-path "evenodd" (ink-color stencil)
			 `((m ,a) (l ,b) (l ,c) (l ,d) (c)
			   (m ,e) (l ,f) (l ,g) (l ,h) (c))))))))

(defmethod calculate-notehead-height ((stencil glyph-notehead))
  "Returns the vertical height of a notehead, including the overhead value."
  (with-slots ((dist distance-between-lines)) (staff-component stencil)
    (with-slots ((overhead length-over-line)) (notehead-component stencil)
      (+ dist (* 2 overhead dist)))))

(defmethod cast ((stencil glyph-notehead))
  "Generates SVG data for a notehead."
  (with-slots (oblique-p width) (notehead-component stencil)
    (let* ((x (h-center stencil))
	   (y (calculate-absolute-staff-position
	       stencil
	       (notehead-position stencil)))
	   (h (calculate-notehead-height stencil))
	   (w (* width h)))
      (if oblique-p
	  (push (draw-notehead-diamond stencil x y w h) (svg-data stencil))
	  (push (draw-notehead-square stencil x y w h) (svg-data stencil)))))
  (call-next-method))



;; enharmonic dot

(defmethod calculate-x-pos ((stencil glyph-notehead-dot))
  "Returns the absolute x coordinate for an enharmonic dot, aligned to the notehead."
  (let ((center-x (h-center stencil))
	(h-w (* 0.5 (width (notehead-component stencil))
		(calculate-notehead-height stencil))))
    (case (dot-alignment stencil)
      (:center center-x)
      (:right (+ center-x h-w))
      (:left (- center-x h-w)))))

(defmethod cast ((stencil glyph-notehead-dot))
  "Generates SVG data for an enharmonic dot above a notehead."
  (when (dot-component stencil)
    (let* ((center-x (calculate-x-pos stencil))
	   (center-y (calculate-absolute-staff-position
		      stencil
		      (find-next-space-above (notehead-position stencil))))
	   (width-2 (* 0.5 (size (dot-component stencil))
		       (distance-between-lines (staff-component stencil))))
	   (a (vec:create center-x (+ center-y width-2)))
	   (b (vec:create (- center-x width-2) center-y))
	   (c (vec:create center-x (- center-y width-2)))
	   (d (vec:create (+ center-x width-2) center-y)))
      (push (output-path "evenodd" (ink-color stencil)
			 `((m ,a) (l ,b) (l ,c) (l ,d) (c)))
	    (svg-data stencil))))
  (call-next-method))



;; stem


(defmethod cast ((stencil glyph-notehead-stem))
  (with-slots (stem-length width-head width-tail)
      (stem-component stencil)
    (let* ((stem-length-absolute (* stem-length (distance-between-lines (staff-component stencil))))
	   (width-tail-absolute (* width-head width-tail))
	   (x-center (h-center stencil))
	   (y-head (- (calculate-absolute-staff-position stencil (notehead-position stencil))
		      (* 0.5 (calculate-notehead-height stencil))))
	   (a (vec:create (- x-center (* 0.5 width-head)) y-head))
	   (b (vec:create (+ x-center (* 0.5 width-head)) y-head))
	   (c (vec:create (+ x-center (* 0.5 width-tail-absolute)) (- y-head stem-length-absolute)))
	   (d (vec:create (- x-center (* 0.5 width-tail-absolute)) (- y-head stem-length-absolute))))
      (push (output-path "evenodd" (ink-color stencil)
			 `((m ,a) (l ,b) (l ,c) (l ,d) (c)))
	    (svg-data stencil))))
  (call-next-method))





;;; BOOKMARK: transcoding until here

;; (cl-defmethod cast ((type-stem setzkasten/type-notehead-stem))
;; 	      "Generates SVG data for a note stem."
;; 	      (when (stem-instance type-stem)
;; 		(insert "\nCasting note stem not implemented yet."))
;; 	      (cl-call-next-method))



;; ;; flag

;; (cl-defmethod cast ((type-flag setzkasten/type-notehead-flagged))
;; 	      "Generates SVG data for a note stem flag."
;; 	      (when (flag-instance type-flag)
;; 		(insert "\nCasting stem flag not implemented yet."))
;; 	      (cl-call-next-method))



;; ;; rest

;; (cl-defmethod cast ((type-rest setzkasten/type-rest))
;; 	      "Generates SVG data for a rest."
;; 	      (insert "\nCasting rest not implemented yet.")
;; 	      (svg-line setzkasten/tmp-image 0 0 10 10)
;; 	      (cl-call-next-method))


;; ;; sharp

;; (cl-defmethod cast ((type-sharp setzkasten/type-sharp))
;; 	      "Generates SVG data for a sharp sign."
;; 	      (insert "\nCasting a sharp sign not implemented yet.")
;; 	      (cl-call-next-method))


;; ;; flat

;; (cl-defmethod cast ((type-flat setzkasten/type-flat))
;; 	      "Generates SVG data for a flat sign."
;; 	      (insert "\nCasting a flat sign not implemented yet.")
;; 	      (cl-call-next-method))

;; ;; g-clef

;; (cl-defmethod cast ((type-clef setzkasten/type-clef))
;; 	      "Generates SVG data for a c- or g-clef."
;; 	      (insert "\nCasting a c- or g-clef not implemented yet.")
;; 	      (cl-call-next-method))


;; ;; f-clef

;; (cl-defmethod cast ((type-fclef setzkasten/type-fclef-component))
;; 	      "Generates SVG data for the right part of a f-clef."
;; 	      (insert "\nCasting a f-clef component not implemented yet.")
;; 	      (cl-call-next-method))


;; ;; barline

;; (cl-defmethod cast ((type-barline setzkasten/type-barline))
;; 	      "Generates SVG data for a barline."
;; 	      (insert "\nCasting a barline not implemented yet.")
;; 	      (cl-call-next-method))



