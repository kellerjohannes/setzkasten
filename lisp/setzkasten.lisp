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
      (let ((stencil (find stencil-name list-of-stencils :test #'string= :key #'id)))
	(cond ((not stencil-name)
	       (concatenate 'string
			    (toplevel-open score-width score-height score-name)
			    (reduce-string-list svg-symbol-container)
			    (reduce-string-list svg-use-container)
			    (toplevel-close)))
	      (t (unless (svg-object stencil)
		   (cast stencil)
		   (push (svg-object stencil) svg-symbol-container))
		 (push (output-use (id stencil) :x x-cursor :y y-cursor) svg-use-container)
		 (incf x-cursor (glyph-width stencil))))))))


;; sketch: develop setzkasten-creation context

(generate-setzkasten ((staff-lines 5-stave 5 100 15 "round" 10)
		      (staff-lines 3-staves 3 100 15 "round" 12))
		     ((staff 5-staves "black" 50 1500 "blank-a")))

(let ((5-staves (make-instance 'component-staff-lines))
      (3-staves (make-instance 'component-staff-lines)))
  (init-setzkasten-component-staff-lines 5-staves 5 100 15 "round" 10)
  (init-setzkasten-component-staff-lines 3-staves 3 100 15 "round" 12)
  (let ((blank-a (make-instance 'glyph-staff)))
    (init-setzkasten-glyph-staff 5-staves )))

(defmacro generate-setzkasten (component-definitions glyph-definitions)
  `(let (,@(mapcar ))))



(defparameter *setzkasten-syntax* '((component-staff-lines
				     ((id "stave")
				      (number-of-lines 5)
				      (distance-between-lines 100)
				      (thickness 15)
				      (offset 10))
				     ((endings "round")))
				    (component-notehead
				     ((id "notehead")
				      (length-over-line 0.3)
				      (width 0.9)
				      (bold-stroke 27)
				      (light-stroke 13)
				      (oblique-p t)
				      (black nil))
				     ())
				    (glyph-staff
				     ((id "glyph-staff")
				      (staff-component :instance)
				      (glyph-width 50)
				      (glyph-height 1500))
				     ((ink-color "black")))))

(defparameter *setzkasten-definition-components* '((component-staff-lines "5-stave" 5 101 17 11)
						   (component-staff-lines "3-stave" 3 100 15 12)))

(defparameter *setzkasten-definition-glyphs* '((glyph-staff "blank-a" "5-stave" 150 1500)))

(defun parse-setzkasten-instance (instance-definition syntax-definition &optional list-of-components)
  "Takes the definition of one instance and the syntax description of one instance and returns a new actual instance with parameters set according to the two input arguments."
  (let ((new-stencil (make-instance (first instance-definition))))
    (labels ((rec-user-defined (accessors values)
	       (cond ((or (null accessors) (null values)) nil)
		     (t (let ((value (first values))
			      (accessor (first (first accessors)))
			      (default-value (second (first accessors))))
			  (cond ((eq default-value :instance)
				 (setf (slot-value new-stencil accessor)
				       (find value list-of-components :key #'id :test #'string=)))
				((eq value 'default)
				 (setf (slot-value new-stencil accessor) default-value))
				(t (setf (slot-value new-stencil accessor) value))))
			(rec-user-defined (rest accessors) (rest values)))))
	     (rec-pre-defined (accessor)
	       (cond ((null accessor) nil)
		     (t (setf (slot-value new-stencil (first (first accessor)))
			      (second (first accessor)))
			(rec-pre-defined (rest accessor))))))
      (rec-user-defined (second syntax-definition) (rest instance-definition))
      (rec-pre-defined (third syntax-definition)))
    new-stencil))

(defun parse-setzkasten (definition-components definition-glyphs syntax-definition)
  "Takes user defined stencils and a syntax definition, returns a list of stencil instances."
  (let ((list-of-components
	  (mapcar (lambda (definition)
		    (parse-setzkasten-instance definition (assoc (first definition)
								 syntax-definition)))
		  definition-components)))
    (mapcar (lambda (definition)
	      (parse-setzkasten-instance definition (assoc (first definition) syntax-definition)
				      list-of-components))
	    definition-glyphs)))

(defun print-setzkasten-syntax (syntax-definition)
  (mapc (lambda (el)
	  (format t "Element ~s:~&  Manually to define:~&~{    ~a~&~}~&  Predefined:~&~{    ~a~&~}~%"
		  (symbol-name (first el))
		  (mapcar (lambda (par)
			    (format nil "~a [~a]"
				    (symbol-name (first par))
				    (second par)))
			  (second el))
		  (mapcar (lambda (par)
			    (format nil "~a: ~s"
				    (symbol-name (first par))
				    (second par)))
			  (third el))))
	syntax-definition)
  t)

;; manual score typesetting, ok for testing, needs to be replaced by automated process (vicentino-code-parser?)

(defun test-score ()
  (let ((setter (make-typesetter 2000 1500 "test-score" (parse-setzkasten *setzkasten-definition-components* *setzkasten-definition-glyphs* *setzkasten-syntax*))))
    (funcall setter "blank-a")
    (funcall setter "blank-a")
    (funcall setter "blank-a")
    (let ((svg-score (funcall setter nil)))
      (with-open-file (stream (merge-pathnames *svg-export-path*
					       (pathname "test-score.svg"))
			      :direction :output
			      :if-exists :supersede
			      :if-does-not-exist :create)
	(format stream "~a" svg-score)))))



;; manual creation (too verbose)

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
				  :id "blank-a"))
	  (blank-b (make-instance 'glyph-staff
				  :staff-component staff
				  :ink-color "black"
				  :glyph-width 150
				  :glyph-height 1500
				  :id "blank-b"))
	  (blank-c (make-instance 'glyph-staff
				  :staff-component staff
				  :ink-color "black"
				  :glyph-width 300 
				  :glyph-height 1500
				  :id "blank-c"))
	  (semibrevis-a (make-instance 'glyph-notehead
				       :notehead-position 0
				       :glyph-width 200
				       :id "semibrevis-a"
				       :ink-color "black"
				       :staff-component staff
				       :notehead-component notehead-semibrevis)))
      (list blank-a blank-b blank-c semibrevis-a))))


;; obsolete testing

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
				:id "blank-small"))
	  (brevis (make-instance 'glyph-notehead :notehead-position 5
						 :glyph-width 350
						 :id "brevis-f"
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
					    :id "brevis-enharmonic")))
      (cast blank)
      (cast brevis)
      (cast brevis-enharmonic))))

