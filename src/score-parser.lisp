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
      max7 fclef7 (:key-signature (3 6) nil) fl3 fl6 b22 sbd5 b22 sb6 b22 nat6 b22 sb6 b22 sb4 b22 sh5 b22 sb5 b22 m6 b22 sb5 b22 sb4 b22 sb3 b38 bl
      (:section s2)
      cclef7 (:key-signature nil nil) b38 sb5 b38 sb6 b38 bl
      (:section s3) (:voice v1)
      cclef7 (:key-signature nil nil) b38 sb6 b38 sb7 b38 bl
      (:voice v2)
      max7 fclef7 (:key-signature nil nil) b22 sb3 b38 sb4 b38 bl))))


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
               :documentation "This slot carries the current accidental state when reading the score encoding. This can only be :sharp, :flat or :natural, in the form of '(:sharp . 7). Enharmonic alterations are always processed within one glyph, therefore they don't need a state slot.")
   (f-clef-flag :initform nil
                :accessor f-clef-flag
                :documentation "This slot is T when a maxima glyph is used to express an f-clef.")
   (key-signature :initform '(nil nil)
                  :accessor key-signature
                  :documentation "This carries information about key signatures. It is provided in the form of two nested lists, the `first' is a list of numbers representing the staff positions of flats, the `second' is a list of number representing the staff positions of sharps.")
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


(defmethod update-clef ((parser-state parser-state) root-pitch staff-position)
  "`root-pitch': :c :f or :g, `staff-position': 0-10."
  (cancel-f-clef-flag parser-state)
  (setf (clef parser-state) (cons root-pitch staff-position)))

(defmethod set-accidental ((parser-state parser-state) accidental staff-position)
  "`accidental': :sharp, :flat or :natural."
  (setf (accidental parser-state) (cons accidental staff-position)))

(defmethod cancel-accidental ((parser-state parser-state))
  (setf (accidental parser-state) nil))

(defmethod raise-f-clef-flag ((parser-state parser-state))
  (setf (f-clef-flag parser-state) t))

(defmethod cancel-f-clef-flag ((parser-state parser-state))
  (setf (f-clef-flag parser-state) nil))

(defmethod set-key-signature ((parser-state parser-state) flat-list sharp-list)
  "`flat-list' and `sharp-list' both contain numbers representing the staff-positions, 0-10."
  (setf (key-signature parser-state) (list flat-list sharp-list)))



(defparameter *gamut*
  '((:c . 1) (:d . 1) (:e . 1) (:f . 1) (:g . 1) (:a . 1) (:b . 1)
    (:c . 2) (:d . 2) (:e . 2) (:f . 2) (:g . 2) (:a . 2) (:b . 2)
    (:c . 3) (:d . 3) (:e . 3) (:f . 3) (:g . 3) (:a . 3) (:b . 3)
    (:c . 4) (:d . 4) (:e . 4) (:f . 4) (:g . 4) (:a . 4) (:b . 4)
    (:c . 5))
  "This is used to calculate an absolute note name (lettera) based on staff position, clef letter and clef position.")

(defparameter *dict-clef-gamut*
  '((:c . (:c . 3))
    (:f . (:f . 2))
    (:g . (:g . 3)))
  "This represents the absolute position of each clef's reference note name within the *gamut*.")

(defun clef->root-pitch (clef)
  "Takes a `clef' in the form of '(:c . 7) and returns a root pitch of the clefs reference note in the form of '(:c . 3), which is pitchclass (lettera) and octave indicator."
  (cdr (assoc (first clef) *dict-clef-gamut*)))

(defun glyph->root-pitch (clef staff-position)
  "Returns "
  (nth (- (position (clef->root-pitch clef) *gamut* :test #'equal)
          (- (cdr clef) staff-position))
       *gamut*))

(defmethod parse-pitch ((parser-state parser-state) staff-position)
  "Returns three values based on `parser-state' and `staff-position': the root note name (`lettera'), the chromatic alteration (:sharp, :flat or :natural) and the octave (1-5)."
  (let ((root-pitch (glyph->root-pitch (clef parser-state) staff-position)))
    (values (car root-pitch)
            (let ((system-accidental nil))
              ;; this is unlispy:
              (when (member staff-position (first (key-signature parser-state)))
                (setf system-accidental :flat))
              (when (member staff-position (second (key-signature parser-state)))
                (setf system-accidental :sharp))
              (if (eq (cdr (accidental parser-state)) staff-position)
                (let ((local-accidental (car (accidental parser-state))))
                  (cancel-accidental parser-state)
                  (if (and (eq system-accidental :flat)
                           (eq local-accidental :natural))
                      nil
                      (or local-accidental system-accidental)))
                system-accidental))
            (cdr root-pitch))))

(defun generate-object-id (counter1 counter2)
  (intern (format nil "L~aO~a" counter1 counter2)))

(defmethod add-note ((score score) (parser-state parser-state) duration dottedp staff-position enharmonic-dot)
  "Create an instance of `mobject' and add it to the `score'. `duration' as keywords (:brevis, :semibrevis, etc.), `dottedp' is T if there is a rhythmic dot ahead, `enharmonic-dot' can be nil, :dot or :comma."
  (add-mobject-to-score score
                        (section-id parser-state)
                        (voice-id parser-state)
                        (multiple-value-bind (lettera chromatic-accidental octave)
                            (parse-pitch parser-state staff-position)
                          (make-note (generate-object-id
                                      (car (object-id-counter parser-state))
                                      (incf (cdr (object-id-counter parser-state))))
                                     lettera
                                     chromatic-accidental
                                     enharmonic-dot
                                     octave
                                     duration
                                     dottedp
                                     (clef parser-state)
                                     (key-signature parser-state)))))


(defmacro configure-parser (glyph-list)
  `(defmethod parse-glyph ((score score) (parser-state parser-state) glyph dottedp)
     (case glyph
       ,@(mapcar (lambda (definition)
                   (case (first definition)
                     (:note `(,(second definition) (add-note score
                                                             parser-state
                                                             ,(third definition)
                                                             dottedp
                                                             ,(fourth definition)
                                                             ,(fifth definition))))
                     (:accidental `(,(second definition) (set-accidental parser-state
                                                                         ,(third definition)
                                                                         ,(fourth definition))))
                     (:clef `(,(second definition) (update-clef parser-state
                                                                ,(third definition)
                                                                ,(fourth definition))))))
          glyph-list))))


(defun read-parser-configuration (location)
  (with-open-file (config-file (merge-pathnames *configuration-path*
                                                (pathname location))
                               :direction :input)
    (eval (read config-file))))

(read-parser-configuration "parser-configuration.lisp")

(defun detect-dots (rest-music dot-list note-list)
  (dolist (item rest-music)
    (when (member item dot-list) (return t))
    (when (member item note-list) (return nil))))

(defmethod process-music ((score score) (parser-state parser-state) music-data)
  "Process a :music field in the score encoding data, element by element. Populate the `score' instance."
  (dolist (music-line music-data)
    (when (eq :music (first music-line))
      (incf (car (object-id-counter parser-state)))
      (setf (cdr (object-id-counter parser-state)) 0)
      (do ((rest-music (rest (rest music-line)) (rest rest-music)))
          ((null rest-music) nil)
        (let ((candidate (first rest-music)))
          (if (listp candidate)
              (case (first candidate)
                (:section (setf (section-id parser-state) (second candidate)))
                (:voice (setf (voice-id parser-state) (second candidate)))
                (:f-clef (raise-f-clef-flag parser-state))
                (:key-signature
                 (set-key-signature parser-state (second candidate) (third candidate))
                 (cancel-accidental parser-state))))
          ;; here the glyph processing happens
          (if (f-clef-flag parser-state)
              (when (member candidate *f-clef-triggers*) (cancel-f-clef-flag parser-state))
              (parse-glyph score parser-state candidate
                           (detect-dots (rest rest-music)
                                        *list-of-duration-dots*
                                        *list-of-notes*))))))))

(defmethod process-metadata ((score score) (parser-state parser-state) score-data)
  "Process the backend-agnostic :header information in the score encoding data and write it into the `score' instance."
  (setf (filename score) (extract-item :header :filename score-data))
  (setf (title score) (extract-item :header :title score-data))
  (setf (comment score) (extract-item :header :comment score-data))
  (setf (creator score) (extract-item :header :creator score-data))
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
    ;; this is for debugging / development only. possibly this output could go into a file.
    (print-element score)
    score))
