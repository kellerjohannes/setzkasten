(require :cl-who)
(require :hunchentoot)
(require :parenscript)
(require :cl-svg)

(defpackage :setzkasten
  (:use :cl :cl-svg :cl-who :parenscript))

(in-package :setzkasten)

(defparameter *svg-export-path* (pathname "~/Vicentino21/edition/setzkasten/lisp/svg-export/"))
(load "class-definitions.lisp")
(load "casting.lisp")
