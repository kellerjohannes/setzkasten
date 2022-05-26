;;;; TODO describe this file


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





(defclass typesetter ()
  ((line-container :initform nil :accessor line-container)
   (line-width-list :initform nil :accessor line-width-list)
   (svg-symbol-container :initform nil :accessor svg-symbol-container)
   (name :initform "" :initarg :name :accessor name)
   (width :initform 0 :initarg :width :accessor width)
   (height :initform 0 :initarg :height :accessor height)
   (margins :initform '(0 0 0 0) :initarg :margins :accessor margins)
   (bg-color :initform nil :initarg :bg-color :accessor bg-color)
   (svg-use-container :initform nil :accessor svg-use-container)))

(defmethod add-line ((score typesetter) line-width)
  (push '() (line-container score))
  (push line-width (line-width-list score)))

(defmethod initialize-instance :after ((score typesetter) &key)
  (setf (line-container score) nil)
  (add-line score (width score)))

(defmethod add-stencil-to-line ((score typesetter) (stencil glyph))
  (push stencil (first (line-container score))))

(defmethod show-data ((score typesetter))
  (format t "~&----line-container:~&~s
~&----svg-symbol-container:~&~s
~&----svg-use-container:~&~s"
	  (line-container score)
	  (svg-symbol-container score)
	  (svg-use-container score)))

(defmethod calculate-glyph-width (line)
  (reduce #'+ line :key #'glyph-width))

(defmethod typeset ((score typesetter) alignment)
  (let ((y-counter (first (margins score))))
    (mapc (lambda (line line-width)
	    (let ((x-counter (fourth (margins score)))
		  (padding (if (eq alignment :block)
			       (/ (- line-width (calculate-glyph-width line))
				  (- (length line) 0.0))
			       0)))
	      (format t "~&padding:~a" padding)
	      (mapc (lambda (stencil)
		      (unless (svg-data stencil)
			(cast stencil)
			(push (svg-data stencil) (svg-symbol-container score)))
		      (push (output-use (id stencil) :x x-counter :y y-counter)
			    (svg-use-container score))
		      (incf x-counter (+ padding (glyph-width stencil))))
		    (reverse line)))
	    (incf y-counter (glyph-height (first line))))
	  (reverse (line-container score))
	  (reverse (line-width-list score)))))

(defmethod get-svg-height ((score typesetter))
  (let ((top-and-bottom-margin (+ (first (margins score))
				  (third (margins score)))))
    (if (height score)
	(+ top-and-bottom-margin (height score))
	(+ top-and-bottom-margin
	   (reduce #'+ (line-container score)
		   :key (lambda (line) (glyph-height (first line))))))))

(defmethod get-svg-width ((score typesetter))
  (let ((left-and-right-margin (+ (second (margins score))
				  (fourth (margins score)))))
    (+ left-and-right-margin (width score))))

(defmethod write-score ((score typesetter))
  (with-open-file (stream (merge-pathnames *svg-export-path*
					   (pathname (format nil "~a.svg" (name score))))
			  :direction :output
			  :if-exists :supersede
			  :if-does-not-exist :create)
    (format stream "~a~@[~a~]~{~a~}~{~a~}~a"
	    (toplevel-open (get-svg-width score)
			   (get-svg-height score)
			   (name score))
	    (when (bg-color score) (output-background (bg-color score)))
	    (svg-symbol-container score)
	    (svg-use-container score)
	    (toplevel-close))))


;;; parsing vicentino code

(defun lookup-vicentino-code (item glyph-definitions)
  (let ((result (third (find item glyph-definitions :key #'second))))
    (if result result item)))

(defun parse-vicentino-code (data glyph-definitions)
  (mapcar (lambda (item) (lookup-vicentino-code item glyph-definitions)) data))

(defun score-name (score) (first (first score)))

(defun score-width (score) (second (first score)))

(defun score-height (score) (third (first score)))

(defun score-bg-color (score) (fourth (first score)))

(defun score-elements (score) (second score))

(defun get-stencil (id stencils)
  (let ((result (find id stencils :test #'string= :key #'id)))
    (if result
	result
	(format t "~&~a not found." id))))

(defun create-scores (data components glyphs syntax)
  (mapc (lambda (score)
	  (let ((stencil-list (parse-setzkasten components glyphs syntax))
		(setter (make-instance 'typesetter
				       :bg-color (score-bg-color score)
				       :width (score-width score)
				       :height (score-height score)
				       :margins '(200 100 0 100)
				       :name (score-name score))))
	    (mapc (lambda (element)
		    (cond ((eq element 'nl) (add-line setter (score-width score)))
			(t (add-stencil-to-line setter (get-stencil element stencil-list)))))
		  (parse-vicentino-code (score-elements score) glyphs))
	    (typeset setter :block)
	    (write-score setter)))
	data)
  t)



