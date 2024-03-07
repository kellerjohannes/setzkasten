(defpackage :setzkasten
  (:import-from :cl-ppcre :regex-replace-all)
  (:import-from :vicentino-tunings :setzkasten-pitch)
  (:use :cl)
  (:export :get-parsed-score
           :process-score
           :execute-mission
           :get-mobjects-in-voice
           :get-pitch
           :execute))

(in-package :setzkasten)

(defparameter *global-bg-color* nil
  ;; "#e3f3ff"
  )

(defparameter *score-bg-color* nil
  ;; "white"
  )

(defparameter *score-processing* t)

(defparameter *svg-export-path*
  (pathname "/home/johannes/common-lisp/setzkasten-output/svg/"))

(defparameter *apparatus-export-path-raw*
  (pathname "/home/johannes/common-lisp/setzkasten-output/apparatus/raw/"))

(defparameter *apparatus-export-path-tex-standalones*
  (pathname "/home/johannes/common-lisp/setzkasten-output/apparatus/tex/standalones/"))

(defparameter *apparatus-export-path-tex-imports*
  (pathname "/home/johannes/common-lisp/setzkasten-output/apparatus/tex/imports/"))

(defparameter *apparatus-export-path-tei*
  (pathname "/home/johannes/common-lisp/setzkasten-output/apparatus/tei/"))

(defparameter *mini-standalones*
  (pathname "/home/johannes/common-lisp/setzkasten-output/standalones/"))

(defparameter *encoding-source*
  (pathname "/home/johannes/common-lisp/setzkasten/encoding/"))

(defparameter *log-file-path*
  (pathname "/home/johannes/common-lisp/setzkasten-output/logfiles/"))

(defparameter *configuration-path*
  (pathname "/home/johannes/common-lisp/setzkasten/backend-configuration/"))

(defparameter *lilypond-export-path*
  (pathname "/home/johannes/common-lisp/setzkasten-output/ly/"))

(defparameter *lilypond-path*
  (pathname "/usr/bin/lilypond"))

(defparameter *visual-score-export-path*
  (pathname "/home/johannes/common-lisp/setzkasten-output/visual-score/"))

(defparameter *statistics-export-path*
  (pathname "/home/johannes/common-lisp/setzkasten-output/statistics/"))

(defparameter *statistics-images-export-path*
  (pathname "/home/johannes/common-lisp/setzkasten-output/statistics/images/"))
