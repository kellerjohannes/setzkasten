;; example macro call
;; (define-setzkasten-class setzkasten/test ()
;;   "Docstring."
;;   (number-of-lines 5 "Number of staff lines.")
;;   (distance-between-lines 12 "The distance between two lines."))

(defmacro define-setzkasten-class (class-name super-class class-docstring &rest parameters)
  "Creates a simple class with parameters."
  `(defclass ,class-name ,super-class 
     ,(mapcar (lambda (par)
		  `(,(first par)
		    :initarg ,(intern (concat ":" (format "%s" (first par))))
		    :initform ,(second par)
		    :accessor ,(first par)
		    :documentation ,(format "%s" (third par))))
	      parameters)
     ,(format "%s" class-docstring)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; parameter containers for typographic components ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; containers (classes) for the following type components are available:
;; - staff
;; - notehead
;; - stem
;; - flag
;; - rest
;; - dot
;; - sharp
;; - flat
;; - c-clef
;; - g-clef

(define-setzkasten-class setzkasten/staff ()
  "Parameters for the creation of staff lines."
  (number-of-lines 5 "Number of staff lines.")
  (distance-between-lines 12 "The distance between two lines.")
  (thickness 1.2 "Thickness of the staff lines.")
  (endings "round" "Type of note line endings, left and right of type. SVG values are accepted: 'round', 'butt', 'square'.")
  (offset 0.2 "Gap between type left and right type edge and line endings."))

(define-setzkasten-class setzkasten/notehead ()
  "Parameters for the creation of noteheads, oblique and square ones."
  (length-over-line 0.25 "If the notehead is located in a space: overhead distance that goes above the line, in fraction of line space.")
   (width .8 "Width (horizontally) of the notehead, as proportion to its height.")
   (bold-stroke 3 "Width of the bold lines in the note head.")
   (light-stroke 1 "Width of the light lines in the note head.")
   (oblique-p t "T if the notehead is diamond-shaped, nil if it is a regular recangle.")
   (black nil "nil for normal notehead, T for black notation."))

(define-setzkasten-class setzkasten/stem ()
  "Parameters for the creation of note stems."
  (stem-length 2.3 "Length of note stem, in proportion to distance between lines.")
   (width-head 1.8 "Width of the note stem at note head.")
   (width-tail 1.2 "Width of the note stem at the end of the stem, in proportion to its width at the note head."))

(define-setzkasten-class setzkasten/flag ()
  "Parameters for the creation of a stem flag."
  (flag-thickness nil "Stroke thickness for flag. If nil, no flag will be produced.")
   ;; TODO more flag parameters
   )

(define-setzkasten-class setzkasten/rest ()
  "Parameters for the creation of rests."
  (vertical-length 0.5 "Length of the vertical line, in proportion to the space between staff lines. Negative value for hanging rests, positive value for sitting rests.")
   (horizontal-length 0 "Length of the horizontal line, in proportion to the space between staff lines. 0 for no line. Negative value for pointing to the left (croma), positive value for pointing to the right (semiminima)."))

(define-setzkasten-class setzkasten/dot ()
  "Parameters for the creation of dots."
  (size 0.2 "Size of the dot, vertically, proportional to distance between staff lines."))

(define-setzkasten-class setzkasten/sharp ()
  "Parameters for the creation of sharps."
  (thickness 0.5 "Stroke thickness.")
   (size 1 "Overall size of the sharp. Length of one side (they are always square-shaped) in proportion to the distance between two staff-lines.")
   (double-p t "nil if only two lines are used, t if four lines are used."))

(define-setzkasten-class setzkasten/flat ()
  "Parameters for the creation of flats."
  (thickness-circle 0.8 "Stroke thickness of the semi circle.")
   (thickness-stem-head 0.8 "Stroke thickness at the lower end of the stem.")
   (thickness-stem-head 1.2 "Stroke thickness at the upper end of the stem, in proportion to the stem thickness at the lower end.")
   (stem-length 2.2 "Length of the stem, from above the semi circle to the upper end of the stem, proportional to the distance between staff lines.")
   (diameter 4 "Diameter of the semi circle."))

(define-setzkasten-class setzkasten/c-clef ()
  "Parameters for the creation of c-clefs."
  (vertical-thickness 0.2 "Stroke thickness of the three vertical lines.")
   (horizontal-thickness 0.3 "Stroke thickness of the four horizontal lines.")
   (rectangle-height 0.7 "Height of the two rectangles, in proportion to the distance between two staff lines.")
   (rectangle-width 1.5 "Width of the two rectangles, in proportion to their height.")
   (length-long-leg 2.2 "Length of the longest leg, in proportion to the space between two staff lines.")
   (length-middle-leg 1 "Length of the top left leg (usually medium length), in proportion to the space between two staff lines.")
   (length-short-leg 0.8 "Length of the two short legs, in proportion to the space between two staff lines."))

(define-setzkasten-class setzkasten/g-clef ()
  "Parameters for the creation of g-clefs."
  ;; TODO
  ())

(define-setzkasten-class setzkasten/barline ()
  "Parameters for the creation of bar lines."
  (overhead 0.2 "Overhead length above and below staff, in proportion to the space between two staff lines.")
   (thickness 2 "Stroke thickness."))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; containers to group components into types ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; the following grouping containers (classes) are available:
;; - type
;;   - type-staff
;;     - type-notehead
;;       - type-notehead-dot
;;         - type-notehead-stem
;;           - type-notehead-flagged
;;     - type-rest
;;     - type-sharp
;;     - type-flat
;;     - type-clef
;;     - type-fclef-component
;;     - type-barline

(define-setzkasten-class setzkasten/type ()
  "Specification of an empty type, only holding the meta information for the creation of SVG data."
  (type-width 350 "Width of type.")
   (type-height 1500 "Height of type.")
   (filename "blank-type" "String that is used as main part of the file name for writing the SVG data to disk.")
   (ink-color "black" "Color used for the production of SVG data."))

(define-setzkasten-class setzkasten/type-staff (setzkasten/type)
  "Specification for the creation of staff lines, either to be used as a blank type, or to be combined with other typographical elements (subclasses of setzkasten/staff)."
  (staff-instance nil "Instance of setzkasten/staff. If nil, an empty type will be produced.")
   (type-instance nil "Instance of setzkasten/type"))

(define-setzkasten-class setzkasten/type-notehead (setzkasten/type-staff)
  "Specification of a type containing a notehead. For enharmonic dots, stems and fans see subclasses."
(notehead-position :initarg 5 "Vertical position of notehead, 0 for below bottom line, 10 for above top line.")
   (notehead-instance nil "Instance of setzkasten/notehead."))

(define-setzkasten-class setzkasten/type-notehead-dot (setzkasten/type-notehead)
    "Specification for the casting of an enharmonic dot, as a subcomponent of a notehead."
  (dot-alignment 'center "'center for centered above, 'left for flush above the left edge of the notehead, 'right for flush above the right edge of the notehead. Left and  right are used for enharmonic ligatures.")
   (dot-instance nil "Instance of setzkasten/dot. If nil, no dot will be generated."))

(define-setzkasten-class setzkasten/type-notehead-stem (setzkasten/type-notehead-dot)
  "Specification for the casting of a note stem, as a subcomponent of a notehead with an optional enharmonic dot."
  (stem-instance nil "Instance of setzkasten/stem. If nil, no stem will be generated."))

(define-setzkasten-class setzkasten/type-notehead-flagged (setzkasten/type-notehead-stem)
  "Specification for the casting of a stem, as a subcomponent of a note stem."
  (flag-instance nil "Instance of setzkasten/flag. If nil, no flag will be generated."))

(define-setzkasten-class setzkasten/type-rest (setzkasten/type-staff)
  "Specification of a type containing a rest."
  (rest-position 5 "Position of the starting point of the rest. Needs to be a line (only 1 3 5 7 9 are valid positions).")
   (rest-instance nil "Instance of setzkasten/rest. If nil, an empty staff type will be produced."))

(define-setzkasten-class setzkasten/type-sharp (setzkasten/type-staff)
  "Specification of a type containing a sharp."
  (sharp-position 5 "Position of the sharp within the staff.")
   (sharp-instance nil "Instance of setzkasten/sharp. If nil, an empty staff type will be produced."))

(define-setzkasten-class setzkasten/type-flat (setzkasten/type-staff)
  "Specification of a type containing one or two flats."
  (flat-position 5 "Position of the flat within the staff.")
   (second-flat-position nil "Position of an optional second flat. If nil, only one flat will be produced.")
   (flat-instance nil "Instance of setzkasten/flat. If nil, an empty staff type will be produced."))

(define-setzkasten-class setzkasten/type-clef (setzkasten/type-staff)
  "Specification of a type containing a c- or g-clef."
  (clef-position 5 "Position of the clef.")
   (clef-instance nil "Instance of setzkasten/c-clef or setzkasten/g-clef. In nil, an empty staff will be produced."))

(define-setzkasten-class setzkasten/type-fclef-component (setzkasten/type-staff)
  "Specification of a type containing the right part of an f-clef double-type."
  (clef-position 7 "Position of the F pitch (7 for a standard bass clef).")
   (notehead-instance nil "Instance of setzkasten/notehead. Two noteheads will be produced, above and below clef-position.")
   (stem-instance nil "Instance of setzkasten/stem. This special stem points downwards unlike normal note stems."))

(define-setzkasten-class setzkasten/type-barline (setzkasten/type-staff)
  "Specification of a type containig a singe or double barline, with optional two or four dots on one or both sides."
  (double-distance nil "Horizontal distance between the two lines in case of a double barline. If nil, a single barline will be produced.")
   (barline-instance nil "Instance of setzkasten/barline. If nil, an empty staff will be produced.")
   (dot-distance nil "Distance between barline and dots.")
   (number-of-dots 0 "Number of dots, left or right of the barline(s). 0, 2 or 4 are accepted.")
   (dot-placement nil "'right for only right of barline(s), 'left for only left of barline(s), or 'both.")
   (dot-instance nil "Instance of setzkasten/dot, optional."))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; family of casting methods, to produce SVG output for each type container ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(cl-defgeneric cast (setzkasten/type)
  "Creates SVG files for any sort of type by calling the :around-method to create and close the SVG context and the applicable methods to generate the SVG paths of the types' components.")

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

(defun draw-rectangle-relative (center-x center-y diamond-p width height)
  "Generates SVG data (added to setzkasten/tmp-image) for a rectangle, relative to a center point."
  (let ((h-width (* 0.5 width))
	(h-height (* 0.5 height)))
    (if diamond-p
	(svg-path setzkasten/tmp-image `((moveto ((,(- center-x h-width) . ,center-y)
						  (,center-x . ,(+ center-y h-height))
						  (,(+ center-x h-width) . ,center-y)
						  (,center-x . ,(- center-y h-height))))
					 (closepath)))
      ;; TODO diamond-p nil: implement square notehead
      )))

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
	       (w width))
      (notehead-instance type-notehead)
    (let ((x (h-center type-notehead))
	  (y (calculate-absolute-staff-position type-notehead (notehead-position type-notehead)))
	  (h (calculate-notehead-height type-notehead)))
      (draw-rectangle-relative x y oblique-p (* w h) h)))
  (cl-call-next-method))

(cl-defmethod cast ((type-dot setzkasten/type-notehead-dot))
  "Generates SVG data for an enharmonic dot above a notehead."
  (when (dot-instance type-dot)
    (insert "\nCasting enharmonic dot not implemented yet."))
  (cl-call-next-method))

(cl-defmethod cast ((type-stem setzkasten/type-notehead-stem))
  "Generates SVG data for a note stem."
  (when (stem-instance type-stem)
    (insert "\nCasting note stem not implemented yet."))
  (cl-call-next-method))

(cl-defmethod cast ((type-flag setzkasten/type-notehead-flagged))
  "Generates SVG data for a note stem flag."
  (when (flag-instance type-flag)
    (insert "\nCasting stem flag not implemented yet."))
  (cl-call-next-method))

(cl-defmethod cast ((type-rest setzkasten/type-rest))
  "Generates SVG data for a rest."
  (insert "\nCasting rest not implemented yet.")
  (svg-line setzkasten/tmp-image 0 0 10 10)
  (cl-call-next-method))

(cl-defmethod cast ((type-sharp setzkasten/type-sharp))
  "Generates SVG data for a sharp sign."
  (insert "\nCasting a sharp sign not implemented yet.")
  (cl-call-next-method))

(cl-defmethod cast ((type-flat setzkasten/type-flat))
  "Generates SVG data for a flat sign."
  (insert "\nCasting a flat sign not implemented yet.")
  (cl-call-next-method))

(cl-defmethod cast ((type-clef setzkasten/type-clef))
  "Generates SVG data for a c- or g-clef."
  (insert "\nCasting a c- or g-clef not implemented yet.")
  (cl-call-next-method))

(cl-defmethod cast ((type-fclef setzkasten/type-fclef-component))
  "Generates SVG data for the right part of a f-clef."
  (insert "\nCasting a f-clef component not implemented yet.")
  (cl-call-next-method))

(cl-defmethod cast ((type-barline setzkasten/type-barline))
  "Generates SVG data for a barline."
  (insert "\nCasting a barline not implemented yet.")
  (cl-call-next-method))





;;;; code to parse definitions of typographical components (font parameters) and definitions of types. here the calling of the casting methods is issued. the output are SVG files, one for each type.

;; under construction, will eventually be a macro to process font and types data, defined by the typesetting person.

(defun test-generation ()
  (let ((staff (setzkasten/staff :number-of-lines 5
				 :distance-between-lines 100
				 :thickness 20
				 :endings "round"
				 :offset 10))
	(notehead-semibrevis (setzkasten/notehead :length-over-line 0.3
						  :width 0.8
						  :bold-stroke 40
						  :light-stroke 15
						  :black nil)))
    (let ((semibrevis-a (setzkasten/type-notehead :notehead-position 6
						  :type-width 350
						  :filename "semibrevis-a"
						  :ink-color "black"
						  :staff-instance staff
						  :notehead-instance notehead-semibrevis)))
      ;(inverse-staff-position semibrevis-a 10)
      (cast semibrevis-a)
      )))

(test-generation)
;; TODO reminder: try auto-revert-mode for SVG files

(defun testground ()
  (let ((head (setzkasten/notehead))
	(staff (setzkasten/staff)))
    (let ((testnote (setzkasten/type-notehead :notehead-instance head
					      :staff-instance staff)))
      (calculate-notehead-height testnote))))

(testground)

(defun generate-kasten ()
  (let ((notehead-oblique (setzkasten/notehead))
	(notehead-square (setzkasten/notehead))
	(stem-minima (setzkasten/stem))
	(flag-croma (setzkasten/flag))
	(stem-longa (setzkasten/stem))
	(staff (setzkasten/staff))
	(rest-hanging (setzkasten/rest))
	(dot-enharmonic (setzkasten/dot)))
    (let ((blank-a (setzkasten/type-staff :width 17
					  :staff-instance staff))
	  (blank-b (setzkasten/type-staff :width 35
					  :staff-instance staff))
	  (minima-a (setzkasten/type-notehead-flagged :width 28
						      :staff-instance staff
						      :notehead-instance notehead-oblique
						      :notehead-position 0
						      :stem-instance stem-minima
						      :flag-instance flag-croma
						      :dot-instance dot-enharmonic))
	  (rest-minima-b (setzkasten/type-rest :width 18
					       :staff-instance staff
					       :rest-instance rest-hanging
					       :rest-position 3))
	  (fclef-c (setzkasten/type-fclef-component
		    :staff-instance staff
		    :notehead-instance notehead-oblique
		    :stem-instance stem-minima)))
      (insert "\n")
      (cast fclef-c)
      (insert "\n")
      (cast minima-a)
      (insert "\n")
      (cast blank-b)
      (insert "\n")
      (cast rest-minima-b)
      )))

;(generate-kasten)

