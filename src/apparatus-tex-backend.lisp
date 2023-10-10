(in-package :setzkasten)

(defparameter *latex-header*
  "\\documentclass[10pt,DIV=19,landscape,a3paper]{scrartcl}
\\usepackage[utf8]{inputenc}
\\usepackage{graphicx}
\\usepackage{longtable}
\\usepackage{booktabs}
\\usepackage[ngerman]{babel}
\\usepackage{wrapfig}
\\usepackage{rotating}
\\usepackage[normalem]{ulem}
\\usepackage{amsmath}
\\usepackage{amssymb}
\\usepackage{capt-of}
\\usepackage{soul}
\\usepackage{fontspec}
\\usepackage{lmodern}
\\usepackage{stackengine}
\\newcommand\\textdot[1]{\\stackon[1pt]{#1}{.}}
\\newcommand\\per{\\lower5pt\\hbox{--}\\kern-6pt p}

\\usepackage{newunicodechar}
\\newunicodechar{♮}{$\\natural$}
\\newunicodechar{♭}{$\\flat$}
\\newunicodechar{♯}{$\\sharp$}
\\newunicodechar{➚}{$\\nearrow$}
\\newunicodechar{➘}{$\\searrow$}
\\newunicodechar{Ȧ}{\\.A}
\\newunicodechar{Ḃ}{\\.B}
\\newunicodechar{Ċ}{\\.C}
\\newunicodechar{Ḋ}{\\.D}
\\newunicodechar{Ė}{\\.E}
\\newunicodechar{Ḟ}{\\.F}
\\newunicodechar{Ġ}{\\.G}
\\newunicodechar{Ɋ}{\\caps{Q}}
\\newunicodechar{ꝑ}{{\\per}}
\\newunicodechar{ſ}{{\\fontencoding{TS1}\\selectfont\\char115}}
\\newunicodechar{«}{\\frqq{}}
\\newunicodechar{»}{\\flqq{}}

\\begin{document}
")

(defparameter *latex-footer*
  "
\\end{document}
")


(defun generate-latex-title (meta-data-plist)
  (format nil "
\\begin{center}
  {\\Large\\fbox{~a}}
  \\vspace{3mm}

  Alternative Nummerierung: \\textsf{~a}\\\\
  Bemerkung: \\textsf{~a}\\\\
  Referenz-Lesart (Original): \\textsf{~a}\\\\

\\end{center}"
          (getf meta-data-plist :filename)
          (getf meta-data-plist :alternative-numbering)
          (make-string-latex-friendly (getf meta-data-plist :comment))
          (prettify-keyword (getf meta-data-plist :reference-reading))))

(defun generate-latex-title-compact (meta-data-plist)
  (format nil "
\\begin{center}
  {\\Large\\fbox{~a}}
  \\vspace{3mm}

  Alternative Nummerierung: »\\textsf{~a}«\\\\
  Hierarchie der Lesarten: »\\textsf{~a}«\\\\
  Bemerkung: »\\textsf{~a}«\\\\

\\end{center}"
          (getf meta-data-plist :filename)
          (getf meta-data-plist :alternative-numbering)
          ":barre"
          (make-string-latex-friendly (getf meta-data-plist :comment))))

(defparameter *latex-table-header*
   "
\\renewcommand{\\arraystretch}{1.2}
\\begin{longtable}{p{2cm}p{2.5cm}p{5mm}p{5mm}p{2.5cm}p{5mm}p{5mm}p{4cm}p{4cm}p{1.5cm}p{1.5cm}p{10cm}}
  \\toprule
  ID &
  Kategorie &
  Zeile &
  Type &
  Element &
  Sec. &
  Voi. &
  Original &
  Korrektur &
  Lesart &
  Tag &
  Kommentar \\\\
  \\midrule

")

(defparameter *latex-table-header-compact*
   "
\\renewcommand{\\arraystretch}{1.2}
\\begin{longtable}{p{5mm}p{4cm}p{4cm}p{7cm}}
  \\toprule
  ID &
  Koord. Barré &
  Koord. Normalisierung &
  Kommentar \\\\
  \\midrule

")


(defparameter *latex-table-footer*
  "
  \\bottomrule
\\end{longtable}
")


(defun generate-latex-table-music-line (data id-prefix)
  (format nil "
  \\textsf{~a-i~a} &
  Musik &
  ~a &
  ~a &
  ~a &
  ~a &
  ~a &
  \\textsf{~a} &
  \\textsf{~a} &
  \\textsf{~a} &
  \\textsf{~a} &
  ~a\\\\

"
          id-prefix
          (getf data :id)
          (getf data :type-imitation-line)
          (getf data :type-imitation-glyph)
          (getf data :musical-element)
          (extract-number (getf data :score-section))
          (extract-number (getf data :score-voice))
          (make-string-latex-friendly (print-naked-list (getf data :original)))
          (make-string-latex-friendly (print-naked-list (getf data :replacement)))
          (prettify-keyword (getf data :reading))
          (prettify-keyword (getf data :flag))
          (make-string-latex-friendly (generate-latex-formatting (getf data :comment)))))

(defun generate-latex-table-generic-line-compact (data)
  (format nil "
  ~a &
  ~a &
  ~a &
  ~a\\\\

"
          (getf data :id)
          (getf data :coord-barre)
          (getf data :coord-norm)
          (make-string-latex-friendly (generate-latex-formatting (getf data :comment)))
          ))

(defun generate-latex-table-type-text-line (data id-prefix)
  (format nil "
  \\textsf{~a-i~a} &
  Text (Typen) &
  ~a &
  -- &
  ~a &
  -- &
  -- &
  »~a« &
  »~a« &
  \\textsf{~a} &
  \\textsf{~a} &
  ~a\\\\

"
          id-prefix
          (getf data :id)
          (getf data :type-imitation-line)
          (getf data :type-imitation-text-field)
          (make-string-latex-friendly (first (getf data :original)))
          (make-string-latex-friendly (first (getf data :replacement)))
          (prettify-keyword (getf data :reading))
          (prettify-keyword (getf data :flag))
          (make-string-latex-friendly (generate-latex-formatting (getf data :comment)))))

(defun generate-latex-table-modern-text-line (data id-prefix)
  (let ((location (getf data :score-text-location)))
    (format nil "
  \\textsf{~a-i~a} &
  Text (modern) &
  -- &
  -- &
  \\textsf{~a} &
  ~a &
  ~a &
  -- &
  -- &
  -- &
  \\textsf{~a} &
  ~a \\\\

"
            id-prefix
            (getf data :id)
            (prettify-keyword (first location))
            (if (second location) (extract-number (second location)) "--")
            (if (third location) (extract-number (third location)) "--")
            (prettify-keyword (getf data :flag))
            (make-string-latex-friendly (generate-latex-formatting (getf data :comment))))))

(defun generate-latex-table-line (data id-prefix)
  (let ((result ""))
    (dolist (entry data result)
      (setf result
            (concatenate 'string
                         result
                         (case (first entry)
                           (:music
                            (generate-latex-table-music-line (rest entry) id-prefix))
                           (:type-imitation-text
                            (generate-latex-table-type-text-line (rest entry) id-prefix))
                           (:normalised-text
                            (generate-latex-table-modern-text-line (rest entry) id-prefix))
                           (otherwise "")))))))

(defun coordinates-exist-p (entry)
  (or (getf entry :coord-norm) (getf entry :coord-barre)))

(defun generate-latex-table-line-compact (data)
  (let ((result ""))
    (dolist (entry data result)
      (when (coordinates-exist-p (rest entry))
        (setf result
              (concatenate 'string
                           result
                           (generate-latex-table-generic-line-compact (rest entry))))))))

(defun generate-latex-table (data)
  (concatenate 'string
               *latex-table-header*
               (generate-latex-table-line (sort data #'< :key (lambda (entry)
                                                                (let ((id (getf (rest entry) :id)))
                                                                  (if id id 0))))
                                          (getf (extract-meta-data data) :filename))
               *latex-table-footer*))

(defun generate-latex-table-compact (data)
  (concatenate 'string
               *latex-table-header-compact*
               (generate-latex-table-line-compact
                (sort data #'< :key (lambda (entry)
                                      (let ((id (getf (rest entry) :id)))
                                        (if id id 0)))))
               *latex-table-footer*))

(defun extract-meta-data (data)
  (rest (find :metadata data :key #'first)))

(defun generate-latex-entry (filename)
  (with-open-file (in-file (merge-pathnames *apparatus-export-path-raw*
                                            (pathname (format nil "app-~a.lisp" filename))))
    (with-standard-io-syntax
      (let ((data (read in-file)))
        (concatenate 'string
                     (generate-latex-title (extract-meta-data data))
                     (if (> (length data) 1)
                         (generate-latex-table data)
                         ""))))))

(defun generate-latex-entry-compact (filename)
  (with-open-file (in-file (merge-pathnames *apparatus-export-path-raw*
                                            (pathname (format nil "app-~a.lisp" filename))))
    (with-standard-io-syntax
      (let ((data (read in-file)))
        (concatenate 'string
                     (generate-latex-title-compact (extract-meta-data data))
                     (if (> (length data) 1)
                         (generate-latex-table-compact data)
                         ""))))))

(defun generate-latex-apparatus-import-compact-fragments (filename)
  (with-open-file (latex-stream
                   (merge-pathnames *apparatus-export-path-tex-imports*
                                    (pathname (format nil "app-~a-compact.tex" filename)))
                   :direction :output
                   :if-does-not-exist :create
                   :if-exists :supersede)
    (format latex-stream "~a"
            (generate-latex-entry-compact filename))))

(defun generate-latex-apparatus-import-fragments (filename)
  (with-open-file (latex-stream (merge-pathnames *apparatus-export-path-tex-imports*
                                                 (pathname (format nil "app-~a.tex" filename)))
                                :direction :output
                                :if-does-not-exist :create
                                :if-exists :supersede)
    (format latex-stream "~a"
            (generate-latex-entry filename))))

(defun generate-latex-apparatus-standalone (filename)
  (with-open-file (latex-stream (merge-pathnames *apparatus-export-path-tex-standalones*
                                                 (pathname (format nil "app-~a.tex" filename)))
                                :direction :output
                                :if-does-not-exist :create
                                :if-exists :supersede)
    (format latex-stream "~a"
            (concatenate 'string
                         *latex-header*
                         (generate-latex-entry filename)
                         *latex-footer*))))
