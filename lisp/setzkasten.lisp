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
  (let ((staff (make-instance 'component-staff-lines
			      :number-of-lines 5
			      :distance-between-lines 100
			      :thickness 15
			      :endings "round"
			      :offset 10))
	(notehead-brevis (make-instance 'component-notehead
					:length-over-line 0.3
					:width 0.9
					:bold-stroke 27
					:light-stroke 13
					:oblique-p nil 
					:black nil))
	(enharmonic-dot (make-instance 'component-dot
				       :size 0.5)))
    (let ((blank (make-instance 'glyph-staff
				:staff-component staff
				:ink-color "black"
				:type-width 350
				:type-height 1500
				:filename "blank-small"))
	  (brevis (make-instance 'glyph-notehead :notehead-position 5
						 :type-width 350
						 :filename "brevis-f"
						 :ink-color "black"
						 :staff-component staff
						 :notehead-component notehead-brevis))
	  (brevis-enharmonic (make-instance 'glyph-notehead-dot
					    :dot-component enharmonic-dot
					    :dot-alignment :center
					    :notehead-component notehead-brevis
					    :notehead-position 3
					    :staff-component staff
					    :ink-color "red"
					    :type-height 1500
					    :type-width 350
					    :filename "brevis-enharmonic")))
      (cast blank)
      (cast brevis)
      (cast brevis-enharmonic))))

