(in-package :setzkasten)

(defclass setzkasten-backend ()
  ((output-file-list :initform nil :accessor output-file-list)))

(defgeneric create-score-file (setzkasten-backend score-data suffix)
  (:documentation "Main function to trigger the generation of the graphics file containing the score."))


;; TODO
;; differentiation of score/app import commands to be implemented and tested
(defparameter *dict-suffix-mini*
  '(("barre" . "scoreBarre")
    ("crit" . "scoreCrit")
    ("norm-it" . "scoreNormIt")
    ("norm-en" . "scoreNormEn")
    ("norm-de" . "scoreNormDe")
    ("norm-it-origclef" . "scoreNormItOrig")
    ("norm-en-origclef" . "scoreNormEnOrig")
    ("norm-de-origclef" . "scoreNormDeOrig")
    ))

(defmethod create-score-file :after ((backend setzkasten-backend) score-data suffix)
  "Creates a standalone .tex file to host a pdf of the generated score, bundled with the apparatus."
  (let ((filename (filename (parse-score score-data))))
    (with-open-file (tex-standalone (merge-pathnames *mini-standalones*
                                                     (pathname (format nil "vicentino21-~a-~a.tex"
                                                                       filename
                                                                       suffix)))
                                    :if-does-not-exist :create
                                    :if-exists :supersede
                                    :direction :output)
      (format tex-standalone "\\input{header/standalone-header}

\\begin{document}

\\begin{minipage}{21cm}

\\scoreCrit{~a}
\\appImportCrit{~a}

\\end{minipage}

\\end{document}
"
              filename
              filename))))

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
