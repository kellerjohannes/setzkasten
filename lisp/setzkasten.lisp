(require :cl-svg)

(defpackage :setzkasten
  (:use :cl :cl-svg))

(in-package :setzkasten)

(defparameter *svg-export-path* (pathname "~/Vicentino21/edition/setzkasten/lisp/svg-export/"))

(defun reduce-string-list (lst)
  (reduce (lambda (a b) (concatenate 'string a b)) lst))


(load "~/Vicentino21/edition/setzkasten/lisp/vector-package.lisp")
(load "~/Vicentino21/edition/setzkasten/lisp/class-definitions.lisp")
(load "~/Vicentino21/edition/setzkasten/lisp/casting.lisp")

(defun make-typesetter (score-width score-height score-name list-of-stencils)
  (let ((x-cursor 0)
	(y-cursor 0)
	(svg-symbol-container nil)
	(svg-use-container nil))
    (lambda (stencil-name)
      (let ((stencil (find stencil-name list-of-stencils :test #'string= :key #'filename)))
	(cond ((not stencil-name)
	       (concatenate 'string
			    (toplevel-open score-width score-height score-name)
			    (reduce-string-list svg-symbol-container)
			    (reduce-string-list svg-use-container)
			    (toplevel-close)))
	      (t (unless (svg-object stencil)
		   (cast stencil)
		   (push (svg-object stencil) svg-symbol-container))
		 (push (output-use (filename stencil) :x x-cursor :y y-cursor) svg-use-container)
		 (incf x-cursor (glyph-width stencil))))))))

(generate-setzkasten (component-staff-lines ))

(defmacro generate-setzkasten (component-definitions glyph-definitions))
(defun generate-setzkasten ()
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
	(notehead-semibrevis (make-instance 'component-notehead
					    :length-over-line 0.3
					    :width 0.9
					    :bold-stroke 27
					    :light-stroke 13
					    :oblique-p t 
					    :black nil))
	(enharmonic-dot (make-instance 'component-dot
				       :size 0.5)))
    (let ((blank-a (make-instance 'glyph-staff
				  :staff-component staff
				  :ink-color "black"
				  :glyph-width 50
				  :glyph-height 1500
				  :filename "blank-a"))
	  (blank-b (make-instance 'glyph-staff
				  :staff-component staff
				  :ink-color "black"
				  :glyph-width 150
				  :glyph-height 1500
				  :filename "blank-b"))
	  (blank-c (make-instance 'glyph-staff
				  :staff-component staff
				  :ink-color "black"
				  :glyph-width 300 
				  :glyph-height 1500
				  :filename "blank-c"))
	  (semibrevis-a (make-instance 'glyph-notehead
					 :notehead-position 0
					 :glyph-width 200
					 :filename "semibrevis-a"
					 :ink-color "black"
					 :staff-component staff
					 :notehead-component notehead-semibrevis)))
      (list blank-a blank-b blank-c semibrevis-a))))

(defun test-score ()
  (let ((setter (make-typesetter 2000 1500 "test-score" (generate-setzkasten))))
    (funcall setter "blank-a")
    (funcall setter "blank-b")
    (funcall setter "blank-c")
    (funcall setter "semibrevis-a")
    (let ((svg-score (funcall setter nil)))
      (with-open-file (stream (merge-pathnames *svg-export-path*
					       (pathname "test-score.svg"))
			      :direction :output
			      :if-exists :supersede
			      :if-does-not-exist :create)
	(format stream "~a" svg-score)))))


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
				:glyph-width 350
				:glyph-height 1500
				:filename "blank-small"))
	  (brevis (make-instance 'glyph-notehead :notehead-position 5
						 :glyph-width 350
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
					    :glyph-height 1500
					    :glyph-width 350
					    :filename "brevis-enharmonic")))
      (cast blank)
      (cast brevis)
      (cast brevis-enharmonic))))

