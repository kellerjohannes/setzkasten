;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; family of casting methods, to produce SVG output for each type container ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(cl-defgeneric cast (setzkasten/type)
  "Creates SVG files for any sort of type by calling the :around-method to create and close the SVG context and the applicable methods to generate the SVG paths of the types' components.")


;; container, svg stuff

(defvar setzkasten/tmp-image nil "Used to temporarily collect SVG fragments.")

(cl-defmethod cast :around ((type-generic setzkasten/type))
  "Main casting method, wrapping all other casting methods for the components of this type."
  (setf setzkasten/tmp-image (svg-create (* 1 (type-width type-generic))
					 (* 1 (type-height type-generic))
					 :viewbox (format "0 0 %d %d"
							  (type-width type-generic)
							  (type-height type-generic))
					 :stroke-color (ink-color type-generic)))
  (cl-call-next-method)
  (let ((output-buffer (get-buffer-create "*svg-output*")))
    (set-buffer output-buffer)
    (erase-buffer)
    (nxml-mode)
    (svg-print setzkasten/tmp-image)
    (sgml-pretty-print (point-min) (point-max))
    (write-file (concat (filename type-generic) "-" (ink-color type-generic) ".svg"))
    ))




;; staff lines

(cl-defmethod v-center ((type setzkasten/type))
  "Returns the x-coordinate of the center line of the type."
  (* 0.5 (type-height type)))

(cl-defmethod h-center ((type setzkasten/type))
  "Returns the y-coordinate of the center line of the type."
  (* 0.5 (type-width type)))

(cl-defmethod number-of-staff-positions ((type setzkasten/type-staff))
  "Returns the highest possible staff position without using ledger lines."
  (1+ (* 2 (number-of-lines (staff-instance type)))))

(cl-defmethod inverse-staff-position ((type setzkasten/type-staff) staff-position)
  "Inverses the staff position by mirroring the position at the center position."
  (- (number-of-staff-positions type) 1 staff-position))

(cl-defmethod calculate-absolute-staff-position ((type setzkasten/type-staff) staff-position)
  "Returns the y-coordinate referencing a given staff position."
  (with-slots ((dist distance-between-lines)
	       (num-lines number-of-lines))
      (staff-instance type)
    (let ((pos-0 (- (v-center type) (* dist (+ 0.5 (* 0.5 (1- num-lines)))))))
      (+ pos-0 (* 0.5 dist (inverse-staff-position type staff-position))))))

(cl-defmethod cast ((type-blank setzkasten/type-staff))
  "Generates SVG data for staff lines, vertically centered."
  (with-slots ((num-lines number-of-lines)
	       thickness
	       offset
	       (linecap endings))
      (staff-instance type-blank)
    (loop repeat num-lines
	  for staff-pos from 1 by 2 
	  do (let ((y (calculate-absolute-staff-position type-blank staff-pos)))
	       (svg-line setzkasten/tmp-image
			 offset y
			 (- (type-width type-blank) offset) y
			 :stroke-width thickness
			 :stroke-linecap linecap)))))



;; notehead

(defun draw-rectangle-relative (center-x center-y diamond-p width height)
  "Generates SVG data (added to setzkasten/tmp-image) for a rectangle, relative to a center point."
  (let ((h-width (* 0.5 width))
	(h-height (* 0.5 height)))
    (if diamond-p
	(svg-path setzkasten/tmp-image `((moveto ((,(- center-x h-width) . ,center-y)
						  (,center-x . ,(+ center-y h-height))
						  (,(+ center-x h-width) . ,center-y)
						  (,center-x . ,(- center-y h-height))))
					 (closepath))
		  :fill-rule 'evenodd)
      ;; TODO diamond-p nil: implement square notehead
      )))

(defun draw-notehead (center-x center-y diamond-p width height thickness-a thickness-b)
  (let* ((a (+ center-x (* 0.5 height)))
	 (b (+ center-y (* -0.5 width)))
	 (c (+ center-x (* -0.5 height)))
	 (d (+ center-y (* 0.5 width)))
	 (center (list center-x center-y))
	 (l1 thickness-a)
	 (l2 thickness-b)
	 (e (jk/add a (jk/add (jk/scale (jk/unit-vector jk/a jk/b) l1)
			      (jk/scale (jk/unit-vector jk/a jk/d) l2))))
	 (f (jk/add b (jk/add (jk/scale (jk/unit-vector jk/b jk/a) l2)
			      (jk/scale (jk/unit-vector jk/a jk/d) l1))))
	 (g (jk/add center (jk/subtract center e)))
	 (h (jk/add center (jk/subtract center f)))))
  (svg-path setzkasten/tmp-image `((moveto (((,a . ,b)
					     ())))))
)

(cl-defmethod calculate-notehead-height ((type setzkasten/type-notehead))
  "Returns the vertical height of a notehead, including the overhead value."
  (with-slots ((dist distance-between-lines))
      (staff-instance type)
    (with-slots ((overhead length-over-line))
	(notehead-instance type)
      (+ dist (* 2 overhead dist)))))

;; TODO finish implementation: add hole in note head. 
(cl-defmethod cast ((type-notehead setzkasten/type-notehead))
  "Generates SVG data for a notehead."
  (with-slots (oblique-p
	       (width-factor width)
	       black
	       bold-stroke
	       light-stroke)
      (notehead-instance type-notehead)
    (let* ((x (h-center type-notehead))
	   (y (calculate-absolute-staff-position
	       type-notehead
	       (notehead-position type-notehead)))
	   (h (calculate-notehead-height type-notehead))
	   (w (* width-factor h))
	   (length-side (sqrt (+ (* h h) (* w w))))
	   (sum-of-strokes (+ bold-stroke light-stroke))
	   (offset-hole (* 2 sum-of-strokes (/ h length-side))))
      ;; TODO delete unused values
      (if black
	  (draw-rectangle-relative x y oblique-p w h)
	  (draw-notehead x y oblique-p w h bold-stroke light-stroke))))
  (cl-call-next-method))




;; enharmonic dot

(cl-defmethod cast ((type-dot setzkasten/type-notehead-dot))
  "Generates SVG data for an enharmonic dot above a notehead."
  (when (dot-instance type-dot)
    (insert "\nCasting enharmonic dot not implemented yet."))
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

