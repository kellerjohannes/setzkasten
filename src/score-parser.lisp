(in-package :setzkasten)

;; TODO implement data extraction for type-imitation-backend, since currently it is expecting old-fashioned lists without :header and :data keywords

;; this will be deleted, once the parsing can be part of 'mission execution'
(defparameter *test-data*
  '((:header
     (:filename "m1.13")
     (:comment "Testdata, for developing purposes only.")
     (:creator "Johannes Keller")
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
    (:preamble-type-imitation
     (:width nil)
     (:height nil)
     (:background "white"))
    (:preamble-lilypond
     (:width 170)
     (:voice-order s1 v1 v2)
     (:voice-order s2 v2 v1))
    (:data
     (:text 50 78 (230 nil "Testext."))
     (:music nil
      (:section s1) (:voice v1)
      max7 fclef7 b22 sb3 b22 sb4 b22 sb5 b22 m6 b22 sb5 b22 sb4 b22 sb3 b38 bl
      (:section s2)
      cclef7 b38 sb5 b38 sb6 b38 bl
      (:section s3) (:voice v1)
      cclef7 b38 sb6 b38 sb7 b38 bl
      (:voice v2)
      max7 fclef7 b22 sb3 b38 sb4 b38 bl))))


(defun extract-item (category sub-category data)
  "Returns the contents of a sub-category of a category in the list describing a score. If it is a single expression, it returns only this expression, if it is several expressions, it returns a list containing these expressions."
  (let ((result (rest (find sub-category (rest (find category data :key #'first))
                            :key #'first))))
    (if (= 1 (length result))
        (first result)
        result)))

(defun extract-category (category data)
  "Returns the sublist that is labelled with the `category' keyword in score data."
  (rest (find category data :key #'first)))






(defclass parser-state ()
  ((clef :initform nil
         :accessor clef
         :documentation "This slot carries the current clef state when reading the score encoding.")
   (accidental :initform nil
               :accessor accidental
               :documentation "This slot carries the current accidental state when reading the score encoding. This can only be :sh, :fl or :nat. Enharmonic alterations are always processed within one glyph, therefore they don't need a state slot.")
   (f-clef-flag :initform nil
                :accessor f-clef-flag
                :documentation "This slot is T when a maxima glyph is used to express an f-clef.")
   (section-id :initform 'a
               :accessor section-id
               :documentation "This symbol carries the current section id, it is used to direct score information into the correct `section' instance.")
   (voice-id :initform 1
             :accessor voice-id
             :documentation "This symbol carries the current voice id, it is used to direct score information into the correct `voice' instance.")
   (object-id-counter :initform '(0 . 0)
                      :accessor object-id-counter
                      :documentation "This counter can be used to create unique ids for score objects. The car represents the line, the cdr the musical object."))
  (:documentation "This class keeps track of various elements during the reading process of score encoding data."))

(defmethod process-music ((score score) (parser-state parser-state) music-data)
  (dolist (music-line music-data)
    (when (eq :music (first music-line))
      (setf (car (object-id-counter parser-state)) 0)
      (do ((rest-music (rest (rest music-line)) (rest rest-music)))
          ((null rest-music) nil)
        (let ((candidate (first rest-music)))
          (if (listp candidate)
              (case (first candidate)
                (:section (setf (section-id parser-state) (second candidate)))
                (:voice (setf (voice-id parser-state) (second candidate)))))
          ;; TODO here comes the actual parsing of glyphs
          ;(format t "~a : " candidate)
          )))))

(defmethod process-metadata ((score score) (parser-state parser-state) score-data)
  (setf (filename score) (extract-item :header :filename score-data))
  (setf (title score) (extract-item :header :title score-data))
  (mapc (lambda (this-heading)
          (set-section-heading* score (first this-heading) (second this-heading)))
        (extract-item :header :section-headings score-data))
  (mapc (lambda (this-caption)
          (set-section-caption* score (first this-caption) (second this-caption)))
        (extract-item :header :section-captions score-data))
  (mapc (lambda (this-label)
          (if (eq (first this-label) :all)
              (dolist (this-section (sections score))
                (set-voice-label* score (id this-section) (second this-label) (third this-label)))
              (set-voice-label* score (first this-label) (second this-label) (third this-label))))
        (extract-item :header :voice-labels score-data)))

(defun parse-score (data)
  (let ((score (make-instance 'score))
        (parser-state (make-instance 'parser-state)))
    (process-metadata score parser-state data)
    (process-music score parser-state (extract-category :data data))
    (print-element score)
    score))
