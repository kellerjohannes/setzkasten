;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; family of casting methods, to produce SVG output for each type container ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; TODO update docstrings for new terminology (type / glyph / instance / component)
;; TODO add logfile output support
;; TODO outsource generic helper functions
;; TODO stem-casting: swap h-center with x-center-stem

(in-package :setzkasten)



;;; Macro corner, will be outsourced
(defmacro transform-coordinates (transformation argument &rest coordinates)
  "Applies a vector transformation (currently only vec:mirror-x, vec:mirror-y and vec:mirror-dot) to a set of vectors (vec:create). Destructive, uses 'setf' to overwrite the coordinates."
  `(progn ,@(mapcar (lambda (vec)
                      `(setf ,vec (funcall ,transformation ,vec ,argument)))
                    coordinates)))





(defgeneric cast (glyph)
  (:documentation
   "Creates SVG files for any sort of type by calling the :around-method to create and close the SVG context and the applicable methods to generate the SVG paths of the types' components."))


;;; container, svg stuff, wraps :around casting methods that generate svg code

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



(defmethod calculate-x-pos ((stencil glyph))
  "Returns the vertical center line of a glyph."
  (* 0.5 (glyph-width stencil)))

;;; staff lines

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
  (with-accessors ((dist distance-between-lines)
                   (num-lines number-of-lines))
      (staff-component stencil)
    (let ((pos-0 (- (v-center stencil) (* dist (+ 0.5 (* 0.5 (1- num-lines)))))))
      (+ pos-0 (* 0.5 dist (inverse-staff-position stencil staff-position))))))

(defun find-next-space-above (staff-position number-of-lines)
  "Returns the staff position of the next available space above a notehead position."
  (let ((result (+ 2 staff-position)))
    (if (and (oddp result) (< staff-position (- (* number-of-lines 2) 1)))
        (1+ result)
        result)))

(defmethod cast ((stencil glyph-staff))
  "Generates SVG data for staff lines, vertically centered."
  (with-accessors ((num-lines number-of-lines)
                   (thickness thickness)
                   (offset offset)
                   (linecap endings))
      (staff-component stencil)
    (loop repeat num-lines
          for staff-pos from 1 by 2
          do (let ((y (calculate-absolute-staff-position stencil staff-pos)))
               (push (output-line offset y (- (glyph-width stencil) offset) y thickness linecap)
                     (svg-data stencil))))))



;;; notehead

(defmethod draw-notehead-square ((component component-notehead)
                                 center-x center-y width height unit-length color)
  "Generates SVG data for a square shaped notehead, black or white notation."
  (with-accessors ((bold-stroke bold-stroke)
                   (light-stroke light-stroke)
                   (black black))
      component
    (let* ((w-2 (* 0.5 width))
           (h-2 (* 0.5 height))
           (d-2 (* 0.5 unit-length))
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
          (output-path `("fill-rule" "evenodd" "fill" ,color)
                       `((m ,a) (l ,b) (l ,c) (l ,d)
                         (l ,e) (l ,f) (l ,g) (l ,h) (l ,i) (l ,j) (l ,k) (l ,l) (c)))
          (let* ((m (vec:add k (vec:create 0 bold-stroke)))
                 (n (vec:mirror-y m center-y))
                 (o (vec:mirror-dot m center))
                 (p (vec:mirror-x m center-x)))
            (output-path `("fill-rule" "evenodd" "fill" ,color)
                         `((m ,a) (l ,b) (l ,c) (l ,d)
                           (l ,e) (l ,f) (l ,g) (l ,h) (l ,i) (l ,j) (l ,k) (l ,l) (c)
                           (m ,m) (l ,n) (l ,o) (l ,p) (c))))))))


(defmethod draw-notehead-diamond ((component component-notehead)
                                  center-x center-y width height color)
  "Generates SVG data for a diamond shaped notehead, black or white notation."
  (with-accessors ((bold-stroke bold-stroke)
                   (light-stroke light-stroke)
                   (black black))
      component
    (let* ((a (vec:create center-x (+ center-y (* 0.5 height))))
           (b (vec:create (- center-x (* 0.5 width)) center-y))
           (c (vec:create center-x (- center-y (* 0.5 height))))
           (d (vec:create (+ center-x (* 0.5 width)) center-y)))
      (if black
          (output-path `("fill-rule" "evenodd" "fill" ,color)
                       `((m ,a) (l ,b) (l ,c) (l ,d) (c)))
          (let* ((center (vec:create center-x center-y))
                 (e (vec:add a (vec:add (vec:scale (vec:unit-vector a b) light-stroke)
                                        (vec:scale (vec:unit-vector a d) bold-stroke))))
                 (f (vec:add b (vec:add (vec:scale (vec:unit-vector b a) light-stroke)
                                        (vec:scale (vec:unit-vector a d) bold-stroke))))
                 (g (vec:add center (vec:subtract center e)))
                 (h (vec:add center (vec:subtract center f))))
            (output-path `("fill-rule" "evenodd" "fill" ,color)
                         `((m ,a) (l ,b) (l ,c) (l ,d) (c)
                           (m ,e) (l ,f) (l ,g) (l ,h) (c))))))))

(defmethod calculate-notehead-height ((component component-notehead) unit-length)
  "Returns the vertical height of a notehead, including the overhead value."
  (with-accessors ((overhead length-over-line))
      component
    (+ unit-length (* 2 overhead unit-length))))

(defmethod cast ((stencil glyph-notehead))
  "Generates SVG data for a notehead."
  (with-accessors ((oblique-p oblique-p)
                   (width width))
      (notehead-component stencil)
    (let* ((x (h-center stencil))
           (y (calculate-absolute-staff-position stencil (notehead-position stencil)))
           (h (calculate-notehead-height (notehead-component stencil)
                                         (distance-between-lines (staff-component stencil))))
           (w (* width h)))
      (if oblique-p (push (draw-notehead-diamond (notehead-component stencil)
                                                 x y w h
                                                 (ink-color stencil))
                          (svg-data stencil))
          (push (draw-notehead-square (notehead-component stencil)
                                      x y w h
                                      (distance-between-lines (staff-component stencil))
                                      (ink-color stencil))
                (svg-data stencil)))))
  (call-next-method))



;;; enharmonic dot

(defmethod calculate-x-pos ((stencil glyph-notehead-dot))
  "Returns the absolute x coordinate for an enharmonic dot, aligned to the notehead."
  (let ((center-x (h-center stencil))
        (h-w (* 0.5 (width (notehead-component stencil))
                (calculate-notehead-height (notehead-component stencil)
                                           (distance-between-lines (staff-component stencil))))))
    (case (dot-alignment stencil)
      (:center center-x)
      (:right (+ center-x h-w))
      (:left (- center-x h-w)))))

(defmethod calculate-y-position ((stencil glyph-notehead-dot))
  "Returns y-coordinate of the center point of an enharmonic dot. There are 3 cases:
   - above the stave lines, in case (dot-above-staff stencil) is T
   - in the space above the notehead without a stem or a :down stem
   - in the space above the end of an :up stem"
  (let ((type (type-of stencil)))
    (with-accessors ((unit-length distance-between-lines)
                     (number-of-lines number-of-lines))
        (staff-component stencil)
      (with-accessors ((notehead-position notehead-position)
                       (dot-staff-position-correction dot-staff-position-correction))
          stencil
        (cond ((dot-above-staff stencil)
               (calculate-absolute-staff-position
                stencil
                (+ (dot-above-staff-offset stencil) (* 2 number-of-lines))))
              ((or (not (eq type 'glyph-notehead-stem))
                   (and (eq type 'glyph-notehead-stem)
                        (eq (stem-direction stencil) :down)))
               (calculate-absolute-staff-position
                stencil
                (+ (find-next-space-above notehead-position number-of-lines)
                   (if dot-staff-position-correction dot-staff-position-correction 0))))
              ((eq type 'glyph-notehead-stem)
               (- (- (calculate-absolute-staff-position stencil notehead-position)
                     (* 0.5 (calculate-notehead-height
                             (notehead-component stencil)
                             (distance-between-lines (staff-component stencil))))
                     (* unit-length (stem-length (stem-component stencil))))
                  (* (dot-above-stem-offset stencil) unit-length)))
              (t 0))))))

(defun draw-dot (center-x center-y width color)
  (let ((width-2 (* 0.5 width)))
    (let ((a (vec:create center-x (+ center-y width-2)))
          (b (vec:create (- center-x width-2) center-y))
          (c (vec:create center-x (- center-y width-2)))
          (d (vec:create (+ center-x width-2) center-y)))
      (output-path `("fill" ,color)
                   `((m ,a) (l ,b) (l ,c) (l ,d) (c))))))

(defun draw-comma (center-x center-y size color)
  (output-text center-x center-y "," size nil color t))

(defmethod cast ((stencil glyph-notehead-dot))
  "Generates SVG data for an enharmonic dot above a notehead."
  (when (dot-component stencil)
    (let* ((center-x (calculate-x-pos stencil))
           (center-y (calculate-y-position stencil))
           (width (* (size (dot-component stencil))
                     (distance-between-lines (staff-component stencil)))))
      (push (if (eq (shape (dot-component stencil)) :dot)
                (draw-dot center-x center-y width (ink-color stencil))
                (draw-comma center-x center-y
                            (size (dot-component stencil))
                            (ink-color stencil)))
            (svg-data stencil))))
  (call-next-method))



;;; stem

(defmethod draw-stem ((component component-stem)
                      unit-length h-center y-position y-offset stem-direction color)
  (with-accessors ((stem-length stem-length)
                   (width-head width-head)
                   (width-tail width-tail))
      component
    (let* ((stem-length-absolute (* stem-length unit-length))
           (width-tail-absolute (* width-head width-tail))
           (x-center h-center)
           (direction-operator (if (eq stem-direction :up) #'- #'+))
           (y-head (funcall direction-operator y-position y-offset))
           (a (vec:create (- x-center (* 0.5 width-head)) y-head))
           (b (vec:create (+ x-center (* 0.5 width-head)) y-head))
           (c (vec:create (+ x-center (* 0.5 width-tail-absolute))
                          (funcall direction-operator y-head stem-length-absolute)))
           (d (vec:create (- x-center (* 0.5 width-tail-absolute))
                          (funcall direction-operator y-head stem-length-absolute))))
      (output-path `("fill" ,color)
                   `((m ,a) (l ,b) (l ,c) (l ,d) (c))))))

(defmethod calculate-x-stem-position ((stencil glyph-notehead-stem))
  (let ((unit-length (distance-between-lines (staff-component stencil))))
    (if (oblique-p (notehead-component stencil))
        (h-center stencil)
        (+ (h-center stencil)
           (- (* 0.5
                 (calculate-notehead-height (notehead-component stencil) unit-length)
                 (width (notehead-component stencil)))
              (* 0.5 (light-stroke (notehead-component stencil))))))))

(defmethod cast ((stencil glyph-notehead-stem))
  (let ((unit-length (distance-between-lines (staff-component stencil))))
    (push (draw-stem (stem-component stencil)
                     unit-length
                     (calculate-x-stem-position stencil)
                     (calculate-absolute-staff-position stencil (notehead-position stencil))
                     (* 0.5 (calculate-notehead-height (notehead-component stencil) unit-length))
                     (stem-direction stencil)
                     (ink-color stencil))
          (svg-data stencil)))
  (call-next-method))


;;; flag


;; TODO move to macro corner
(defmacro transform-coordinates (transformation argument &rest coordinates)
  "Applies a vector transformation (currently only vec:mirror-x,
   vec:mirror-y and vec:mirror-dot) to a set of vectors (vec:create).
   Destructive, uses 'setf' to overwrite the coordinates."
  `(progn ,@(mapcar (lambda (vec)
                      `(setf ,vec (funcall ,transformation ,vec ,argument)))
                    coordinates)))

(defmethod cast ((stencil glyph-notehead-flag))
  "Generates SVG data for a note stem flag."
  (with-accessors ((thickness-bold flag-thickness-bold)
                   (thickness-light flag-thickness-light)
                   (corner-level flag-corner-level)
                   (merge-level flag-merge-level)
                   (tailp flag-tail-p)
                   (tail-level flag-tail-level)
                   (y-offset flag-y-offset))
      (flag-component stencil)
    (with-accessors ((unit-length distance-between-lines))
        (staff-component stencil)
      (with-accessors ((stem-width-factor width-tail)
                       (stem-width-head width-head))
          (stem-component stencil)
        (let* ((stem-length (* (stem-length (stem-component stencil)) unit-length))
               (notehead-y (calculate-absolute-staff-position stencil (notehead-position stencil)))
               (m (vec:create (h-center stencil)
                              (- notehead-y
                                 (* 0.5 (calculate-notehead-height
                                         (notehead-component stencil)
                                         (distance-between-lines (staff-component stencil))))
                                 stem-length)))
               (n (vec:create (h-center stencil)
                              (+ (vec:y-coord m) (* merge-level stem-length))))
               (a (vec:add m (vec:create (* 0.5 stem-width-factor stem-width-head) 0)))
               (b (vec:create (+ (h-center stencil) (* unit-length y-offset))
                              (+ (vec:y-coord m) (* corner-level stem-length))))
               (alpha (vec:sin-between-vectors (vec:subtract b a) (vec:create 1 0)))
               (h (vec:add a (vec:create (- (vec:hypothenuse-a-o alpha thickness-bold))
                                         0)))
               (c (vec:create (+ (h-center stencil)
                                 (vec:triangular-proportion (vec:len (vec:subtract m a))
                                                            (* 0.5 stem-width-head)
                                                            stem-length
                                                            (vec:len (vec:subtract n m))))
                              (vec:y-coord n)))
               (beta (vec:sin-between-vectors (vec:subtract b c) (vec:create 1 0)))
               (f (vec:add c (vec:create (- (vec:hypothenuse-a-o beta thickness-light))
                                         0)))
               (d (vec:create (vec:x-coord b) (+ (vec:y-coord c)
                                                 (- (vec:y-coord c) (vec:y-coord b)))))
               (e (vec:add d (vec:subtract f c)))
               (o (vec:add b (vec:subtract h a)))
               (g (vec:add o (vec:scale (vec:unit-vector h o)
                                        (- (second (vec:trigo-asa (asin alpha)
                                                                  (vec:len (vec:subtract a h))
                                                                  (asin beta)))
                                           thickness-light)))))
          (when (eq (stem-direction stencil) :down)
            (transform-coordinates #'vec:mirror-y notehead-y a b c d e f g h))
          ;; (push (output-debug-circle b) (svg-data stencil)) ; only for debugging
          (if tailp
              (push (output-path `("fill" ,(ink-color stencil))
                                 `((m ,a) (l ,b) (l ,c) (l ,d) (l ,e) (l ,f)
                                   (l ,g) (l ,h) (c)))
                    (svg-data stencil))
              (push (output-path `("fill" ,(ink-color stencil))
                                 `((m ,a) (l ,b) (l ,c) (l ,f) (l ,g) (l ,h) (c)))
                    (svg-data stencil)))))))
  (call-next-method))




;; rest

(defmethod cast ((stencil glyph-rest))
  "Generates SVG data for a rest."
  (with-accessors ((horizontal-length horizontal-length)
                   (horizontal-thickness horizontal-thickness)
                   (vertical-length vertical-length)
                   (vertical-thickness vertical-thickness))
      (rest-component stencil)
    (with-accessors ((rest-position rest-position)
                     (rest-direction rest-direction))
        stencil
      (with-accessors ((unit-length distance-between-lines))
          (staff-component stencil)
        (let* ((a (vec:create (+ (h-center stencil) (* 0.5 vertical-thickness))
                              (calculate-absolute-staff-position stencil rest-position)))
               (b (vec:add a (vec:create 0 (* vertical-length unit-length))))
               (c (vec:add b (vec:create (* (abs horizontal-length) unit-length) 0)))
               (d (vec:add c (vec:create 0 horizontal-thickness)))
               (e (vec:add d (vec:create (- (+ vertical-thickness
                                               (* (abs horizontal-length) unit-length)))
                                         0)))
               (f (vec:add a (vec:create (- vertical-thickness) 0))))
          (when (eq rest-direction :up)
            (transform-coordinates #'vec:mirror-y
                                   (calculate-absolute-staff-position stencil rest-position)
                                   a b c d e f))
          (when (< horizontal-length 0)
            (transform-coordinates #'vec:mirror-x
                                   (h-center stencil)
                                   a b c d e f))
          (push (output-path `("fill" ,(ink-color stencil))
                             (if (zerop horizontal-length)
                                 `((m ,a) (l ,b) (l ,e) (l ,f) (c))
                                 `((m ,a) (l ,b) (l ,c) (l ,d) (l ,e) (l ,f) (c))))
                (svg-data stencil))))))
  (call-next-method))



;; sharp

(defun apply-x-offset (v offset)
  (vec:add v (vec:create offset 0)))

(defmacro offset-line (vec1 vec2 x-offset)
  `(output-line-vec (apply-x-offset ,vec1 ,x-offset)
                    (apply-x-offset ,vec2 ,x-offset)
                    line-thickness "round"))

(defmethod cast ((stencil glyph-sharp))
  "Generates SVG data for a sharp sign."
  (with-accessors ((line-thickness thickness)
                   (sharp-size size)
                   (double-p double-p)
                   (offset x-offset))
      (sharp-component stencil)
    (with-accessors ((unit-length distance-between-lines))
        (staff-component stencil)
      (let* ((y-center (calculate-absolute-staff-position stencil (sharp-position stencil)))
             (a (vec:create (+ (h-center stencil) (* 0.5 unit-length sharp-size))
                            (- y-center (* 0.5 unit-length sharp-size))))
             (b (vec:mirror-y a y-center))
             (c (vec:mirror-dot a (vec:create (h-center stencil) y-center)))
             (d (vec:mirror-x a (h-center stencil))))
        (cond (double-p (push (offset-line a c (* -0.5 offset)) (svg-data stencil))
                        (push (offset-line b d (* -0.5 offset)) (svg-data stencil))
                        (push (offset-line a c (* 0.5 offset)) (svg-data stencil))
                        (push (offset-line b d (* 0.5 offset)) (svg-data stencil)))
              (t (push (output-line-vec a c line-thickness "round") (svg-data stencil))
                 (push (output-line-vec b d line-thickness "round") (svg-data stencil)))))))
  (call-next-method))


;; flat

(defmethod draw-flat ((stencil glyph-flat) staff-position)
  (with-accessors ((circle-diameter diameter)
                   (thickness-circle thickness-circle)
                   (thickness-bottom thickness-stem-bottom)
                   (thickness-top thickness-stem-top)
                   (stem-length stem-length))
      (flat-component stencil)
    (with-accessors ((unit-length distance-between-lines))
        (staff-component stencil)
      (let* ((r (* 0.4 unit-length circle-diameter))
             (stem-x (- (h-center stencil) r))
             (y-center (calculate-absolute-staff-position stencil staff-position))
             (a (vec:create (- stem-x (* 0.5 thickness-bottom))
                            (+ y-center r)))
             (b (vec:add a (vec:create thickness-bottom 0)))
             (c (vec:create (+ stem-x (* 0.5 thickness-bottom thickness-top))
                            (- (vec:y-coord b) (* stem-length unit-length))))
             (d (vec:add c (vec:create (* -1.5 thickness-bottom thickness-top) 0)))
             (e (vec:create stem-x (vec:y-coord a))))
        (when (mirrored-p stencil)
          (transform-coordinates #'vec:mirror-x (h-center stencil) a b c d e))
        (push (output-path `("fill" ,(ink-color stencil))
                           `((m ,a) (l ,b) (l ,c) (l ,d) (c)))
              (svg-data stencil))
        (push (output-path `("stroke" ,(ink-color stencil)
                                      "fill" "none"
                                      "stroke-width" ,(format nil "~s" thickness-circle)
                                      "stroke-linecap" "round")
                           `((m ,e) (a ,(* 1.2 r) ,(* 1.2 r) 0 1
                                       ,(if (mirrored-p stencil) 1 0)
                                       ,(vec:x-coord e)
                                       ,(- (vec:y-coord e) (* 2 r)))))
              (svg-data stencil))))))

(defmethod cast ((stencil glyph-flat))
  "Generates SVG data for a flat sign."
  (draw-flat stencil (flat-position stencil))
  (when (second-flat-position stencil)
    (draw-flat stencil (second-flat-position stencil)))
  (call-next-method))


;; f-clef

(defmethod cast ((stencil glyph-f-clef-part))
  "Generates SVG data for the right part of a f-clef."
  (let* ((unit-length (distance-between-lines (staff-component stencil)))
         (h (calculate-notehead-height (notehead-component stencil) unit-length)))
    (mapc (lambda (position-delta)
            (push (draw-notehead-diamond (notehead-component stencil)
                                         (h-center stencil)
                                         (calculate-absolute-staff-position
                                          stencil (+ position-delta (clef-position stencil)))
                                         (* (width (notehead-component stencil)) h)
                                         h
                                         (ink-color stencil))
                  (svg-data stencil)))
          '(1 -1))
    (push (draw-stem (stem-component stencil)
                     unit-length
                     (h-center stencil)
                     (calculate-absolute-staff-position stencil (1+ (clef-position stencil)))
                     (calculate-notehead-height (notehead-component stencil) unit-length)
                     :down
                     (ink-color stencil))
          (svg-data stencil)))
  (call-next-method))



(defmethod cast ((stencil glyph-c-clef))
  (with-accessors ((ta vertical-thickness)
                   (td horizontal-thickness)
                   (tc short-leg-thickness)
                   (ahr rectangle-height)
                   (awr rectangle-width)
                   (ala length-long-leg)
                   (alb length-middle-leg)
                   (alc length-short-leg))
      (clef-component stencil)
    (with-accessors ((ul distance-between-lines))
        (staff-component stencil)
      (let* ((hr (* ahr ul))
            (wr (* awr hr))
            (la (* ala ul))
            (lb (* alb ul))
            (lc (* alc ul)))
        (let* ((hc (calculate-absolute-staff-position stencil (clef-position stencil)))
               (a (vec:create (- (h-center stencil) (* 0.5 (+ ta wr))) (- hc ul lb)))
               (b (vec:add a (vec:create 0 (+ lb ul ul la))))
               (c (vec:add b (vec:create ta 0)))
               (d (vec:add c (vec:create 0 (- la))))
               (e (vec:add d (vec:create (- wr tc) 0)))
               (f (vec:add e (vec:create 0 lc)))
               (g (vec:add f (vec:create tc 0)))
               (h (vec:add g (vec:create 0 (- (+ lc hr)))))
               (i (vec:add h (vec:create (- wr) 0)))
               (j (vec:mirror-y i hc))
               (k (vec:mirror-y h hc))
               (l (vec:mirror-y g hc))
               (m (vec:mirror-y f hc))
               (n (vec:mirror-y e hc))
               (o (vec:mirror-y d hc))
               (p (vec:add c (vec:create 0 (- (+ la ul ul lb)))))
               (q (vec:add d (vec:create 0 (- td))))
               (r (vec:add q (vec:create (- wr tc) 0)))
               (s (vec:add r (vec:create 0 (- (- hr td td)))))
               (tt (vec:add s (vec:create (- (- wr tc)) 0)))
               (u (vec:mirror-y tt hc))
               (v (vec:mirror-y s hc))
               (w (vec:mirror-y r hc))
               (x (vec:mirror-y q hc)))
          (push (output-path `("fill-rule" "evenodd" "color" ,(ink-color stencil))
                             `((m ,a) (l ,b) (l ,c) (l ,d) (l ,e) (l ,f) (l ,g)
                               (l ,h) (l ,i) (l ,j) (l ,k) (l ,l) (l ,m) (l ,n)
                               (l ,o) (l ,p) (c)
                               (m ,q) (l ,r) (l ,s) (l ,tt) (c)
                               (m ,u) (l ,v) (l ,w) (l ,x) (c)))
                (svg-data stencil))))))
  (call-next-method))


;; barline

(defmethod cast ((stencil glyph-barline))
  "Generates SVG data for a barline."
  (with-accessors ((double-distance double-distance))
      stencil
    (let* ((ul (distance-between-lines (staff-component stencil)))
           (y-bottom (+ (* (overhead (barline-component stencil)) ul)
                        (calculate-absolute-staff-position stencil 1)))
           (y-top (- (calculate-absolute-staff-position stencil
                      (1- (* 2 (number-of-lines (staff-component stencil)))))
                     (* (overhead (barline-component stencil)) ul))))
      (mapc (lambda (x-position)
              (push (output-line x-position y-bottom x-position y-top
                                 (thickness (barline-component stencil)) "square")
                    (svg-data stencil)))
            (if (zerop double-distance)
                (list (h-center stencil))
                (list (+ (h-center stencil) (* 0.5 double-distance))
                      (- (h-center stencil) (* 0.5 double-distance)))))
      (when (> (number-of-dots stencil) 0)
        (mapc (lambda (x-position)
                (mapc (lambda (y-position)
                        (push (draw-dot x-position
                                        y-position
                                        (* (size (dot-component stencil)) ul)
                                        (ink-color stencil))
                              (svg-data stencil)))
                      (mapcar (lambda (m)
                                (calculate-absolute-staff-position stencil m))
                              (let ((center-position (number-of-lines (staff-component stencil))))
                                (loop for i from (1+ center-position) by 2
                                      for j downfrom (1- center-position) by 2
                                      repeat (floor (number-of-dots stencil) 2)
                                      collect i collect j)))))
              (let ((offset (if (zerop double-distance)
                                (dot-distance stencil)
                                (+ (* 0.5 double-distance) (dot-distance stencil)))))
                (mapcar (lambda (offset-operator)
                          (funcall offset-operator (h-center stencil) offset))
                        (case (dot-placement stencil)
                          (:right (list #'+))
                          (:left (list #'-))
                          (:both (list #'+ #'-)))))))))
  (call-next-method))


;; dot (generic, to be used as rhythmic dots)

(defmethod cast ((stencil glyph-dot))
  "Generates SVG data for a rhythmic dot."
  (push (draw-dot (calculate-x-pos stencil)
                  (calculate-absolute-staff-position stencil (dot-position stencil))
                  (* (size (dot-component stencil))
                     (distance-between-lines (staff-component stencil)))
                  (ink-color stencil))
        (svg-data stencil))
  (call-next-method))



;; bequadro

(defmethod draw-bequadro ((stencil glyph) x-offset y-offset stem-length)
  (with-accessors ((thickness thickness))
      (bequadro-component stencil)
    (let* ((x-origin (calculate-x-pos stencil))
           (y-origin (calculate-absolute-staff-position stencil (sign-position stencil)))
           (origin (vec:create x-origin y-origin))
           (helper (- x-origin x-offset))
           (a (vec:create helper (+ y-origin y-offset)))
           (b (vec:create helper (- y-origin y-offset)))
           (c (vec:add a (vec:create 0 (- stem-length))))
           (d (vec:mirror-dot a origin))
           (e (vec:mirror-dot b origin))
           (f (vec:mirror-dot c origin)))
      (concatenate 'string
                   (output-line-vec a c thickness "round")
                   (output-line-vec a e thickness "round")
                   (output-line-vec b d thickness "round")
                   (output-line-vec d f thickness "round")))))

(defmethod cast ((stencil glyph-bequadro))
  "Generates SVG data for a 'natural sign'."
  (push (draw-bequadro stencil
                       (x-offset (bequadro-component stencil))
                       (y-offset (bequadro-component stencil))
                       (* (distance-between-lines (staff-component stencil))
                          (stem-length (bequadro-component stencil))))
        (svg-data stencil))
  (call-next-method))

(defmethod draw-tempus ((stencil glyph-meter))
  (let ((y (calculate-absolute-staff-position
            stencil
            (number-of-lines (staff-component stencil))))
        (r (* 1/2
              (- (* (distance-between-lines (staff-component stencil))
                    (diameter (tempus-component stencil)))
                 (thickness (tempus-component stencil)))))
        (angle-2 (* 1/2 (- 360 (opening-angle (tempus-component stencil))))))
    (if (zerop (opening-angle (tempus-component stencil)))
        (output-circle (h-center stencil)
                       y
                       r
                       (ink-color stencil)
                       nil
                       (thickness (tempus-component stencil)))
        (output-arc (h-center stencil)
                    y
                    r
                    (+ 90 angle-2)
                    (- 90 angle-2)
                    (ink-color stencil)
                    nil
                    (thickness (tempus-component stencil))))))

(defmethod draw-prolatio ((stencil glyph-meter))
  (output-circle (+ (h-center stencil)
                    (* (prolatio-horizontal-offset stencil)
                       (distance-between-lines (staff-component stencil))))
                 (calculate-absolute-staff-position
                  stencil
                  (number-of-lines (staff-component stencil)))
                 (* (diameter (prolatio-component stencil))
                    (distance-between-lines (staff-component stencil)))
                 (ink-color stencil)))

(defmethod draw-diminutio ((stencil glyph-meter))
  (let* ((x (+ (h-center stencil)
               (* (diminutio-horizontal-offset stencil)
                  (distance-between-lines (staff-component stencil)))))
         (y-top (+ (calculate-absolute-staff-position
                    stencil
                    (number-of-lines (staff-component stencil)))
                   (* 1/2 (line-length (diminutio-component stencil))
                      (distance-between-lines (staff-component stencil)))
                   (- (* (diminutio-vertical-offset stencil)
                         (distance-between-lines (staff-component stencil))))))
         (y-bottom (- y-top
                      (* (line-length (diminutio-component stencil))
                         (distance-between-lines (staff-component stencil))))))
    (output-line x y-top x y-bottom (thickness (diminutio-component stencil)) "square")))

(defmethod cast ((stencil glyph-meter))
  "Generates SVG data for a meter signature."
  (push (draw-tempus stencil)
        (svg-data stencil))
  (when (prolatio-component stencil)
    (push (draw-prolatio stencil)
          (svg-data stencil)))
  (when (diminutio-component stencil)
    (push (draw-diminutio stencil)
          (svg-data stencil)))
  (call-next-method))

(defmethod draw-arc ((stencil glyph-digit-arc) instance position direction)
  (let ((radius (* 0.5 (* (distance-between-lines (staff-component stencil))
                          (outer-diameter instance)))))
    (output-arc (- (h-center stencil) (* 0.8 radius))
                (funcall (if (eq direction :down) #'+ #'-)
                         (calculate-absolute-staff-position stencil position)
                         radius)
                radius
                (if (eq direction :down) -30 -10)
                (if (eq direction :down) 190 210)
                "black"
                nil
                (thickness instance)
                "round")))

(defmethod cast ((stencil glyph-digit-arc))
  "Generates SVG data for arc based digits."
  (mapc (lambda (arc-instance staff-position direction-flag)
          (push (draw-arc stencil arc-instance staff-position direction-flag)
                (svg-data stencil)))
        (list-of-arc-components stencil)
        (list-of-arc-positions stencil)
        (list-of-directions stencil))
  (call-next-method))

(defmethod draw-custos ((stencil glyph-custos))
  (let* ((segment-width (/ (total-width (custos-component stencil)) 4))
         (a (vec:create (- (h-center stencil)
                           (* 0.5 (total-width (custos-component stencil))))
                        (- (calculate-absolute-staff-position stencil (staff-position stencil))
                           (* 0.5 (body-height (custos-component stencil))))))
         (b (vec:add a (vec:create segment-width (body-height (custos-component stencil)))))
         (c (vec:add a (vec:create (* 2 segment-width) 0)))
         (d (vec:add b (vec:create (* 2 segment-width) 0)))
         (e (vec:add d (vec:create segment-width (- (tail-length (custos-component stencil)))))))
    (output-path `("fill" "none" "stroke-linecap" "round"
                          "stroke-width" ,(format nil "~a" (thickness (custos-component stencil))))
                 `((m ,a) (l ,b) (l ,c) (l ,d) (l ,e)))))

(defmethod cast ((stencil glyph-custos))
  "Generates SVG data for a custos glyph."
  (push (draw-custos stencil) (svg-data stencil))
  (call-next-method))

;;; BOOKMARK: transcoding until here

;; ;; g-clef

;; (cl-defmethod cast ((type-clef setzkasten/type-clef))
;;        "Generates SVG data for a c- or g-clef."
;;        (insert "\nCasting a c- or g-clef not implemented yet.")
;;        (cl-call-next-method))
