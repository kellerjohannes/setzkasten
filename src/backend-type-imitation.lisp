(in-package :setzkasten)

(defclass type-imitation-backend (setzkasten-backend)
  ((components :initform nil
               :initarg components
               :accessor components)
   (glyphs :initform nil
           :initarg glyphs
           :accessor glyphs)
   (syntax :initform nil
           :initarg syntax
           :accessor syntax)))

(defmethod read-configuration ((backend type-imitation-backend) filename element)
  (with-open-file (file filename :direction :input)
    (let ((data (eval (read file))))
      (cond ((eq element :components) (setf (components backend) data))
            ((eq element :glyphs) (setf (glyphs backend) data))
            ((eq element :syntax) (setf (syntax backend) data))
            (t (format t "~&Element type unknown."))))))

(defmethod create-score-file ((backend type-imitation-backend) score suffix)
  (add-output-file backend (create-type-imitation-score score
                                                        suffix
                                                        (components backend)
                                                        (glyphs backend)
                                                        (syntax backend))))

(defun create-score (score)
  (create-type-imitation-score score
                               "-a"
                               *setzkasten-definition-components*
                               *setzkasten-definition-glyphs*
                               *setzkasten-syntax*))
(defun create-all ()
  (create-scores *scores*
                 *setzkasten-definition-components*
                 *setzkasten-definition-glyphs*
                 *setzkasten-syntax*))
