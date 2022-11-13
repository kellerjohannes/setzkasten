(in-package :setzkasten)

(defclass setzkasten-backend ()
  ((output-file-list :initform nil :accessor output-file-list)))

(defgeneric create-score-file (setzkasten-backend score-data suffix)
  (:documentation "Main function to trigger the generation of the graphics file containing the score."))

(defmethod reset-file-list ((backend setzkasten-backend))
  (setf (output-file-list backend) nil))

(defmethod add-output-file ((backend setzkasten-backend) filename)
  (push filename (output-file-list backend)))




;; to be deleted, this only concerns one single score, so it should be handled in the section with code about score processing, not on the level of the backend class (which looks after things that are relevant for all scores).

;; (defclass backend-with-score (setzkasten-backend)
;;   ((score-abstraction :initform (make-instance 'score) :accessor score-abstraction)))

;; (defmethod configure-score-abstraction ((backend backend-with-score) score-title score-filename)
;;   (setf (title (score-abstraction backend)) title)
;;   (setf (filename (score-abstraction backend)) filename))

;; ;; TODO to be implemented
;; (defmethod parse-score ((backend setzkasten-backend) score-data)
;;   ;; add call to parse function, using score-abstraction
;;   (declare (ignore backend score-data)))
