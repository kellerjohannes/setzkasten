(in-package :setzkasten)

(defclass visual-score-backend (setzkasten-backend)
  ())

(defparameter *dict-duration-x-delta*
  '((:maxima t 12)
    (:maxima nil 8)
    (:longa t 6)
    (:longa nil 4)
    (:brevis t 3)
    (:brevis nil 2)
    (:semibrevis t 3/2)
    (:semibrevis nil 1)
    (:minima t 3/4)
    (:minima nil 1/2)
    (:semiminima t 3/8)
    (:semiminima nil 1/4)
    (:croma t 3/16)
    (:croma nil 1/8)
    (:semicroma t 3/32)
    (:semicroma nil 1/16)))

(defun lookup-duration (duration dottedp)
  (third (find (list duration dottedp)
               *dict-duration-x-delta*
               :key (lambda (item) (list (first item) (second item)))
               :test #'equal)))

(defun lookup-pitch (pitch)
  (when pitch
    (setzkasten-pitch :tuning1 pitch)))

(defparameter *y-scale* 12)

(defmethod calculate-y-position ((mobject mobject))
  (with-accessors ((pitch pitch))
      mobject
    (when pitch
      (- (* *y-scale*
          (/ (log (lookup-pitch pitch))
             (log 81/80)))
         1700))))

(defparameter *x-scale* 100)
(defparameter *notehead-radius* 10)

(defmethod calculate-delta-x ((mobject mobject))
  (* *x-scale* (lookup-duration (value mobject) (dottedp mobject))))

(defparameter *lower-limit* 1150)

(defun draw-voice (scene voice)
  (let ((x-position 50)
        (last-position nil)
        (silentp t))
    (dolist (mobject (mobjects voice))
      (let ((y-position (or (calculate-y-position mobject)
                            (cdr last-position)
                            0))
            (first-in-voice nil))
        ;; (format t "~&Drawing ~a: ~a" (pitch mobject) (lookup-pitch (pitch mobject)))
        (when (and silentp y-position (not (zerop y-position)))
          (setf silentp nil)
          (setf first-in-voice t))
        (unless silentp
          (svg:draw scene (:circle :cx x-position
                                   :cy (- *lower-limit* y-position)
                                   :r *notehead-radius*)
                    :fill (if (pitch mobject) "black" "lightgray")
                    :stroke (if (pitch mobject) "black" "lightgray"))
          (svg:draw scene (:line :x1 x-position :y1 (- *lower-limit* y-position)
                                 :x2 (+ x-position (calculate-delta-x mobject))
                                 :y2 (- *lower-limit* y-position))
                    :stroke-width 6
                    :stroke (if (pitch mobject) "black" "lightgray")))
        ;; (svg:text scene (:x x-position :y (- *lower-limit* y-position 15))
        ;;   (format nil "~a" (pitch mobject)))

        ;; (format t "~&~a | ~a" (pitch mobject) (value mobject))
        (when (and last-position (not first-in-voice))
          (svg:draw scene (:line :x1 (car last-position) :y1 (- *lower-limit* (cdr last-position))
                                 :x2 x-position :y2 (- *lower-limit* y-position))))
        (unless (zerop y-position)
          (setf last-position (cons x-position y-position)))
        (incf x-position (calculate-delta-x mobject))))))

(defun draw-section (scene section)
  (dolist (voice (voices section))
    (draw-voice scene voice))
  ;; (draw-voice scene (fourth (voices section)))
  )

(defun create-visual-score (score-instance backend suffix)
  (declare (ignore backend))
  (format t "~&Generating visual score of ~a-~a" (filename score-instance) suffix)
  (cl-svg:with-svg-to-file (scene 'svg:svg-1.2-toplevel :width 9200 :height 2000 :stroke "black")
      ((merge-pathnames *visual-score-export-path*
                        (pathname (format nil "~a-~a.svg" (filename score-instance) suffix)))
       :if-exists :supersede)
    (cl-svg:draw scene (:rect :x 0 :y 0 :width "100%" :height "100%")
                 :fill "white"
                 :stroke "white")
    (dolist (section (sections score-instance))
      (draw-section scene section)))
  (format nil "~a-~a" (filename score-instance) suffix))

(defmethod create-score-file ((backend visual-score-backend) score suffix)
  (add-output-file backend (create-visual-score (parse-score score suffix) backend suffix)))
