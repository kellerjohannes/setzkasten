(defparameter *test-data*
  '((:metadata
     (:filename "m1.13")
     (:title "Descritione Test")
     (:section-headings
      (s1 "A")
      (s2 "B")
      (s3 "C"))
     (:section-captions
      (s1 "tono minore")
      (s2 "tono maggiore")
      (s3 "terza minima"))
     (:voice-labels
      (:all v1 "Soprano")
      (:all v2 "Tenore")
      (s2 v2 "Alto")))
    (:preamble-types
     (:width nil)
     (:height nil)
     (:background "white"))
    (:preamble-lilypond
     (:width 170))
    (:data
     (:text 50 78 (230 nil "Testext."))
     (:music nil
      (:sec s1) (:voice v1) max7 fclef7 b22 sb3 b22 sb4 b22 sb5 b22 m6 b22 sb5 b22 sb4 b22 sb3 b38 bl
      (:sec s2) cclef7 b38 sb5 b38 sb6 b38 bl
      (:sec s3) (:voice v1) cclef7 b38 sb6 b38 sb7 b38 bl
      (:voice v2) max7 fclef7 b22 sb3 b38 sb4 b38 bl))))


;; TODO
;; voice order: introduce lilypond-preamble field for this, like (:voice-order s1 v1 v2 v3)

(defun extract-item (category sub-category data)
  "Returns the contents of a sub-category of a category in the data list describing a score. If it is a single expression, it returns only this expression, if it is several expressions, it returns a list containing these expressions."
  (let ((result (rest (find sub-category (rest (find category data :key #'first))
                            :key #'first))))
    (if (= 1 (length result))
        (first result)
        result)))

(defun extract-category (category data)
  (rest (find category data :key #'first)))

(defstruct parser-state
  (clef nil)
  (accidental nil)
  (f-clef-flag nil)
  (section "1")
  (voice "1")
  (object-id-counter 0))

(defparameter *score* nil)
(defparameter *parser-state* nil)

(defun process-music (music-data)
  (dolist (music-line music-data)
    (when (eq :music (first music-line))
      (setf (parser-state-object-id-counter *parser-state*) 0)
      (do ((rest-music (rest (rest music-line)) (rest rest-music)))
          ((null rest-music) nil)
        (let ((candidate (first rest-music)))
          (if (listp candidate)
              (case (first candidate)
                (:sec (setf (parser-state-section *parser-state*) (second candidate)))
                (:voice (setf (parser-state-voice *parser-state*) (second candidate)))))
          (format t "~a : " candidate))))))

(defun process-metadata (data)
  (setf (filename *score*) (extract-item :metadata :filename data))
  (setf (title *score*) (extract-item :metadata :title data))
  (mapc (lambda (this-heading)
          (set-section-heading* *score* (first this-heading) (second this-heading)))
        (extract-item :metadata :section-headings data))
  (mapc (lambda (this-caption)
          (set-section-caption* *score* (first this-caption) (second this-caption)))
        (extract-item :metadata :section-captions data))
  (mapc (lambda (this-label)
          (if (eq (first this-label) :all)
              (dolist (sec (sections *score*))
                (set-voice-label* *score* (id sec) (second this-label) (third this-label)))
              (set-voice-label* *score*
                                (first this-label)
                                (second this-label)
                                (third this-label))))
        (extract-item :metadata :voice-labels data)))

(defun parse-score (data)
  (let ((*score* (make-instance 'score :title (extract-item :preamble-lilypond :title data)))
        (*parser-state* (make-parser-state)))
    (process-metadata data)
    (process-music (extract-category :data data))
    (print-element *score*)))
