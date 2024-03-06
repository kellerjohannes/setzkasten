(in-package :setzkasten)

(defun toplevel-open (width height id-string)
  (format nil "<?xml version=\"1.0\" standalone=\"no\"?>
<!DOCTYPE svg PUBLIC \"-//W3C//DTD SVG 1.1//EN\" \"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd\">
<svg stroke=\"black\" width=\"~d\" height=\"~d\" viewBox=\"0 0 ~d ~d\" id=~s version=\"1.1\"
    xmlns=\"http://www.w3.org/2000/svg\"
    xmlns:xlink=\"http://www.w3.org/1999/xlink\">"
      (* width 0.5) ; overall scaling
      (* height 0.5) ; overall scaling
      (* width 1.0) ; x scaling of viewBox
      (* height 1.0) ; y scaling of viewBox
      id-string))

(defun output-background (color)
  (format nil "<rect width=\"100%\" height=\"100%\" fill=~s stroke-width=\"0\"/>" color))

(defun toplevel-close ()
  (format nil "</svg>"))

(defun output-svg-symbol-open (id-string)
  (format nil "<g id=~s>" id-string))

(defun output-svg-symbol-close ()
  (format nil "</g>"))

(defun output-use (id-string &key (x nil) (y nil))
  (format nil "<use xlink:href=\"#~a\"~@[ x=\"~d\"~]~@[ y=\"~d\"~]/>"
      id-string x y))

(defun output-circle (x y r color &optional (filledp t) (thickness 5))
  (format nil "<circle cx=\"~d\" cy=\"~d\" r=\"~d\" stroke=~s fill=~s~@[ stroke-width=\"~s\"~] />"
      x y r color (if filledp color "none") thickness))

(defun output-debug-circle (vec)
  (output-circle (vec:x-coord vec) (vec:y-coord vec) 9 "red"))


;; function polarToCartesian(centerX, centerY, radius, angleInDegrees) {
;;   var angleInRadians = (angleInDegrees-90) * Math.PI / 180.0;

;;   return {
;;     x: centerX + (radius * Math.cos(angleInRadians)),
;;     y: centerY + (radius * Math.sin(angleInRadians))
;;   };
;; }

;; function describeArc(x, y, radius, startAngle, endAngle){

;;     var start = polarToCartesian(x, y, radius, endAngle);
;;     var end = polarToCartesian(x, y, radius, startAngle);

;;     var largeArcFlag = endAngle - startAngle <= 180 ? "0" : "1";

;;     var d = [
;;         "M", start.x, start.y,
;;         "A", radius, radius, 0, largeArcFlag, 0, end.x, end.y
;;     ].join(" ");

;;     return d;
;; }

(defun polar->cartesian (center-x center-y radius angle-in-degrees)
  (let ((angle-in-radians (* (- angle-in-degrees 90) (/ (coerce PI 'single-float) 180))))
    (cons (- center-x (* radius (cos angle-in-radians)))
          (+ center-y (* radius (sin angle-in-radians))))))

(defun output-arc (x y r start-angle end-angle color &optional (filledp t) (thickness 5) (linecap nil))
  (let ((start (polar->cartesian x y r end-angle))
        (end (polar->cartesian x y r start-angle))
        (large-arc-flag 1
          ;;(if (<= (- end-angle start-angle) 180) 0 1)
          ))
    (format nil "<path d=\"M ~a ~a A ~a ~a 0 ~a 0 ~a ~a\" stroke=~s stroke-linecap=\"~a\" fill=~s~@[ stroke-width=\"~s\"~] />"
            (car start) (cdr start) r r large-arc-flag (car end) (cdr end) color linecap
            (if filledp color "none")
            thickness)))

(defun make-string-html-compatible (str)
  (regex-replace-all "&" str "&amp;"))


;; TODO extract attributes to function
(defun output-text (x y text-string font-size text-length
                    &key (color "black") (h-center nil) (v-center nil) (rotation 0))
  "`text-length' can be nil, then the argument will be ommited."
  (format nil "<text transform=\"translate(~a,~a) rotate(~a)\" font-size=\"~a\" text-anchor=\"~a\" alignment-baseline=\"~a\"~@[ textLength=\"~a\" ~] font-weight=\"normal\" font-family=\"Times, serif\" font-style=\"normal\" stroke=\"~a\" fill=\"~a\">~a</text>"
      x
      y
      rotation
      font-size
      (if h-center "middle" "left")
      (if v-center "middle" "baseline")
      text-length
      color color
      (make-string-html-compatible text-string)))

(defun output-line (x1 y1 x2 y2 stroke-width stroke-linecap &key (color "black"))
  (format nil "<line x1=\"~d\" y1=\"~d\" x2=\"~d\" y2=\"~d\" stroke=~s stroke-width=\"~d\" stroke-linecap=~s/>"
      x1 y1 x2 y2 color stroke-width stroke-linecap))


(defun output-line-vec (vec1 vec2 stroke-width stroke-linecap &key (color "black"))
  (output-line (vec:x-coord vec1) (vec:y-coord vec1)
               (vec:x-coord vec2) (vec:y-coord vec2)
               stroke-width
               stroke-linecap
               :color color))

(defparameter *path-command-dict* '((l . "L")
                    (lr . "l")
                    (m . "M")
                    (mr . "m")
                    (c . "z")
                    (a . "A")
                    (ar . "a")))

(defun lookup-path-command (shorthand)
  (cdr (assoc shorthand *path-command-dict*)))

(defun output-path (list-of-attributes list-of-commands)
  (format nil "<path ~{~a=~s ~}d=~s />"
      list-of-attributes
      (reduce (lambda (a b) (concatenate 'string a b))
          (mapcar (lambda (command)
                (cond ((eq (first command) 'a)
                   (format nil "~a~{~a ~}"
                       (lookup-path-command (first command))
                       (rest command)))
                  (t (format nil "~a~@[~d ~]~@[~d ~]"
                         (lookup-path-command (first command))
                         (car (second command))
                         (cdr (second
                           command))))))
              list-of-commands))))
