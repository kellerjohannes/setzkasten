(in-package :setzkasten)

;; TODO: to be completed and placed somewhere else, maybe together with glyph definitions
(defparameter *musical-elements*
  '(max7 fclef7 cclef7 sb3 sb4 sh4 sb6))

(defparameter *apparatus-string* nil)
(defparameter *glyph-counter* nil)
(defparameter *musical-element-counter* nil)
(defparameter *line-counter* nil)

(defun count-elements (expression)
  (dolist (item expression expression)
    (incf *glyph-counter*)
    (when (member item *musical-elements*) (incf *musical-element-counter*))))

(defun append-apparatus-line (line)
  (setf *apparatus-string* (concatenate 'string *apparatus-string* line)))

(defun generate-apparatus-item (line glyph element reading content)
  (format nil "Line ~a, glyph ~a (element ~a): reading ~a used ~s.~%"
          line glyph element reading content))

(defun loop-alt (alt-list filter)
  (unless (null filter)
    (let ((candidate (find (first filter) alt-list :key #'first)))
      (cond (candidate
             (append-apparatus-line
              (generate-apparatus-item *line-counter* *glyph-counter* *musical-element-counter*
                                       (first filter)
                                       (rest candidate)))
             (rest candidate))
            (t (loop-alt alt-list (rest filter)))))))

(defun resolve-alt (expression filter)
  (cond ((eq (first expression) :alt)
         (count-elements (loop-alt (rest expression) filter)))
        (t (format t "~&Error in apparatus: no :alt-expression."))))

(defun loop-data (restdata filter)
  (cond ((null restdata) nil)
        ((atom (first restdata))
         (let ((item (first restdata)))
           (incf *glyph-counter*)
           (when (member item *musical-elements*) (incf *musical-element-counter*))
           (when (or (eq item 'music) (eq item 'text))
             (setf *glyph-counter* 0 *musical-element-counter* 0)
             (incf *line-counter*))
           (cons item (loop-data (rest restdata) filter))))
        ((eq (first (first restdata)) :alt) (append (resolve-alt (first restdata) filter)
                                                    (loop-data (rest restdata) filter)))
        (t (cons (loop-data (first restdata) filter)
                 (loop-data (rest restdata) filter)))))

(defun extract-apparatus (score extraction-arguments)
  (let ((*apparatus-string* nil)
        (*line-counter* 0)
        (*glyph-counter* 0)
        (*musical-element-counter* 0))
    (values (loop-data score extraction-arguments) *apparatus-string*)))

'(:type-imitation-line 1
  :type-imitation-glyph 15
  :type-imitation-musical-element 7
  :score-section s3
  :score-voice v2
  :score-mobject 7
  :original (sh5 sb5)
  :replacement (b38 b38)
  :comment "")

'(:type-imitation-line 2
  :type-imitation-text-field 1
  :score-text-element (:section-headings s2)
  :
  )
