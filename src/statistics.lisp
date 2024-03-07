(in-package :setzkasten)

(defparameter *statistics-active* nil)

(defparameter *statistics-types* nil)

(defparameter *statistics-notes* nil)

(defun reset-statistics ()
  (setf *statistics-types* nil
        *statistics-notes* nil
        *statistics-active* nil))


(defparameter *type-sheet-header*
  "
\\begin{center}
  {\\Large\\textbf{Moveable Types}}
\\end{center}
\\begin{longtable}{p{1cm}p{3cm}p{1cm}p{19cm}}
  \\toprule
  & Type ID & Occ. & Locations \\\\\\midrule\\endhead
")

(defparameter *sheet-footer* "  \\bottomrule
\\end{longtable}")

(defmacro add-code (source addendum)
  `(setf ,source (concatenate 'string ,source ,addendum)))

(defun find-type-item (id type-hash)
  (gethash id type-hash))

(defun type-item-in-type-hash-p (item type-hash)
  (if (find-type-item (id (getf item :stencil)) type-hash) t nil))

(defun make-type-hash ()
  (let ((result (make-hash-table :test #'equal)))
    (loop for item in *statistics-types*
          do (if (type-item-in-type-hash-p item result)
                 (push (getf item :name) (gethash (id (getf item :stencil)) result))
                 (setf (gethash (id (getf item :stencil)) result)
                       (list (getf item :name)))))
    result))

(defun make-occurrence-list (string-list)
  (let ((result nil))
    (dolist (item string-list (sort result #'string< :key #'car))
      (if (assoc item result)
          (incf (cdr (assoc item result)))
          (push (cons item 1) result)))))

(defun transform-type-hash-to-list (type-hash)
  (let ((result nil))
    (maphash (lambda (key val)
               (push (list key (length val) (make-occurrence-list val))
                     result))
             type-hash)
    (sort result #'string< :key #'first)))

(defun extract-coordinates (id-string)
  (list (parse-integer id-string :start 1 :end 2)
        (parse-integer id-string :start 4 :end 6)
        (parse-integer id-string :start 8 :junk-allowed t)))

(defun generate-id-shorthand (id-string)
  (let ((coordinates (extract-coordinates id-string)))
    (format nil "~a$\\cdot$~a$\\cdot$~a"
            (first coordinates)
            (second coordinates)
            (third coordinates))))

(defun generate-occurrence-string (occurrence-list)
  (let ((result ""))
    (dolist (item occurrence-list (subseq result 0 (- (length result) 2)))
      (add-code result (format nil "~a (~d), " (generate-id-shorthand (car item)) (cdr item))))))

(defun generate-type-sheet ()
  (let ((tex-code *type-sheet-header*)
        (sorted-types (transform-type-hash-to-list (make-type-hash))))
    (loop for item in sorted-types
          do (progn
               (export-svg-type (first item))
               (add-code tex-code
                         (format nil
                                 "~%  \\raisebox{-3mm}{\\includegraphics[height=8mm]{~a~a.pdf}} & ~a & ~a & ~a \\\\
  \\midrule"
                                 *statistics-images-export-path*
                                 (first item)
                                 (first item)
                                 (second item)
                                 (generate-occurrence-string (third item))))))
    (add-code tex-code *sheet-footer*)
    tex-code))


(defun export-svg-type (id)
  (let ((glyph (getf (find id *statistics-types*
                           :test #'string=
                           :key (lambda (item)
                                  (id (getf item :stencil))))
                     :stencil)))
    (with-open-file (svg-file (merge-pathnames *statistics-images-export-path*
                                               (format nil "~a.svg" (id glyph)))
                              :direction :output
                              :if-exists :supersede
                              :if-does-not-exist :create)
      (format svg-file "~a~a~a"
              (toplevel-open (glyph-width glyph)
                             (glyph-height glyph)
                             (id glyph))
              (svg-data glyph)
              (toplevel-close)))))




(defun find-note-item (id note-hash)
  (gethash id note-hash))

(defun note-item-in-note-hash-p (item note-hash)
  (if (find-note-item (pitch (getf item :note)) note-hash) t nil))

(defun generate-note-location (item)
  (append (extract-coordinates (getf item :name))
          (list (getf item :section))
          (list (getf item :voice))))

(defun make-note-hash ()
  (let ((result (make-hash-table :test #'equal)))
    (loop for item in *statistics-notes*
          do (if (note-item-in-note-hash-p item result)
                 (push (generate-note-location item) (gethash (pitch (getf item :note)) result))
                 (setf (gethash (pitch (getf item :note)) result)
                       (list (generate-note-location item)))))
    result))

(defun generate-note-id-shorthand (location-list)
  (format nil "~a$\\cdot$~a$\\cdot$~a|~a$\\cdot$~a"
            (first location-list)
            (second location-list)
            (third location-list)
            (fourth location-list)
            (fifth location-list)))

(defparameter *dict-letters* '((:a . "A")
                               (:b♮ . "B")
                               (:b . "B")
                               (:c . "C")
                               (:d . "D")
                               (:e . "E")
                               (:f . "F")
                               (:g . "G")))

(defparameter *dict-dotted-letters* '((:a . "Ȧ")
                                      (:b♮ . "Ḃ")
                                      (:b . "Ḃ")
                                      (:c . "Ċ")
                                      (:d . "Ḋ")
                                      (:e . "Ė")
                                      (:f . "Ḟ")
                                      (:g . "Ġ")))

(defparameter *dict-accidentals* '((:sharp . "♯")
                                   (:flat . "♭")))

(defparameter *dict-dots* '((:comma . "❜")))

(defun convert-letter (pitch-list)
  (cdr (assoc (first pitch-list) (if (eq (third pitch-list) :dot)
                                     *dict-dotted-letters*
                                     *dict-letters*))))

(defun convert-accidental (pitch-list)
  (if (and (not (second pitch-list)) (eq (first pitch-list) :b))
      "♮"
      (cdr (assoc (second pitch-list) *dict-accidentals*))))

(defun convert-dot (pitch-list)
  (when (eq (third pitch-list) :comma)
    (cdr (assoc (third pitch-list) *dict-dots*))))

(defun generate-note-name (pitch-list)
  (format nil "~a~@[~a~]~@[~a~][~a]"
          (convert-letter pitch-list)
          (convert-accidental pitch-list)
          (convert-dot pitch-list)
          (fourth pitch-list)))

(defun transform-note-hash-to-list (note-hash)
  (let ((result nil))
    (maphash (lambda (key val)
               (push (list (generate-note-name key)
                           (length val)
                           (make-occurrence-list (mapcar #'generate-note-id-shorthand val)))
                     result))
             note-hash)
    (sort result #'string< :key #'first)))


(defparameter *note-sheet-header* "
\\begin{center}
  {\\Large\\textbf{Notes}}
\\end{center}
\\begin{longtable}{p{1cm}p{1cm}p{23cm}}
  \\toprule
  Note & Occ. & Locations \\\\\\midrule\\endhead
")

(defun generate-note-occurrence-string (occurrence-list)
  (let ((result ""))
    (dolist (item occurrence-list (subseq result 0 (- (length result) 2)))
      (add-code result (format nil "~a (~d), " (car item) (cdr item))))))

(defun generate-note-sheet ()
  (let ((tex-code *note-sheet-header*)
        (sorted-notes (transform-note-hash-to-list (make-note-hash))))
    (loop for item in sorted-notes
          do (progn
               (add-code tex-code
                         (format nil
                                 "~%  ~a & ~a & ~a \\\\
  \\midrule"
                                 (first item)
                                 (second item)
                                 (generate-note-occurrence-string (third item))))))
    (add-code tex-code *sheet-footer*)
    tex-code))



(defparameter *latex-sheet-header*
  "\\documentclass[a4paper,DIV=17,landscape,10pt]{scrartcl}
\\usepackage[ngerman]{babel}
\\usepackage{longtable}
\\usepackage{booktabs}
\\usepackage{graphicx}

\\begin{document}")

(defparameter *latex-sheet-footer*
  "\\end{document}")

(defun generate-tex-sheets ()
  (let ((code *latex-sheet-header*))
    (add-code code (generate-type-sheet))
    (add-code code "\\pagebreak")
    (add-code code (generate-note-sheet))
    (add-code code *latex-sheet-footer*)
    (with-open-file (out (merge-pathnames *statistics-export-path* "spreadsheets.tex")
                         :direction :output
                         :if-does-not-exist :create
                         :if-exists :supersede)
      (format out code))
    ;; (uiop:run-program (list "/usr/bin/pdflatex" (format nil "~aspreadsheets.tex"
    ;;                                                     *statistics-export-path*)))
    ))
