(in-package :setzkasten)
;; example macro call
;; (define-setzkasten-class setzkasten/test ()
;;   "Docstring."
;;   (number-of-lines 5 "Number of staff lines.")
;;   (distance-between-lines 12 "The distance between two lines."))


(defun make-keyword (name)
  (values (intern (string-upcase name) "KEYWORD")))

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

(define-setzkasten-class component-staff-lines ()
  "Parameters for the creation of staff lines."
  (number-of-lines 5 "Number of staff lines.")
  (distance-between-lines 12 "The distance between two lines.")
  (thickness 1.2 "Thickness of the staff lines.")
  (endings "round" "Type of note line endings, left and right of type. SVG values are accepted: 'round', 'butt', 'square'.")
  (offset 0.2 "Gap between type left and right type edge and line endings."))

(define-setzkasten-class component-notehead ()
  "Parameters for the creation of noteheads, oblique and square ones."
  (length-over-line 0.25 "If the notehead is located in a space: overhead distance that goes above the line, in fraction of line space.")
  (width .8 "Width (horizontally) of the notehead, as proportion to its height.")
  (bold-stroke 3 "Width of the bold lines in the note head.")
  (light-stroke 1 "Width of the light lines in the note head.")
  (oblique-p t "T if the notehead is diamond-shaped, nil if it is a regular recangle.")
  (black nil "nil for normal notehead, T for black notation."))

(define-setzkasten-class component-stem ()
  "Parameters for the creation of note stems."
  (stem-length 2.3 "Length of note stem, in proportion to distance between lines.")
  (width-head 1.8 "Width of the note stem at note head.")
  (width-tail 1.2 "Width of the note stem at the end of the stem, in proportion to its width at the note head."))

(define-setzkasten-class component-flag ()
  "Parameters for the creation of a stem flag."
  (flag-thickness nil "Stroke thickness for flag. If nil, no flag will be produced.")
  ;; TODO more flag parameters
  )

(define-setzkasten-class component-rest ()
  "Parameters for the creation of rests."
  (vertical-length 0.5 "Length of the vertical line, in proportion to the space between staff lines. Negative value for hanging rests, positive value for sitting rests.")
  (horizontal-length 0 "Length of the horizontal line, in proportion to the space between staff lines. 0 for no line. Negative value for pointing to the left (croma), positive value for pointing to the right (semiminima)."))

(define-setzkasten-class component-dot ()
  "Parameters for the creation of dots."
  (size 0.2 "Size of the dot, vertically, proportional to distance between staff lines."))

(define-setzkasten-class component-sharp ()
  "Parameters for the creation of sharps."
  (thickness 0.5 "Stroke thickness.")
  (size 1 "Overall size of the sharp. Length of one side (they are always square-shaped) in proportion to the distance between two staff-lines.")
  (double-p t "nil if only two lines are used, t if four lines are used."))

(define-setzkasten-class component-flat ()
  "Parameters for the creation of flats."
  (thickness-circle 0.8 "Stroke thickness of the semi circle.")
  (thickness-stem-head-bottom 0.8 "Stroke thickness at the lower end of the stem.")
  (thickness-stem-head-top 1.2 "Stroke thickness at the upper end of the stem, in proportion to the stem thickness at the lower end.")
  (stem-length 2.2 "Length of the stem, from above the semi circle to the upper end of the stem, proportional to the distance between staff lines.")
  (diameter 4 "Diameter of the semi circle."))

(define-setzkasten-class component-c-clef ()
  "Parameters for the creation of c-clefs."
  (vertical-thickness 0.2 "Stroke thickness of the three vertical lines.")
  (horizontal-thickness 0.3 "Stroke thickness of the four horizontal lines.")
  (rectangle-height 0.7 "Height of the two rectangles, in proportion to the distance between two staff lines.")
  (rectangle-width 1.5 "Width of the two rectangles, in proportion to their height.")
  (length-long-leg 2.2 "Length of the longest leg, in proportion to the space between two staff lines.")
  (length-middle-leg 1 "Length of the top left leg (usually medium length), in proportion to the space between two staff lines.")
  (length-short-leg 0.8 "Length of the two short legs, in proportion to the space between two staff lines."))

;; (define-setzkasten-class component-g-clef ()
;;   "Parameters for the creation of g-clefs."
;;   ;; TODO
;;   ())

(define-setzkasten-class component-barline ()
  "Parameters for the creation of bar lines."
  (overhead 0.2 "Overhead length above and below staff, in proportion to the space between two staff lines.")
  (thickness 2 "Stroke thickness."))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; containers to group components into glyphs ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

(define-setzkasten-class glyph ()
  "Specification of an empty type, only holding the meta information for the creation of SVG data."
  (type-width 350 "Width of type.")
  (type-height 1500 "Height of type.")
  (filename "blank-type" "String that is used as main part of the file name for writing the SVG data to disk.")
  (ink-color "black" "Color used for the production of SVG data.")
  (svg-object nil "Container for the SVG object (created by cl-svg)."))



(define-setzkasten-class glyph-staff (glyph)
  "Specification for the creation of staff lines, either to be used as a blank type, or to be combined with other typographical elements (subclasses of glyph-staff)."
  (staff-component nil "Instance of glyph. If nil, an empty type will be produced."))

(define-setzkasten-class glyph-notehead (glyph-staff)
  "Specification of a type containing a notehead. For enharmonic dots, stems and fans see subclasses."
  (notehead-position 5 "Vertical position of notehead, 0 for below bottom line, 10 for above top line.")
  (notehead-component nil "Instance of component-notehead."))

(define-setzkasten-class glyph-notehead-dot (glyph-notehead)
  "Specification for the casting of an enharmonic dot, as a subcomponent of a notehead."
  (dot-alignment 'center "'center for centered above, 'left for flush above the left edge of the notehead, 'right for flush above the right edge of the notehead. Left and  right are used for enharmonic ligatures.")
  (dot-component nil "Instance of component-dot. If nil, no dot will be generated."))

(define-setzkasten-class glyph-notehead-stem (glyph-notehead-dot)
  "Specification for the casting of a note stem, as a subcomponent of a notehead with an optional enharmonic dot."
  (stem-component nil "Instance of component-stem. If nil, no stem will be generated."))

(define-setzkasten-class glyph-notehead-flagged (glyph-notehead-stem)
  "Specification for the casting of a stem, as a subcomponent of a note stem."
  (flag-component nil "Instance of component-flag. If nil, no flag will be generated."))

(define-setzkasten-class glyph-rest (glyph-staff)
  "Specification of a type containing a rest."
  (rest-position 5 "Position of the starting point of the rest. Needs to be a line (only 1 3 5 7 9 are valid positions).")
  (rest-component nil "Instance of component-rest. If nil, an empty staff type will be produced."))

(define-setzkasten-class glyph-sharp (glyph-staff)
  "Specification of a type containing a sharp."
  (sharp-position 5 "Position of the sharp within the staff.")
  (sharp-component nil "Instance of component-sharp. If nil, an empty staff type will be produced."))

(define-setzkasten-class glyph-flat (glyph-staff)
  "Specification of a type containing one or two flats."
  (flat-position 5 "Position of the flat within the staff.")
  (second-flat-position nil "Position of an optional second flat. If nil, only one flat will be produced.")
  (flat-component nil "Instance of component-flat. If nil, an empty staff type will be produced."))

(define-setzkasten-class glyph-clef (glyph-staff)
  "Specification of a type containing a c- or g-clef."
  (clef-position 5 "Position of the clef.")
  (clef-component nil "Instance of component-c-clef or component-g-clef. In nil, an empty staff will be produced."))

(define-setzkasten-class glyph-fclef-component (glyph-staff)
  "Specification of a type containing the right part of an f-clef double-type."
  (clef-position 7 "Position of the F pitch (7 for a standard bass clef).")
  (notehead-component nil "Instance of component-notehead. Two noteheads will be produced, above and below clef-position.")
  (stem-component nil "Instance of component-stem. This special stem points downwards unlike normal note stems."))

(define-setzkasten-class glyph-barline (glyph-staff)
  "Specification of a type containig a singe or double barline, with optional two or four dots on one or both sides."
  (double-distance nil "Horizontal distance between the two lines in case of a double barline. If nil, a single barline will be produced.")
  (barline-instance nil "Instance of component-barline. If nil, an empty staff will be produced.")
  (dot-distance nil "Distance between barline and dots.")
  (number-of-dots 0 "Number of dots, left or right of the barline(s). 0, 2 or 4 are accepted.")
  (dot-placement nil "'right for only right of barline(s), 'left for only left of barline(s), or 'both.")
  (dot-component nil "Instance of component-dot, optional."))

