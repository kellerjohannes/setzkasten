(defpackage :setzkasten
  (:use :cl))

(in-package :setzkasten)

(defparameter *svg-export-path* (pathname "~/Vicentino21/edition/setzkasten/lisp/svg-export/"))

(defun reduce-string-list (lst)
  (reduce (lambda (a b) (concatenate 'string a b)) lst))

;; system components
(load "~/Vicentino21/edition/setzkasten/lisp/svg-generator.lisp")
(load "~/Vicentino21/edition/setzkasten/lisp/vector-package.lisp")
(load "~/Vicentino21/edition/setzkasten/lisp/class-definitions.lisp")
(load "~/Vicentino21/edition/setzkasten/lisp/casting.lisp")
(load "~/Vicentino21/edition/setzkasten/lisp/setzkasten-syntax.lisp")

;; user defined data
(load "~/Vicentino21/edition/setzkasten/lisp/glyph-definitions.lisp")
(load "~/Vicentino21/edition/setzkasten/lisp/score-definitions.lisp")


(defclass typesetter ()
  ((svg-symbol-container :initform nil :accessor svg-symbol-container)
   (lines :initform '(()) :allocation :instance :accessor lines)
   (name :initform "" :initarg :name :accessor name)
   (width :initform 0 :initarg :width :accessor width)
   (height :initform 0 :initarg :height :accessor height)
   (bg-color :initform 0 :initarg :bg-color :accessor bg-color)
   (svg-data :initform "" :accessor svg-data)))

(defmethod add-to-line ((score typesetter) (stencil glyph))
  (unless (svg-data stencil)
    (cast stencil)
    (push (svg-data stencil) (svg-symbol-container score)))
  (push stencil (first (lines score))))

(defmethod next-line ((score typesetter))
  (push '() (lines score)))

(defmethod typeset ((score typesetter))
  (let ((y-cursor 0)
	(svg-output nil))
    (format t "~a" (lines score))
    (mapcar (lambda (line)
	      (let ((x-cursor 0))
		(mapcar (lambda (stencil)
			  (push (output-use (id stencil) :x x-cursor :y y-cursor)
				svg-output)
			  (incf x-cursor (glyph-width stencil)))
			(reverse line)))
	      (incf y-cursor (glyph-height (first line))))
	    (reverse (lines score)))
    (setf (svg-data score)
	  (concatenate 'string
		       (toplevel-open (width score) (height score) (name score))
		       (when (bg-color score) (output-background (bg-color score)))
		       (reduce-string-list (svg-symbol-container score))
		       (reduce-string-list svg-output)
		       (toplevel-close)))))

(defmethod write-score ((score typesetter))
  (with-open-file (stream (merge-pathnames *svg-export-path*
					   (pathname (format nil "~a.svg" (name score))))
			  :direction :output
			  :if-exists :supersede
			  :if-does-not-exist :create)
    (format stream "~a" (svg-data score))))





(defun test-score ()
  (let ((list-of-stencils (parse-setzkasten *setzkasten-definition-components*
					    *setzkasten-definition-glyphs*
					    *setzkasten-syntax*))
	(score (make-instance 'typesetter :bg-color "white" :height 1500 :width 20000 :name "test-score")))
    (add-to-line score (first list-of-stencils))
    (add-to-line score (second list-of-stencils))
    (add-to-line score (third list-of-stencils))
    (add-to-line score (fourth list-of-stencils))
    (typeset score)
    (write-score score)
    nil))



(defun make-typesetter (score-width score-height score-name list-of-stencils)
  (let ((x-cursor 0)
	(y-cursor 0)
	(svg-symbol-container nil)
	(svg-use-container nil))
    (lambda (stencil-name &optional bg-color)
      (let ((stencil (find stencil-name list-of-stencils :test #'string= :key #'id)))
	(cond ((not stencil-name)
	       (concatenate 'string
			    (toplevel-open score-width score-height score-name)
			    (when bg-color (output-background bg-color))
			    (reduce-string-list svg-symbol-container)
			    (reduce-string-list svg-use-container)
			    (toplevel-close)))
	      (t (unless (svg-data stencil)
		   (cast stencil)
		   (push (svg-data stencil) svg-symbol-container))
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
      (rec-user-defined (second syntax-definition) (rest (rest instance-definition)))
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
  nil)



(defun lookup-vicentino-code (item glyph-definitions)
  (third (find item glyph-definitions :key #'second)))

(defun parse-vicentino-code (data glyph-definitions)
  (mapcar (lambda (item) (lookup-vicentino-code item glyph-definitions)) data))

(defun write-svg-to-file (typesetter filename background-color)
  (let ((svg-score (funcall typesetter nil background-color)))
    (with-open-file (stream (merge-pathnames *svg-export-path*
					     (pathname (format nil "~a.svg" filename)))
			    :direction :output
			    :if-exists :supersede
			    :if-does-not-exist :create)
      (format stream "~a" svg-score))))

(defun create-scores (data)
  (mapc (lambda (score)
	  (let ((setter (make-typesetter (second (first score)) (third (first score)) (first (first score))
					 (parse-setzkasten *setzkasten-definition-components*
							   *setzkasten-definition-glyphs*
							   *setzkasten-syntax*))))
	    (mapcar (lambda (n) (funcall setter n))
		    (parse-vicentino-code (second score) *setzkasten-definition-glyphs*))
	    (write-svg-to-file setter (first (first score)) (fourth (first score)))))
	data)
  nil)
