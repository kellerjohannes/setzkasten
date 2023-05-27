(in-package :setzkasten)

(defclass lilypond-backend (setzkasten-backend)
  ())

(defun create-visual-score (score-data backend suffix)

  )

(defmethod create-score-file ((backend lilypond-backend) score suffix)
  (add-output-file backend (create-visual-score (parse-score score suffix) backend suffix)))
