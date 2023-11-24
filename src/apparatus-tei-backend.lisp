(in-package :setzkasten)

(defparameter *tei-header*
  "<noteGrp type=\"music\">")

(defparameter *tei-footer*
  "
</noteGrp>")

(defun generate-tei-table-line (entry filename)
  (format nil "
  <note type=\"music\" subtype=\"~a\" xml:id=\"~a\" n=\"~a\" corresp-barre=\"~a\" corresp-modern=\"~a\">
    ~a
  </note>"
          (prettify-keyword (getf entry :reading))
          (format nil "~a-app-~a" filename (getf entry :id))
          (getf entry :id)
          (getf entry :coord-barre)
          (getf entry :coord-norm)
          (getf entry :comment)))

(defun generate-tei-table (data filename)
  (let ((result nil))
    (dolist (entry
             (sort data #'< :key (lambda (entry) (let ((id (getf (rest entry) :id))) (if id id 0))))
             result)
      (setf result (concatenate 'string result
                                (generate-tei-table-line (rest entry) filename))))))

(defun generate-tei-entry (filename selectors)
  (with-open-file (in-file (merge-pathnames *apparatus-export-path-raw*
                                            (pathname (format nil "app-~a.lisp" filename))))
    (with-standard-io-syntax
      (let* ((data (read in-file))
             (content (generate-tei-table (strip-table-data data selectors) filename)))
        (if (> (length content) 0)
            (concatenate 'string
                         *tei-header*
                         content
                         *tei-footer*)
            "")))))


(defun generate-tei-apparatus (filename selectors)
  (with-open-file (tei-stream (merge-pathnames *apparatus-export-path-tei*
                                               (pathname (format nil "app-~a.xml" filename)))
                              :direction :output
                              :if-does-not-exist :create
                              :if-exists :supersede)
    (format tei-stream "~a"
            (generate-tei-entry filename selectors))))
