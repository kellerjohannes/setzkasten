(ql:quickload :cl-svg)

(defpackage :hand-crafted-svg
  (:use :cl :cl-svg))

(in-package :hand-crafted-svg)

(defun vicentino (path margin width height number-of-lines)
  (let* ((distance-between-lines (/ (- height margin margin) (1- number-of-lines)))
         (radius (* 1/5 distance-between-lines))
         (note-offset (* margin 3/2))
         (note-padding (/ (- width margin margin note-offset note-offset)
                          (- (* 4 (1- number-of-lines)) 2))))
    (with-svg-to-file (scene 'svg-1.2-toplevel :width width :height height)
        (path :if-exists :supersede :if-does-not-exist :create)
      (draw scene (:rect :x 0 :y 0 :width "100%" :height "100%"))
      (dotimes (line-id number-of-lines)
        (let ((ypos (+ margin (* line-id distance-between-lines))))
          (draw scene (:line :x1 margin :y1 ypos
                             :x2 (- width margin) :y2 ypos
                             :stroke "black"
                             :stroke-width 5
                             :stroke-linecap "round"))))
      (let ((level-counter 0)
            (level-delta 1)
            (origin-level (+ (* (1- number-of-lines) distance-between-lines) margin)))
        (dotimes (note-id (1- (* 4 (1- number-of-lines))))
          (draw scene (:circle :cx (+ margin note-offset (* note-id note-padding))
                               :cy (- origin-level
                                      (* level-counter 1/2 distance-between-lines))
                               :r radius
                               :fill "black"))
          (incf level-counter level-delta)
          (when (= level-counter (- (* 2 number-of-lines) 3))
            (setf level-delta (* -1 level-delta))))))))
