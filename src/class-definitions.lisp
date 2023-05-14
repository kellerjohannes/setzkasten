;;;; TODO
;; - update docstrings for new terminology (type / glyph / instance / component)

(in-package :setzkasten)

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
;; - arc (for 3/2-digits)

(define-setzkasten-class component ()
  "Parent class for all components."
  (id "" "Name of the component, for further reference."))

(define-setzkasten-class component-staff-lines (component)
  "Parameters for the creation of staff lines."
  (number-of-lines 5 "Number of staff lines.")
  (distance-between-lines 12 "The distance between two lines.")
  (thickness 1.2 "Thickness of the staff lines.")
  (endings "round" "Type of note line endings, left and right of type. SVG values are accepted: 'round', 'butt', 'square'.")
  (offset 0.2 "Gap between type left and right type edge and line endings."))

(define-setzkasten-class component-notehead (component)
  "Parameters for the creation of noteheads, oblique and square ones."
  (length-over-line 0.25 "If the notehead is located in a space: overhead distance that goes above the line, in fraction of line space.")
  (width .8 "Width (horizontally) of the notehead, as proportion to its height.")
  (bold-stroke 3 "Width of the bold lines in the note head.")
  (light-stroke 1 "Width of the light lines in the note head.")
  (oblique-p t "T if the notehead is diamond-shaped, nil if it is a regular recangle.")
  (black nil "nil for normal notehead, T for black notation."))

(define-setzkasten-class component-stem (component)
  "Parameters for the creation of note stems."
  (stem-length 2.3 "Length of note stem, in proportion to distance between lines.")
  (width-head 1.8 "Width of the note stem at note head.")
  (width-tail 1.2 "Width of the note stem at the end of the stem, in proportion to its width at the note head.")
  (dot-offset 0.5 "Gap between upper end of stem and enharmonic dot (if existing), in proportion to distance between lines."))

(define-setzkasten-class component-flag (component)
  "Parameters for the creation of a stem flag."
  (flag-thickness-bold nil "Stroke thickness for bold part of flag. If nil, no flag will be produced.")
  (flag-thickness-light nil "Stroke thickness for light part of flag (end). If nil, no flag will be produced.")
  (flag-corner-level nil "Relative to stem length.")
  (flag-merge-level nil "Relative to stem length.")
  (flag-tail-p nil "T if z-shaped flag is required.")
  (flag-tail-level nil "Relative to stem length.")
  (flag-y-offset nil "Relative to note head width.")
  )

(define-setzkasten-class component-meter-tempus (component)
  "Parameters for the creation of tempus-signs (circle or semicircle)."
  (thickness 2 "Line thickness.")
  (diameter 2 "Diameter of the circle in staff spaces.")
  (opening-angle 160 "Angle describing the opening. If nil, a circle will be drawn."))

(define-setzkasten-class component-meter-prolatio (component)
  "Parameters for the creation of prolatio-dots."
  (diameter 0.2 "Diameter of the circular dot, in distance-between-lines."))

(define-setzkasten-class component-meter-diminutio (component)
  "Parameters for the creation of vertical lines."
  (thickness 2 "Line thickness.")
  (line-length 5.5 "Line length in distance-between-lines."))

(define-setzkasten-class component-rest (component)
  "Parameters for the creation of rests."
  (vertical-length 0.5 "Length of the vertical line, in proportion to the space between staff lines. Negative value for hanging rests, positive value for sitting rests.")
  (vertical-thickness 15 "Stroke thickness of the vertical line.")
  (horizontal-length 0 "Length of the horizontal line, in proportion to the space between staff lines. 0 for no line. Negative value for pointing to the left (croma), positive value for pointing to the right (semiminima).")
  (horizontal-thickness 9 "Stroke thickness of the horizontal line."))

(define-setzkasten-class component-dot (component)
  "Parameters for the creation of dots."
  (shape :dot "Shape of the dot, can be :dot or :comma.")
  (size 0.2 "Size of the dot, vertically, proportional to distance between staff lines."))

(define-setzkasten-class component-sharp (component)
  "Parameters for the creation of sharps."
  (thickness 0.5 "Stroke thickness.")
  (size 1 "Overall size of the sharp. Length of one side (they are always square-shaped) in proportion to the distance between two staff-lines.")
  (double-p t "nil if only two lines are used, t if four lines are used.")
  (x-offset 18 "Horizontal distance between lines."))

(define-setzkasten-class component-flat (component)
  "Parameters for the creation of flats."
  (thickness-circle 0.8 "Stroke thickness of the semi circle.")
  (thickness-stem-bottom 0.8 "Stroke thickness at the lower end of the stem.")
  (thickness-stem-top 1.2 "Stroke thickness at the upper end of the stem, in proportion to the stem thickness at the lower end.")
  (stem-length 2.2 "Length of the stem, from above the semi circle to the upper end of the stem, proportional to the distance between staff lines.")
  (diameter 1 "Diameter of the semi circle, in proportion to distance between lines."))

(define-setzkasten-class component-bequadro (component)
  "Parameters for the appearance of the 'natural' sign."
  (thickness 1 "Stroke thickness of all lines.")
  (x-offset 6 "Distance between centerline and vertical strokes.")
  (y-offset 6 "Distance between centerline and horizontal strokes.")
  (stem-length 2.5 "Length of the vertical legs, proportional to `distance-between-lines'."))

(define-setzkasten-class component-c-clef (component)
  "Parameters for the creation of c-clefs."
  (vertical-thickness 18 "Stroke thickness of the three vertical lines.")
  (horizontal-thickness 12 "Stroke thickness of the four horizontal lines.")
  (short-leg-thickness 10 "Thickness of the short vertical legs.")
  (rectangle-height 0.7 "Height of the two rectangles, in proportion to the distance between two staff lines.")
  (rectangle-width 1.5 "Width of the two rectangles, in proportion to their height.")
  (length-long-leg 2.2 "Length of the longest leg, in proportion to the space between staff lines.")
  (length-middle-leg 1 "Length of the top left leg (usually medium length), in proportion to the space between staff lines.")
  (length-short-leg 0.8 "Length of the two short legs, in proportion to the space between staff lines."))

(define-setzkasten-class component-g-clef (component)
  "Parameters for the creation of g-clefs."
  ;; TODO implement this properly, for now this only creates the text letter 'G'
  (font-size 15 "Size of the letter 'G'. This needs to be changed once a proper implementation of a G clef is available."))

(define-setzkasten-class component-digit-arc (component)
  "Parameters for the creation of half moon shapes to draw 3 and 2 digits."
  (outer-diameter 0.8 "Diameter of the outer line of the arc, in proportion to the space between staff lines.")
  (thickness 4 "Thickness in the center of the arc."))

(define-setzkasten-class component-barline (component)
  "Parameters for the creation of bar lines."
  (overhead 0.2 "Overhead length above and below staff, in proportion to the space between two staff lines.")
  (thickness 2 "Stroke thickness."))

(define-setzkasten-class component-custos (component)
  "Parameters for the creation of a custos symbol."
  (total-width 8 "Width of the whole shape.")
  (body-height 3 "Height of the wiggly line.")
  (tail-length 12 "Length of the tail.")
  (thickness 8 "Stroke width."))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; containers to group components into glyphs ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; TODO replace all 'type' with 'glyph'

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
;;     - glyph-dot

(define-setzkasten-class glyph ()
  "Specification of an empty type, only holding the meta information for the creation of SVG data."
  (glyph-width 350 "Width of type.")
  (glyph-height 1500 "Height of type.")
  (id "blank-type" "String that is used as main part of the file name for writing the SVG data to disk.")
  (ink-color "black" "Color used for the production of SVG data.")
  (svg-data nil "Container for the SVG object (created by cl-svg)."))

(define-setzkasten-class glyph-blind (glyph)
  "Empty glyph, for blind space.")

(define-setzkasten-class glyph-staff (glyph)
  "Specification for the creation of staff lines, either to be used as a blank type, or to be combined with other typographical elements (subclasses of glyph-staff)."
  (staff-component nil "Instance of glyph. If nil, an empty type will be produced."))

(define-setzkasten-class glyph-notehead (glyph-staff)
  "Specification of a type containing a notehead. For enharmonic dots, stems and fans see subclasses."
  (notehead-position 5 "Vertical position of notehead, 0 for below bottom line, 10 for above top line.")
  (notehead-component nil "Instance of component-notehead."))

(define-setzkasten-class glyph-notehead-dot (glyph-notehead)
  "Specification for the casting of an enharmonic dot, as a subcomponent of a notehead."
  (dot-alignment :center "'center for centered above, 'left for flush above the left edge of the notehead, 'right for flush above the right edge of the notehead. Left and  right are used for enharmonic ligatures.")
  (dot-above-staff nil "T if dot is placed above top staff line, nil if dot is placed just above the notehead.")
  (dot-above-staff-offset 1 "Vertical offset proportional to distance between staff lines in case 'dot-above-staff' is T.")
  (dot-component nil "Instance of component-dot. If nil, no dot will be generated.")
  (dot-staff-position-correction nil "nil if standard behaviour is requested, otherwise vertical correction of staffposition."))

(define-setzkasten-class glyph-notehead-stem (glyph-notehead-dot)
  "Specification for the casting of a note stem, as a subcomponent of a notehead with an optional enharmonic dot."
  (stem-component nil "Instance of component-stem. If nil, no stem will be generated.")
  (dot-above-stem-offset 1 "Distance between end of stem and enharmonic dot, proportional to distance between lines.")
  (stem-direction :up "Direction of stem: :up or :down."))

(define-setzkasten-class glyph-notehead-flag (glyph-notehead-stem)
  "Specification for the casting of a stem, as a subcomponent of a note stem."
  (flag-component nil "Instance of component-flag. If nil, no flag will be generated."))

(define-setzkasten-class glyph-meter (glyph-staff)
  "Specification of a type with a meter signature."
  (tempus-component nil)
  (prolatio-component nil)
  (diminutio-component nil)
  (prolatio-horizontal-offset 0 "Horizontal offset of the dot, in distance-between-lines.")
  (diminutio-horizontal-offset 0 "Horizontal offset of the line, in distance-between-lines.")
  (diminutio-vertical-offset 0 "Vertical offset of the line, in distance-between-lines."))

(define-setzkasten-class glyph-rest (glyph-staff)
  "Specification of a type containing a rest."
  (rest-position 5 "Position of the starting point of the rest. Needs to be a line (only 1 3 5 7 9 are valid positions).")
  (rest-direction :up "':up' or ':down', indicates the direction of the rest sign, starting on the line specified with 'rest-position'.")
  (rest-component nil "Instance of component-rest. If nil, an empty staff type will be produced."))

(define-setzkasten-class glyph-sharp (glyph-staff)
  "Specification of a type containing a sharp."
  (sharp-position 5 "Position of the sharp within the staff.")
  (sharp-component nil "Instance of component-sharp. If nil, an empty staff type will be produced."))

(define-setzkasten-class glyph-flat (glyph-staff)
  "Specification of a type containing one or two flats."
  (flat-position 5 "Position of the flat within the staff.")
  (second-flat-position nil "Position of an optional second flat. If nil, only one flat will be produced.")
  (flat-component nil "Instance of component-flat. If nil, an empty staff type will be produced.")
  (mirrored-p nil "T for flats pointing left."))

(define-setzkasten-class glyph-bequadro (glyph-staff)
  "Specification of a glyph containing a 'natural' sign."
  (sign-position 5 "Position of the bequadro within the staff.")
  (bequadro-component nil "Instance of component-bequadro."))

(define-setzkasten-class glyph-c-clef (glyph-staff)
  "Specification of a type containing a c-clef."
  (clef-position 5 "Position of the clef.")
  (clef-component nil "Instance of component-c-clef. In nil, an empty staff will be produced."))

(define-setzkasten-class glyph-g-clef (glyph-staff)
  "Specification of a type containing a g-clef."
  (clef-position 5 "Position of the clef.")
  (clef-component nil "Instance of component-g-clef. In nil, an empty staff will be produced."))

(define-setzkasten-class glyph-f-clef-part (glyph-staff)
  "Specification of a type containing the right part of an f-clef double-type."
  (clef-position 7 "Position of the F pitch (7 for a standard bass clef).")
  (notehead-component nil "Instance of component-notehead. Two noteheads will be produced, above and below clef-position.")
  (stem-component nil "Instance of component-stem. This special stem points downwards unlike normal note stems."))

(define-setzkasten-class glyph-barline (glyph-staff)
  "Specification of a type containig a singe or double barline, with optional two or four dots on one or both sides."
  (double-distance nil "Horizontal distance between the two lines in case of a double barline. If nil, a single barline will be produced.")
  (barline-component nil "Instance of component-barline. If nil, an empty staff will be produced.")
  (dot-distance nil "Distance between barline and dots.")
  (number-of-dots 0 "Number of dots, left or right of the barline(s). 0, 2 or 4 are accepted.")
  (dot-placement nil "'right for only right of barline(s), 'left for only left of barline(s), or 'both.")
  (dot-component nil "Instance of component-dot, optional."))

(define-setzkasten-class glyph-dot (glyph-staff)
  "Specification of a glyph containing staff lines and a dot."
  (dot-position 5 "Staff position of dot.")
  (dot-component nil "Instance of `component-dot'."))

(define-setzkasten-class glyph-digit-arc (glyph-staff)
  "Specification of a glyph containing arc-based digits."
  (list-of-arc-components nil "List of instances of arc-components.")
  (list-of-arc-positions nil "List of staff line positions.")
  (list-of-directions nil "List of direction flags, :up or :down."))

(define-setzkasten-class glyph-custos (glyph-staff)
  "Specification of a glyph containing a custos."
  (custos-component nil "Instance of custos component.")
  (staff-position 5 "Position of custos."))
