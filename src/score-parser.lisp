(in-package :setzkasten)

(defclass parser-state ()
  ((clef :initform '(:f . 7)
         :accessor clef
         :documentation "This slot carries the current clef state when reading the score encoding.")
   (accidental :initform nil
               :accessor accidental
               :documentation "This slot carries the current accidental state when reading the score encoding. This can only be :sharp, :flat or :natural, in the form of '(:sharp . 7). Enharmonic alterations are always processed within one glyph, therefore they don't need a state slot.")
   (f-clef-flag :initform nil
                :accessor f-clef-flag
                :documentation "This slot is T when a maxima glyph is used to express an f-clef.")
   (key-signature :initform '(nil nil nil nil nil nil nil)
                  :accessor key-signature
                  :documentation "This carries information about key signatures. It is provided in the form of a list of 7 atoms, describing the alterations of a c major scale (see Lilypond key signature syntax), either with nil, :flat or :sharp.")
   (section-id :initform 'a
               :accessor section-id
               :documentation "This symbol carries the current section id, it is used to direct score information into the correct `section' instance.")
   (voice-id :initform 1
             :accessor voice-id
             :documentation "This symbol carries the current voice id, it is used to direct score information into the correct `voice' instance.")
   (object-id-counter :initform 0
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

(defmethod set-key-signature ((parser-state parser-state) accidental-list)
  "`flat-list' and `sharp-list' both contain numbers representing the staff-positions, 0-10."
  (setf (key-signature parser-state) accidental-list))



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
  "Returns a note name letter (lettera) as a keyword."
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

(defun generate-object-id (counter)
  (intern (format nil "OB~a" counter)))

(defmethod add-note ((score score) (parser-state parser-state) duration dottedp staff-position enharmonic-dot)
  "Create an instance of `mobject' and add it to the `score'. `duration' as keywords (:brevis, :semibrevis, etc.), `dottedp' is T if there is a rhythmic dot ahead, `enharmonic-dot' can be nil, :dot or :comma."
  (add-mobject-to-score score
                        (section-id parser-state)
                        (voice-id parser-state)
                        (multiple-value-bind (lettera chromatic-accidental octave)
                            (parse-pitch parser-state staff-position)
                          (make-note (generate-object-id (object-id-counter parser-state))
                                     lettera
                                     chromatic-accidental
                                     enharmonic-dot
                                     octave
                                     duration
                                     dottedp
                                     (clef parser-state)
                                     (key-signature parser-state)))))


(defmethod add-rest ((score score) (parser-state parser-state) duration dottedp)
  (add-mobject-to-score score
                        (section-id parser-state)
                        (voice-id parser-state)
                        (make-rest (generate-object-id (object-id-counter parser-state))
                                   duration
                                   dottedp
                                   (clef parser-state)
                                   (key-signature parser-state))))

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
                     (:rest `(,(second definition) (add-rest score
                                                             parser-state
                                                             ,(third definition)
                                                             dottedp)))
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

;; does not work yet. should be moved to dispatcher code section, if possible
                                        ;(read-parser-configuration "parser-configuration.lisp")




(defun detect-dots (rest-music dot-list note-list)
  (dolist (item rest-music)
    (when (member item dot-list) (return t))
    (when (member item note-list) (return nil))))

(defmethod process-music ((score score) (parser-state parser-state) music-data)
  "Process a :music field in the score encoding data, element by element. Populate the `score' instance."
  (dolist (music-line music-data)
    (when (eq :music (first music-line))
      (do ((rest-music (rest (rest music-line)) (rest rest-music)))
          ((null rest-music) nil)
        (let ((candidate (first rest-music)))
          (if (listp candidate)
              (case (first candidate)
                (:section (setf (section-id parser-state) (second candidate)))
                (:voice (setf (voice-id parser-state) (second candidate)))
                (:f-clef (raise-f-clef-flag parser-state))
                (:newline (set-newline score (section-id parser-state)))
                (:key-signature
                 (set-key-signature parser-state (rest candidate))
                 (cancel-accidental parser-state))))
          ;; here the glyph processing happens
          (when (member candidate *f-clef-triggers*)
            (cancel-f-clef-flag parser-state))
          (unless (f-clef-flag parser-state)
            (parse-glyph score
                         parser-state
                         candidate
                         (detect-dots (rest rest-music)
                                      *list-of-duration-dots*
                                      *list-of-notes*))))))))

(defmethod process-metadata ((score score) (parser-state parser-state) score-data)
  "Process the backend-agnostic :header information in the score encoding data and write it into the `score' instance."
  (setf (filename score) (first (extract-item :header :filename score-data)))
  (setf (title score) (first (extract-item :header :title score-data)))
  (setf (comment score) (first (extract-item :header :comment score-data)))
  (setf (creator score) (first (extract-item :header :creator score-data)))
  (mapc (lambda (this-heading)
          (when this-heading
            (set-section-heading* score (first this-heading) (second this-heading))))
        (extract-item :header :section-headings score-data))
  (mapc (lambda (this-caption)
          (when this-caption
            (set-section-caption* score (first this-caption) (second this-caption))))
        (extract-item :header :section-captions score-data))
  (mapc (lambda (this-label)
          (when this-label
            (if (eq (first this-label) :all)
                (dolist (this-section (sections score))
                  (set-voice-label* score
                                    (id this-section)
                                    (second this-label)
                                    (third this-label)))
                (set-voice-label* score
                                  (first this-label)
                                  (second this-label)
                                  (third this-label)))))
        (extract-item :header :voice-labels score-data)))

(defun parse-score (data suffix)
  (let ((score (make-instance 'score))
        (parser-state-instance (make-instance 'parser-state)))
    (process-metadata score parser-state-instance data)
    (process-music score parser-state-instance (extract-category :data data))
    (with-open-file (logfile (merge-pathnames *log-file-path*
                                              (pathname (format nil "~a-~a.txt"
                                                                (filename score)
                                                                suffix)))
                             :direction :output
                             :if-exists :supersede
                             :if-does-not-exist :create)
      (print-element score logfile))
    score))





(configure-parser
   ((:accidental sh0 :sharp 0)
    (:accidental sh1 :sharp 1)
    (:accidental sh2 :sharp 2)
    (:accidental sh3 :sharp 3)
    (:accidental sh4 :sharp 4)
    (:accidental sh5 :sharp 5)
    (:accidental sh6 :sharp 6)
    (:accidental sh7 :sharp 7)
    (:accidental sh8 :sharp 8)
    (:accidental sh9 :sharp 9)
    (:accidental sh10 :sharp 10)
    (:accidental fl0 :flat 0)
    (:accidental fl1 :flat 1)
    (:accidental fl2 :flat 2)
    (:accidental fl3 :flat 3)
    (:accidental fl4 :flat 4)
    (:accidental fl5 :flat 5)
    (:accidental fl6 :flat 6)
    (:accidental fl7 :flat 7)
    (:accidental fl8 :flat 8)
    (:accidental fl9 :flat 9)
    (:accidental fl10 :flat 10)
    (:accidental nat0 :natural 0)
    (:accidental nat1 :natural 1)
    (:accidental nat2 :natural 2)
    (:accidental nat3 :natural 3)
    (:accidental nat4 :natural 4)
    (:accidental nat5 :natural 5)
    (:accidental nat6 :natural 6)
    (:accidental nat7 :natural 7)
    (:accidental nat8 :natural 8)
    (:accidental nat9 :natural 9)
    (:accidental nat10 :natura 10)
    (:accidental flrev4 :flat 4)
    (:clef cclef1 :c 1)
    (:clef cclef3 :c 3)
    (:clef cclef5 :c 5)
    (:clef cclef7 :c 7)
    (:clef cclef9 :c 9)
    (:clef fclef1 :f 1)
    (:clef fclef3 :f 3)
    (:clef fclef5 :f 5)
    (:clef fclef7 :f 7)
    (:clef fclef9 :f 9)
    (:note max6 :maxima 6)
    (:note max7 :maxima 7)
    (:note longa5 :longa 5)
    (:note br0 :brevis 0)
    (:note br1 :brevis 1)
    (:note br2 :brevis 2)
    (:note br3 :brevis 3)
    (:note br4 :brevis 4)
    (:note br5 :brevis 5)
    (:note br6 :brevis 6)
    (:note br7 :brevis 7)
    (:note br8 :brevis 8)
    (:note br9 :brevis 9)
    (:note br10 :brevis 10)
    (:note brd0 :brevis 0 :dot)
    (:note brd1 :brevis 1 :dot)
    (:note brd2 :brevis 2 :dot)
    (:note brd3 :brevis 3 :dot)
    (:note brd4 :brevis 4 :dot)
    (:note brd5 :brevis 5 :dot)
    (:note brd6 :brevis 6 :dot)
    (:note brd7 :brevis 7 :dot)
    (:note brd8 :brevis 8 :dot)
    (:note brd9 :brevis 9 :dot)
    (:note brd10 :brevis 10 :dot)
    (:note sb0 :semibrevis 0)
    (:note sb1 :semibrevis 1)
    (:note sb2 :semibrevis 2)
    (:note sb3 :semibrevis 3)
    (:note sb4 :semibrevis 4)
    (:note sb5 :semibrevis 5)
    (:note sb6 :semibrevis 6)
    (:note sb7 :semibrevis 7)
    (:note sb8 :semibrevis 8)
    (:note sb9 :semibrevis 9)
    (:note sb10 :semibrevis 10)
    (:note sbd0 :semibrevis 0 :dot)
    (:note sbd1 :semibrevis 1 :dot)
    (:note sbd2 :semibrevis 2 :dot)
    (:note sbd3 :semibrevis 3 :dot)
    (:note sbd4 :semibrevis 4 :dot)
    (:note sbd5 :semibrevis 5 :dot)
    (:note sbd6 :semibrevis 6 :dot)
    (:note sbd7 :semibrevis 7 :dot)
    (:note sbd8 :semibrevis 8 :dot)
    (:note sbd9 :semibrevis 9 :dot)
    (:note sbd10 :semibrevis 10 :dot)
    (:note sbc0 :semibrevis 0 :comma)
    (:note sbc1 :semibrevis 1 :comma)
    (:note sbc2 :semibrevis 2 :comma)
    (:note sbc3 :semibrevis 3 :comma)
    (:note sbc4 :semibrevis 4 :comma)
    (:note sbc5 :semibrevis 5 :comma)
    (:note sbc6 :semibrevis 6 :comma)
    (:note sbc7 :semibrevis 7 :comma)
    (:note sbc8 :semibrevis 8 :comma)
    (:note sbc9 :semibrevis 9 :comma)
    (:note sbc10 :semibrevis 10 :comma)
    (:note m0 :minima 0)
    (:note m1 :minima 1)
    (:note m2 :minima 2)
    (:note m3 :minima 3)
    (:note m4 :minima 4)
    (:note m5 :minima 5)
    (:note m6 :minima 6)
    (:note m7 :minima 7)
    (:note m8 :minima 8)
    (:note m9 :minima 9)
    (:note m10 :minima 10)
    (:note md0 :minima 0 :dot)
    (:note md1 :minima 1 :dot)
    (:note md2 :minima 2 :dot)
    (:note md3 :minima 3 :dot)
    (:note md4 :minima 4 :dot)
    (:note md5 :minima 5 :dot)
    (:note md6 :minima 6 :dot)
    (:note md7 :minima 7 :dot)
    (:note md8 :minima 8 :dot)
    (:note md9 :minima 9 :dot)
    (:note md10 :minima 10 :dot)
    (:note sm0 :semiminima 0)
    (:note sm1 :semiminima 1)
    (:note sm2 :semiminima 2)
    (:note sm3 :semiminima 3)
    (:note sm4 :semiminima 4)
    (:note sm5 :semiminima 5)
    (:note sm6 :semiminima 6)
    (:note sm7 :semiminima 7)
    (:note sm8 :semiminima 8)
    (:note sm9 :semiminima 9)
    (:note sm10 :semiminima 10)
    (:note smd0 :semiminima 0 :dot)
    (:note smd1 :semiminima 1 :dot)
    (:note smd2 :semiminima 2 :dot)
    (:note smd3 :semiminima 3 :dot)
    (:note smd4 :semiminima 4 :dot)
    (:note smd5 :semiminima 5 :dot)
    (:note smd6 :semiminima 6 :dot)
    (:note smd7 :semiminima 7 :dot)
    (:note smd8 :semiminima 8 :dot)
    (:note smd9 :semiminima 9 :dot)
    (:note smd10 :semiminima 10 :dot)
    (:rest mrest5 :minima)
    (:rest mrest3 :minima)
    ))

(defparameter *list-of-notes*
  '(sb0 sb1 sb2 sb3 sb4 sb5 sb6 sb7 sb8 sb9 sb10)
  "This is used in the function to determine whether a note has a dotted duration value. Any glyph that can represent a dotted note should be member of this list.")

(defparameter *list-of-duration-dots*
  '(dot2 dot4 dot6 dot8)
  "This is used in the function looking ahead to detect rhythmic dots. All glyphs used to represent rhythmic dots should be member of this list.")

(defparameter *f-clef-triggers*
  '(fclef1 fclef3 fclef5 fclef7 fclef9)
  "This is used to determine when the definition of an compound f-clef is done and normal glyph parsing can be switched back on. All glyphs that complete an f-clef complex should be member of this list.")
