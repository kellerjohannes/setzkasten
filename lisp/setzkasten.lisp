(require :cl-who)
(require :hunchentoot)
(require :parenscript)
(require :cl-svg)

(defpackage :setzkasten
  (:use :cl :cl-svg :cl-who :parenscript))

(in-package :setzkasten)

(defparameter *svg-export-path* (pathname "~/Vicentino21/edition/setzkasten/lisp/svg-export/"))

(load "class-definitions.lisp")
(load "casting.lisp")


(defun tests ()
  (let ((staff (make-instance 'setzkasten/staff
			      :number-of-lines 5
			      :distance-between-lines 100
			      :thickness 15
			      :endings "round"
			      :offset 10))
	(notehead-brevis (make-instance 'setzkasten/notehead
					:length-over-line 0.3
					:width 0.9
					:bold-stroke 27
					:light-stroke 13
					:oblique-p nil 
					:black nil)))
    (let ((blank (make-instance 'setzkasten/type-staff
				:staff-instance staff
				:ink-color "black"
				:type-width 350
				:type-height 1500
				:filename "blank-small"))
	  (brevis (make-instance 'setzkasten/type-notehead :notehead-position 5
							   :type-width 350
							   :filename "brevis-f"
							   :ink-color "black"
							   :staff-instance staff
							   :notehead-instance notehead-brevis)))
      (cast blank)
      (cast brevis))))

