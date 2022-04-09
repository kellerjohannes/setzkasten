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
(load "~/Vicentino21/edition/setzkasten/lisp/setzkasten-syntax.lisp")

(defparameter *setzkasten-definition-components*
  '((component-staff-lines "5-stave" 5 100 12 10)
    (component-notehead "notehead-brevis" 0.3 0.95 28 16 nil nil)
    (component-notehead "notehead-brevis-black" 0.3 0.95 28 16 nil t)
    (component-notehead "notehead-semibrevis" 0.25 1.0 35 14 t nil)
    (component-notehead "notehead-semibrevis-black" 0.25 1.0 35 14 t t)
    (component-dot "enharmonic-dot" 0.4)))

(defparameter *setzkasten-definition-glyphs*
  '((glyph-staff "blank-a" "5-stave" 50 1500)
    (glyph-staff "blank-b" "5-stave" 150 1500)
    (glyph-staff "blank-c" "5-stave" 450 1500)
    (glyph-notehead "brevis-a" "5-stave" "notehead-brevis" 205 1500 0)
    (glyph-notehead "brevis-b" "5-stave" "notehead-brevis" 205 1500 1)
    (glyph-notehead "brevis-c" "5-stave" "notehead-brevis" 205 1500 2)
    (glyph-notehead "brevis-d" "5-stave" "notehead-brevis" 205 1500 3)
    (glyph-notehead "brevis-e" "5-stave" "notehead-brevis" 205 1500 4)
    (glyph-notehead "brevis-f" "5-stave" "notehead-brevis" 205 1500 5)
    (glyph-notehead "semibrevis-a" "5-stave" "notehead-semibrevis" 180 1500 0)
    (glyph-notehead "semibrevis-b" "5-stave" "notehead-semibrevis" 180 1500 1)
    (glyph-notehead "semibrevis-c" "5-stave" "notehead-semibrevis" 180 1500 2)
    (glyph-notehead "semibrevis-d" "5-stave" "notehead-semibrevis" 180 1500 3)
    (glyph-notehead "semibrevis-e" "5-stave" "notehead-semibrevis" 180 1500 4)
    (glyph-notehead "semibrevis-f" "5-stave" "notehead-semibrevis" 180 1500 5)
    (glyph-notehead "brevis-a-black" "5-stave" "notehead-brevis-black" 205 1500 0)
    (glyph-notehead "brevis-b-black" "5-stave" "notehead-brevis-black" 205 1500 1)
    (glyph-notehead "brevis-c-black" "5-stave" "notehead-brevis-black" 205 1500 2)
    (glyph-notehead "brevis-d-black" "5-stave" "notehead-brevis-black" 205 1500 3)
    (glyph-notehead "brevis-e-black" "5-stave" "notehead-brevis-black" 205 1500 4)
    (glyph-notehead "brevis-f-black" "5-stave" "notehead-brevis-black" 205 1500 5)
    (glyph-notehead "semibrevis-a-black" "5-stave" "notehead-semibrevis-black" 180 1500 0)
    (glyph-notehead "semibrevis-b-black" "5-stave" "notehead-semibrevis-black" 180 1500 1)
    (glyph-notehead "semibrevis-c-black" "5-stave" "notehead-semibrevis-black" 180 1500 2)
    (glyph-notehead "semibrevis-d-black" "5-stave" "notehead-semibrevis-black" 180 1500 3)
    (glyph-notehead "semibrevis-e-black" "5-stave" "notehead-semibrevis-black" 180 1500 4)
    (glyph-notehead "semibrevis-f-black" "5-stave" "notehead-semibrevis-black" 180 1500 5)
    (glyph-notehead-dot "brevis-a-dot" "5-stave" "notehead-brevis" "enharmonic-dot" 205 1500 0 :center)
    (glyph-notehead-dot "brevis-b-dot" "5-stave" "notehead-brevis" "enharmonic-dot" 205 1500 1 :center)
    (glyph-notehead-dot "brevis-c-dot" "5-stave" "notehead-brevis" "enharmonic-dot" 205 1500 2 :center)
    (glyph-notehead-dot "brevis-d-dot" "5-stave" "notehead-brevis" "enharmonic-dot" 205 1500 3 :center)
    (glyph-notehead-dot "brevis-e-dot" "5-stave" "notehead-brevis" "enharmonic-dot" 205 1500 4 :center)
    (glyph-notehead-dot "brevis-f-dot" "5-stave" "notehead-brevis" "enharmonic-dot" 205 1500 5 :center)
    (glyph-notehead-dot "brevis-g-dot" "5-stave" "notehead-brevis" "enharmonic-dot" 205 1500 6 :center)
    (glyph-notehead-dot "brevis-h-dot" "5-stave" "notehead-brevis" "enharmonic-dot" 205 1500 7 :center)
    (glyph-notehead-dot "brevis-i-dot" "5-stave" "notehead-brevis" "enharmonic-dot" 205 1500 8 :center)
    (glyph-notehead-dot "brevis-j-dot" "5-stave" "notehead-brevis" "enharmonic-dot" 205 1500 9 :center)
    (glyph-notehead-dot "brevis-k-dot" "5-stave" "notehead-brevis" "enharmonic-dot" 205 1500 10 :center)
    (glyph-notehead-dot "semibrevis-a-dot" "5-stave" "notehead-semibrevis" "enharmonic-dot" 180 1500 0 :center)
    (glyph-notehead-dot "semibrevis-b-dot" "5-stave" "notehead-semibrevis" "enharmonic-dot" 180 1500 1 :center)
    (glyph-notehead-dot "semibrevis-c-dot" "5-stave" "notehead-semibrevis" "enharmonic-dot" 180 1500 2 :center)
    (glyph-notehead-dot "semibrevis-d-dot" "5-stave" "notehead-semibrevis" "enharmonic-dot" 180 1500 3 :center)
    (glyph-notehead-dot "semibrevis-e-dot" "5-stave" "notehead-semibrevis" "enharmonic-dot" 180 1500 4 :center)
    (glyph-notehead-dot "semibrevis-f-dot" "5-stave" "notehead-semibrevis" "enharmonic-dot" 180 1500 5 :center)
    ))

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
  (let ((setter (make-typesetter 10000 1500 "test-score" (parse-setzkasten *setzkasten-definition-components* *setzkasten-definition-glyphs* *setzkasten-syntax*)))
	(minimal '("blank-b"))
	(catalog '("blank-a" "blank-b" "blank-c"
	      "brevis-a" "brevis-b" "brevis-c" "brevis-d" "brevis-e" "brevis-f"
	      "semibrevis-a" "semibrevis-b" "semibrevis-c" "semibrevis-d" "semibrevis-e" "semibrevis-f"
	      "brevis-a-black" "brevis-b-black" "brevis-c-black" "brevis-d-black" "brevis-e-black" "brevis-f-black"
	      "semibrevis-a-black" "semibrevis-b-black" "semibrevis-c-black" "semibrevis-d-black" "semibrevis-e-black" "semibrevis-f-black"
	      "brevis-a-dot" "brevis-b-dot" "brevis-c-dot" "brevis-d-dot" "brevis-e-dot" "brevis-f-dot" "brevis-g-dot" "brevis-h-dot" "brevis-i-dot" "brevis-j-dot" "brevis-k-dot"
	      "semibrevis-a-dot" "semibrevis-b-dot" "semibrevis-c-dot" "semibrevis-d-dot" "semibrevis-e-dot" "semibrevis-f-dot")))
    (mapcar (lambda (n) (funcall setter n))
	    catalog)
    (let ((svg-score (funcall setter nil)))
      (with-open-file (stream (merge-pathnames *svg-export-path*
					       (pathname "test-score.svg"))
			      :direction :output
			      :if-exists :supersede
			      :if-does-not-exist :create)
	(format stream "~a" svg-score)))))

