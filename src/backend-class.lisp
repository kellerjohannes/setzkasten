(in-package :setzkasten)

(defclass setzkasten-backend ()
  ((output-file-list :initform nil :accessor output-file-list)))

(defgeneric create-score-file (setzkasten-backend score-data suffix)
  (:documentation "Main function to trigger the generation of the graphics file containing the score."))

(defmethod reset-file-list ((backend setzkasten-backend))
  (setf (output-file-list backend) nil))

(defmethod add-output-file ((backend setzkasten-backend) filename)
  (push filename (output-file-list backend)))
