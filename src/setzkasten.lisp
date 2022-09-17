(ql:quickload :hunchentoot)
(ql:quickload :cl-who)
(ql:quickload :cl-ppcre)

(defpackage :setzkasten
  (:import-from :cl-ppcre :regex-replace-all)
  (:use :cl :hunchentoot :cl-who))

(in-package :setzkasten)

(defparameter *svg-export-path* (pathname "~/Vicentino21/edition/setzkasten/svg-export/"))

(defun reduce-string-list (lst)
  (reduce (lambda (a b) (concatenate 'string a b)) lst))

(defparameter *score-margins* '(0 0 0 0))

;; system components
(load "~/Vicentino21/edition/setzkasten/src/vector-package.lisp")
(load "~/Vicentino21/edition/setzkasten/src/svg-generator.lisp")
(load "~/Vicentino21/edition/setzkasten/src/class-definitions.lisp")
(load "~/Vicentino21/edition/setzkasten/src/casting.lisp")
(load "~/Vicentino21/edition/setzkasten/src/setzkasten-syntax.lisp")
(load "~/Vicentino21/edition/setzkasten/src/typesetter.lisp")

;; user defined data
(load "~/Vicentino21/edition/setzkasten/src/glyph-definitions.lisp")
(load "~/Vicentino21/edition/setzkasten/src/score-definitions.lisp")


(defun create-all ()
  (create-scores *scores*
                 *setzkasten-definition-components*
                 *setzkasten-definition-glyphs*
                 *setzkasten-syntax*))



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
  (start (make-instance 'easy-acceptor :port port)))

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
