(defpackage :setzkasten
  (:use :cl))

(in-package :setzkasten)

(defparameter *svg-export-path* (pathname "~/Vicentino21/edition/setzkasten/lisp/svg-export/"))

(defun reduce-string-list (lst)
  (reduce (lambda (a b) (concatenate 'string a b)) lst))

;; system components
(load "~/Vicentino21/edition/setzkasten/lisp/vector-package.lisp")
(load "~/Vicentino21/edition/setzkasten/lisp/svg-generator.lisp")
(load "~/Vicentino21/edition/setzkasten/lisp/class-definitions.lisp")
(load "~/Vicentino21/edition/setzkasten/lisp/casting.lisp")
(load "~/Vicentino21/edition/setzkasten/lisp/setzkasten-syntax.lisp")
(load "~/Vicentino21/edition/setzkasten/lisp/typesetter.lisp")

;; user defined data
(load "~/Vicentino21/edition/setzkasten/lisp/glyph-definitions.lisp")
(load "~/Vicentino21/edition/setzkasten/lisp/score-definitions.lisp")


(defun create-all ()
  (create-scores *scores*
		 *setzkasten-definition-components*
		 *setzkasten-definition-glyphs*
		 *setzkasten-syntax*))
