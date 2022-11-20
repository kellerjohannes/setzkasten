(in-package :setzkasten)

;; generic helpers

(defun avg (&rest numbers)
  (/ (reduce #'+ numbers) (length numbers)))

(defun reduce-string-list (lst)
  (reduce (lambda (a b) (concatenate 'string a b)) lst))

(defun make-keyword (name)
  (values (intern (string-upcase name) "KEYWORD")))


;; string processing

(defparameter *bold-trigger* "*")
(defparameter *italics-trigger* "_")

(defun find-next-trigger (text-string trigger-string &optional (scan-start 0))
  (search trigger-string text-string :start2 scan-start))

(defun split-formatted-string (text-string &optional (result nil))
  (let ((bold-pos (find-next-trigger text-string *bold-trigger*))
        (italics-pos (find-next-trigger text-string *italics-trigger*))))
  (cond ((and (null bold-pos) (null italics-pos))
         (reverse result))
        (italics-pos
         (push (subseq text-string 0 (find-next-trigger text-string *italics-trigger*)) result)
         (push :italics result)
         (split-formatted-string (subseq (find-next-)))
         )))

(defun split-formatted-string (text-string &optional result)
  (let ((bold-pos (find-next-trigger text-string *bold-trigger*))
        (italics-pos (find-next-trigger text-string *italics-trigger*)))
    (cond ((and (null bold-pos) (null italics-pos))
           (push :normal result)
           (push text-string result)
           (reverse result)
           )
          ((and (and bold-pos (> bold-pos 0)) (null italics-pos))
           (push :normal result)
           (push (subseq text-string 0 bold-pos) result)
           (split-formatted-string (subseq text-string bold-pos) result))
          ((and (and italics-pos (> italics-pos 0)) (null bold-pos))
           (push :normal result)
           (push (subseq text-string 0 italics-pos) result)
           (split-formatted-string (subseq text-string italics-pos) result))
          ((and bold-pos (zerop bold-pos))
           (let ((trigger-len (length *bold-trigger*)))
             (push :bold result)
             (push (subseq text-string
                           trigger-len
                           (find-next-trigger text-string *bold-trigger* trigger-len))
                   result)
             (split-formatted-string (subseq text-string (+ trigger-len
                                                            (find-next-trigger text-string
                                                                               *bold-trigger*
                                                                               trigger-len)))
                                     result)))
          ((and italics-pos (zerop italics-pos))
           (let ((trigger-len (length *italics-trigger*)))
             (push :italics result)
             (push (subseq text-string trigger-len (find-next-trigger
                                                    text-string
                                                    *italics-trigger*
                                                    trigger-len))
                   result)
             (split-formatted-string (subseq text-string (+ trigger-len
                                                            (find-next-trigger text-string
                                                                               *italics-trigger*
                                                                               trigger-len)))
                                     result)))
          ((< bold-pos italics-pos)
           (push :normal result)
           (push (subseq text-string 0 bold-pos) result)
           (split-formatted-string (subseq text-string bold-pos) result))
          ((< italics-pos bold-pos)
           (push :normal result)
           (push (subseq text-string 0 italics-pos) result)
           (split-formatted-string (subseq text-string italics-pos) result))
          (t (format t "~&Something went wrong when parsing for formatted string.")))))

(defun string-split-loop (text-string split-string)
  (cond ((null (search split-string text-string)) (list text-string))
        (t (cons (subseq text-string 0 (search split-string text-string))
                 (split-string-to-list
                  (subseq text-string
                          (+ (length split-string)
                             (search split-string text-string)))
                  split-string)))))

(defun split-string-to-list (text-string split-string &optional formatting-p)
  (if formatting-p
      (string-split-loop (split-formatted-string text-string) split-string)
      (string-split-loop text-string split-string)))


;; to be used on score encoding expressions

(defun extract-item (category sub-category data)
  "Returns the contents of a sub-category of a category in the list describing a score. The content is always presented as a list, whether it is a single value or a list of values."
  (rest (find sub-category (rest (find category data :key #'first)) :key #'first)))

(defparameter *test-data*
  `((:header
     (:filename "b1-c10-m1")
     (:alt-name "")
     (:comment "")
     (:creator "Vicentino21 / Johannes Keller")
     (:title "")
     (:section-headings
      (s1 ""))
     (:section-captions
      (s1 ""))
     (:voice-labels
      (:all v1 "")
      (:all v1 "")))
    (:preamble-type-imitation
     (:width nil)
     (:height nil)
     (:background ,*score-bg-color*))
    (:data
     (:music nil
             (:voice v1)
             (:section s1)
             (:f-clef) max7 fclef7 b38 sb3 b22 sb4 b38 sh4 b38 sb4 b38 sb6 b22))))

(defun extract-category (category data)
  "Returns the sublist that is labelled with the `category' keyword in score data."
  (rest (find category data :key #'first)))



;; trivial helper to make class definitions more compact

(defmacro define-setzkasten-class (class-name super-class class-docstring &rest parameters)
  "Creates a simple class with parameters."
  `(defclass ,class-name ,super-class
     ,(mapcar (lambda (par)
        `(,(first par) :initarg ,(make-keyword (first par))
                   :initform ,(second par)
                   :accessor ,(first par)
                   :documentation ,(third par)))
       parameters)
     (:documentation ,class-docstring)))
