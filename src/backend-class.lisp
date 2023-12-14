(in-package :setzkasten)

(defclass setzkasten-backend ()
  ((output-file-list :initform nil :accessor output-file-list)))

(defgeneric create-score-file (setzkasten-backend score-data suffix)
  (:documentation "Main function to trigger the generation of the graphics file containing the score."))


(defun extract-components (filename)
  (let* ((first-dash (position "-" filename :test #'string-equal))
         (second-dash (position "-" filename :test #'string-equal :start (1+ first-dash))))
    (list (parse-integer (subseq filename 1 first-dash))
          (parse-integer (subseq filename (+ 2 first-dash) second-dash))
          (parse-integer (subseq filename (+ 2 second-dash))))))

(defparameter *dict-cite-italian-libro*
  '((0 . "Libro della theorica")
    (1 . "Primo libro della prattica")
    (2 . "Secondo libro della prattica")
    (3 . "Terzo libro della prattica")
    (4 . "Quarto libro della prattica")
    (5 . "Quinto libro della prattica")))

(defun expand-filename-to-italian (filename)
  (let ((data (extract-components filename)))
    (format nil "~a, capitolo ~@r, esempio ~s"
            (cdr (assoc (first data) *dict-cite-italian-libro*))
            (second data)
            (third data))))

(defun expand-filename-to-german (filename)
  (let ((data (extract-components filename)))
    (format nil "Buch ~s, Kapitel ~s, Musikbeispiel ~s" (first data) (second data) (third data))))

(defun expand-filename-to-english (filename)
  (let ((data (extract-components filename)))
    (format nil "Book ~s, chapter ~s, example ~s" (first data) (second data) (third data))))

(defparameter *dict-suffix-mini*
  '((:suffix "barre"
     :score-command "scoreBarre"
     :app-command "appImportBarre"
     :cite-fun expand-filename-to-italian
     :title "Vicentino21, Fassung »Barré«"
     :app-title "Kritischer Bericht")
    (:suffix "crit"
     :score-command "scoreCrit"
     :app-command "appImportCrit"
     :cite-fun expand-filename-to-italian
     :title "Vicentino21, kritische Edition"
     :app-title "Kritischer Bericht")
    (:suffix "norm-it"
     :score-command "scoreNormIt"
     :app-command "appImportCrit"
     :cite-fun expand-filename-to-italian
     :title "Vicentino21, kritische Edition"
     :app-title "Kritischer Bericht")
    (:suffix "norm-en"
     :score-command "scoreNormEn"
     :app-command "appImportCrit"
     :cite-fun expand-filename-to-english
     :title "Vicentino21, critical translated edition in modern clefs"
     :app-title "Critical annotations")
    (:suffix "norm-de"
     :score-command "scoreNormDe"
     :app-command "appImportCrit"
     :cite-fun expand-filename-to-german
     :title "Vicentino21, kritische, übersetzte Edition in moderner Schlüsselung"
     :app-title "Kritischer Bericht")
    (:suffix "norm-it-origclef"
     :score-command "scoreNormItOrig"
     :app-command "appImportCrit"
     :cite-fun expand-filename-to-italian
     :title "Vicentino21, kritische Edition in originaler Schlüsselung"
     :app-title "Kritischer Bericht")
    (:suffix "norm-en-origclef"
     :score-command "scoreNormEnOrig"
     :app-command "appImportCrit"
     :cite-fun expand-filename-to-english
     :title "Vicentino21, critical translated edition in original clefs"
     :app-title "Critical annotations")
    (:suffix "norm-de-origclef"
     :score-command "scoreNormDeOrig"
     :app-command "appImportCrit"
     :cite-fun expand-filename-to-german
     :title "Vicentino21, kritische, übersetzte Edition in originaler Schlüsselung"
     :app-title "Kritischer Bericht")
    (:suffix "[unknown]"
     :score-command "scoreNormIt"
     :app-command "appImportCrit"
     :cite-fun expand-filename-to-italian
     :title "Vicentino21, kritische Edition"
     :app-title "Kritischer Bericht")
    ))

(defun get-mini-element (suffix key)
  (let ((result (getf (find suffix *dict-suffix-mini*
              :test #'string-equal
              :key #'(lambda (element)
                       (getf element :suffix)))
        key)))
    (if result
        result
        (unless (string= suffix "[unknown]")
          (get-mini-element "[unknown]" key)))))



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

\\vspace{5mm}
\\begin{center}
  {\\Large ~a}\\\\[1mm]
  \\textit{~a}\\\\
\\end{center}

\\~a{~a}

\\begin{center}

\\~a{~a}

\\end{center}

\\end{minipage}

\\end{document}
"
              (get-mini-element suffix :title)
              (funcall (get-mini-element suffix :cite-fun) filename)
              (get-mini-element suffix :score-command)
              filename
              (get-mini-element suffix :app-command)
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
