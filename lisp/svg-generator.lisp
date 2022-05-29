(defun toplevel-open (width height id-string)
  (format nil "<?xml version=\"1.0\" standalone=\"no\"?>
<!DOCTYPE svg PUBLIC \"-//W3C//DTD SVG 1.1//EN\" \"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd\">
<svg stroke=\"black\" width=\"~d\" height=\"~d\" id=~s version=\"1.1\"
    xmlns=\"http://www.w3.org/2000/svg\"
    xmlns:xlink=\"http://www.w3.org/1999/xlink\">"
	  width height id-string))

(defun output-background (color)
  (format nil "<rect width=\"100%\" height=\"100%\" fill=~s/>" color))

(defun toplevel-close ()
  (format nil "</svg>"))

(defun output-svg-symbol-open (id-string)
  (format nil "<symbol id=~s>" id-string))

(defun output-svg-symbol-close ()
  (format nil "</symbol>"))

(defun output-use (id-string &key (x nil) (y nil))
  (format nil "<use href=\"#~a\"~@[ x=\"~d\"~]~@[ y=\"~d\"~]/>"
	  id-string x y))

(defun output-circle (x y r color)
  (format nil "<circle cx=\"~d\" cy=\"~d\" r=\"~d\" stroke=~s fill=~s/>"
	  x y r color color))

(defun output-debug-circle (vec)
  (output-circle (vec:x-coord vec) (vec:y-coord vec) 9 "red"))

(defun output-line (x1 y1 x2 y2 stroke-width stroke-linecap)
  (format nil "<line x1=\"~d\" y1=\"~d\" x2=\"~d\" y2=\"~d\" stroke-width=\"~d\" stroke-linecap=~s/>"
	  x1 y1 x2 y2 stroke-width stroke-linecap))

(defun output-line-vec (vec1 vec2 stroke-width stroke-linecap)
  (output-line (vec:x-coord vec1) (vec:y-coord vec1)
	       (vec:x-coord vec2) (vec:y-coord vec2)
	       stroke-width
	       stroke-linecap))

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


;; TODO delete this obsolete definition (after updating all function calls)
(defun output-path (fill-rule color list-of-commands)
  (format nil "<path fill-rule=~s stroke=~s fill=~s d=~s />"
	  fill-rule
	  color
	  color
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
