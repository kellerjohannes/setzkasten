(in-package :setzkasten)

;; to be completed and placed somewhere else, maybe together with glyph definitions
(defparameter *musical-elements*
  '(max7 fclef7 cclef7 sb3 sb4 sh4 sb6))


(defparameter *testdata*
  '(("b1-c10-m1" nil nil "white")
    ((music nil max7 (:alt (:diplomatic fclef7) (:idealised (section 1 "haha") cclef7)) b38 sb3 b22 sb4 b38 (:alt (:diplomatic sh4) (:idealised fl4)) b38 sb4 b38 sb6 b22))))

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
  (format nil "Line ~a, glyph ~a (element ~a): reading ~a used ~a.~%"
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
           (when (eq item 'music)
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
