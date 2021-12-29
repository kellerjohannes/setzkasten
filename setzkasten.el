;;;; code snippet helper

(defun jk/insert-slot (name)
  (interactive "MSlot name: ")
  (let ((start-region (point)))
    (insert "(" name " :initarg :" name)
    (evil-ret)
    (insert ":initform ")
    (evil-set-marker 65)
    (evil-ret)
    (insert ":accessor " name)
    (evil-ret)
    (insert ":documentation \"\")")
    (indent-region start-region (point))
    (evil-goto-mark 65)
    (evil-insert 0)))


;;;; parameter containers for typographic components

(defclass setzkasten/staff ()
  ((number-of-lines :initarg :number-of-lines
		    :initform 5
		    :accessor number-of-lines
		    :documentation "Number of staff lines.")
   (distance-between-lines :initarg :distance-between-lines
			   :initform 12
			   :accessor distance-between-lines
			   :documentation "The distance between two lines.")
   (thickness :initarg :thickness
	      :initform 1.2
	      :accessor thickness
	      :documentation "Thickness of the note lines.")
   (endings :initarg :endings
	    :initform 'rounded
	    :accessor endings
	    :documentation "Type of note line endings, left and right of type.")
   (offset :initarg :offset
	   :initform 0.2
	   :accessor offset
	   :documentation "Gap between type left and right type edge and line endings."))
  "Parameters for the creation of staff lines.")

(defclass setzkasten/notehead ()
  ((length-over-line :initarg :length-over-line
		     :initform 0.25 
		     :accessor length-over-line
		     :documentation "If the notehead is located in a space: overhead distance that goes above the line, in fraction of line space.")
   (width :initarg :width
	  :initform .8
	  :accessor width
	  :documentation "Width (horizontally) of the notehead, as proportion to its height.")
   (bold-stroke :initarg :bold-stroke
		:initform 3
		:accessor bold-stroke
		:documentation "Width of the bold lines in the note head.")
   (light-stroke :initarg :light-stroke
		 :initform 1
		 :accessor light-stroke
		 :documentation "Width of the light lines in the note head.")
   (black :initarg :black
	  :initform nil
	  :accessor black
	  :documentation "nil for normal notehead, T for black notation."))
  "Parameters for the creation of noteheads, oblique and square ones.")

(defclass setzkasten/stem ()
  ((stem-length :initarg :stem-length
		:initform 2.3
		:accessor stem-length
		:documentation "Length of note stem, in proportion to distance between lines.")
   (width-head :initarg :width-head
	       :initform 1.8
	       :accessor width-head
	       :documentation "Width of the note stem at note head.")
   (width-tail :initarg :width-tail
	       :initform 1.2
	       :accessor width-tail
	       :documentation "Width of the note stem at the end of the stem, in proportion to its width at the note head."))
  "Parameters for the creation of note stems.")

(defclass setzkasten/rest ()
  ((vertical-length :initarg :vertical-length
		    :initform 0.5
		    :accessor vertical-length
		    :documentation "Length of the vertical line, in proportion to the space between staff lines. Negative value for hanging rests, positive value for sitting rests.")
   (horizontal-length :initarg :horizontal-length
		      :initform 0
		      :accessor horizontal-length
		      :documentation "Length of the horizontal line, in proportion to the space between staff lines. 0 for no line. Negative value for pointing to the left (croma), positive value for pointing to the right (semiminima)."))
  "Parameters for the creation of rests.")

(defclass setzkasten/dot ()
  ((size :initarg :size
	 :initform 0.2
	 :accessor size
	 :documentation "Size of the dot, vertically, proportional to distance between staff lines."))
  "Parameters for the creation of dots.")

(defclass setzkasten/sharp ()
  ((thickness :initarg :thickness
	      :initform 0.5
	      :accessor thickness
	      :documentation "Stroke thickness.")
   (size :initarg :size
	 :initform 1
	 :accessor size
	 :documentation "Overall size of the sharp. Length of one side (they are always square-shaped) in proportion to the distance between two staff-lines.")
   (double-p :initarg :double-p
	     :initform t
	     :accessor double-p
	     :documentation "nil if only two lines are used, t if four lines are used."))
  "Parameters for the creation of sharps.")

(defclass setzkasten/flat ()
  ((thickness-circle :initarg :thickness-circle
		     :initform 0.8
		     :accessor thickness-circle
		     :documentation "Stroke thickness of the semi circle.")
   (thickness-stem-head :initarg :thickness-stem-head
			:initform 0.8
			:accessor thickness-stem-head
			:documentation "Stroke thickness at the lower end of the stem.")
   (thickness-stem-head :initarg :thickness-stem-tail
			:initform 1.2 
			:accessor thickness-stem-tail
			:documentation "Stroke thickness at the upper end of the stem, in proportion to the stem thickness at the lower end.")
   (stem-length :initarg :stem-length
		:initform 2.2
		:accessor stem-length
		:documentation "Length of the stem, from above the semi circle to the upper end of the stem, proportional to the distance between staff lines.")
   (diameter :initarg :diameter
	     :initform 4
	     :accessor diameter
	     :documentation "Diameter of the semi circle."))
  "Parameters for the creation of flats.")

(defclass setzkasten/c-clef ()
  ((vertical-thickness :initarg :vertical-thickness
		       :initform 0.2
		       :accessor vertical-thickness
		       :documentation "Stroke thickness of the three vertical lines.")
   (horizontal-thickness :initarg :horizontal-thickness
			 :initform 0.3
			 :accessor horizontal-thickness
			 :documentation "Stroke thickness of the four horizontal lines.")
   (rectangle-height :initarg :rectangle-height
		     :initform 0.7
		     :accessor rectangle-height
		     :documentation "Height of the two rectangles, in proportion to the distance between two staff lines.")
   (rectangle-width :initarg :rectangle-width
		    :initform 1.5
		    :accessor rectangle-width
		    :documentation "Width of the two rectangles, in proportion to their height.")
   (length-long-leg :initarg :length-long-leg
		    :initform 2.2
		    :accessor length-long-leg
		    :documentation "Length of the longest leg, in proportion to the space between two staff lines.")
   (length-middle-leg :initarg :length-middle-leg
		      :initform 1
		      :accessor length-middle-leg
		      :documentation "Length of the top left leg (usually medium length), in proportion to the space between two staff lines.")
   (length-short-leg :initarg :length-short-leg
		     :initform 0.8
		     :accessor length-short-leg
		     :documentation "Length of the two short legs, in proportion to the space between two staff lines."))
  "Parameters for the creation of c-clefs.")

(defclass setzkasten/barline ()
  ((overhead :initarg :overhead
	     :initform 0.2
	     :accessor overhead
	     :documentation "Overhead length above and below staff, in proportion to the space between two staff lines.")
   (double-distance :initarg :double-distance
		    :initform nil
		    :accessor double-distance
		    :documentation "Horizontal distance between the two lines in case of a double barline. If nil, a single barline will be produced."))
  "Parameters for the creation of bar lines.")





;;;; containers to group components into types

(defclass setzkasten/type ()
  ((type-width :initarg :width
	       :initform 35
	       :accessor type-width
	       :documentation "Width of type.")
   (staff-instance :initarg :staff-instance
		   :initform nil
		   :accessor staff-instance
		   :documentation "Instance of setzkasten/staff. If nil, an empty type will be produced."))
  "Specification of a type containing only staff lines.")

(defclass setzkasten/type-notehead (setzkasten/type)
  ((notehead-position :initarg :notehead-position
		      :initform 5
		      :accessor notehead-position
		      :documentation "Vertical position of notehead, 0 for below bottom line, 10 for above top line.")
   (notehead-instance :initarg :notehead-instance
		      :initform nil
		      :accessor notehead-instance
		      :documentation "Instance of setzkasten/notehead.")
   (stem-instance :initarg :stem-instance
		  :initform nil
		  :accessor stem-instance
		  :documentation "Instance of setzkasten/stem. If nil, no stem will be generated.")
   (dot-instance :initarg :dot-instance
		 :initform nil
		 :accessor dot-instance
		 :documentation "Instance of setzkasten/dot. If nil, no dot will be generated."))
  "Specification of a type containing a notehead, an optional stem and an optional (enharmonic) dot above the notehead.")

(defclass setzkasten/type-rest (setzkasten/type)
  ((rest-position :initarg :rest-position
		  :initform 5
		  :accessor rest-position
		  :documentation "Position of the starting point of the rest. Needs to be a line (only 1 3 5 7 9 are valid positions).")
   (rest-instance :initarg :rest-instance
		  :initform nil
		  :accessor rest-instance
		  :documentation "Instance of setzkasten/rest. If nil, an empty staff type will be produced."))
  "Specification of a type containing a rest.")

(defclass setzkasten/type-sharp (setzkasten/type)
  ((sharp-position :initarg :sharp-position
		   :initform 5
		   :accessor sharp-position
		   :documentation "Position of the sharp within the staff.")
   (sharp-instance :initarg :sharp-instance
		   :initform nil
		   :accessor sharp-instance
		   :documentation "Instance of setzkasten/sharp. If nil, an empty staff type will be produced."))
  "Specification of a type containing a sharp.")





;;;; family of casting methods, to produce SVG output for each type container

(cl-defgeneric cast (setzkasten/type)
  "Creates SVG files for any sort of type by calling the :around-method to create and close the SVG context and the applicable methods to generate the SVG paths of the types' components.")

(setq setzkasten/tmp-image nil)

(cl-defmethod cast :around ((type-generic setzkasten/type))
  "Main casting method, wrapping all other casting methods for the components of this type."
  (insert "\nOpening svg-context.")
  (setf setzkasten/tmp-image (svg-create 100 100))
  (cl-call-next-method)
  (insert "\nClosing svg-context.")
  (insert "\n\n")
  (svg-print setzkasten/tmp-image))

(cl-defmethod cast ((type-blank setzkasten/type))
  (insert "\nCasting " (format "%d" (number-of-lines (staff-instance type-blank))) " lines.")
  (svg-line setzkasten/tmp-image 0 0 10 10))

(cl-defmethod cast ((type-notehead setzkasten/type-notehead))
  (insert "\nCasting notehead.")
  (svg-line setzkasten/tmp-image 0 0 10 10)
  (when (stem-instance type-notehead)
    (insert "\nCasting stem.")
    (svg-line setzkasten/tmp-image 0 0 10 10))
  (when (dot-instance type-notehead)
    (insert "\nCasting dot.")
    (svg-line setzkasten/tmp-image 0 0 10 10))
  (cl-call-next-method))

(cl-defmethod cast ((type-rest setzkasten/type-rest))
  (insert "\nCasting rest.")
  (svg-line setzkasten/tmp-image 0 0 10 10)
  (cl-call-next-method))




;;;; code to parse definitions of typographical components (font parameters) and definitions of types. here the calling of the casting methods is issued. the output are SVG files, one for each type.

;; under construction, will eventually be a macro to process font and types data, defined by the typesetter.


(defun generate-kasten ()
  (let ((notehead-oblique (setzkasten/notehead))
	(notehead-square (setzkasten/notehead))
	(stem-minima (setzkasten/stem))
	(stem-longa (setzkasten/stem))
	(staff (setzkasten/staff))
	(rest-hanging (setzkasten/rest))
	(dot-enharmonic (setzkasten/dot)))
    (let ((blank-a (setzkasten/type :width 17
				    :staff-instance staff))
	  (blank-b (setzkasten/type :width 35
				    :staff-instance staff))
	  (minima-a (setzkasten/type-notehead :width 28
					      :staff-instance staff
					      :notehead-instance notehead-oblique
					      :notehead-position 0
					      :stem-instance stem-minima
					      :dot-instance dot-enharmonic))
	  (rest-minima-b (setzkasten/type-rest :width 18
					       :staff-instance staff
					       :rest-instance rest-hanging
					       :rest-position 3)))
      (insert "\n")
      (cast minima-a)
      (insert "\n")
      (cast blank-b)
      (insert "\n")
      (cast rest-minima-b)
      )))

(generate-kasten)
