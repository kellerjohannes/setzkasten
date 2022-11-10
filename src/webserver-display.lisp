(in-package :setzkasten)

(defmacro standard-page ((&key title script) &body body)
  `(with-html-output-to-string (*standard-output* nil :prologue t :indent t)
     (:html :lang "en" :style "background-color:PeachPuff"
            (:head (:meta :charset "utf-8")
                   (:title ,title)
                   (:link :type "text/css"
                          :rel "stylesheet"
                          :href "/retro.css")
                   ,(when script
                      `(:script :type "text/javascript"
                                (str ,script))))
            (:body
             (:div :id "header"
                   (:span :class "strapline"
                          "Setzkasten Output"))
             ,@body))))

(defun start-server (port)
  (hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port port)))

(defun read-file (infile)
  (with-open-file (instream infile :direction :input
                                   :if-does-not-exist nil)
    (when instream
      (let ((string (make-string (file-length instream))))
        (read-sequence string instream)
        string))))

(define-easy-handler (setzkasten-output :uri "/setzkasten") ()
  (standard-page (:title "Setzkasten Output")
    (:h1 "All scores produced by Setzkasten")
    (dolist (score (create-all))
      (htm
       (:div
        (:h3 (fmt "~&Score '~a':" score))
        (fmt "~a"
             (read-file (merge-pathnames *svg-export-path*
                                         (pathname (format nil "~a.svg" score))))))))))

(defun main ()
  (start-server 5000))
