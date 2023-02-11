(in-package :setzkasten)

(defclass score ()
  ((sections :initform nil
             :accessor sections
             :documentation "This simple list contains instances of the `section' class.")
   (filename :initform ""
             :initarg :filename
             :accessor filename
             :documentation "This string contains the filename of the encoding file describing the score, without suffix.")
   (title :initform ""
          :initarg :title
          :accessor title
          :documentation "This string will be displayed as a centered title.")
   (comment :initform ""
            :initarg :comment
            :accessor comment
            :documentation "This string contains comments, for example about the state of the transcription or version information.")
   (creator :initform ""
            :initarg :creator
            :accessor creator
            :documentation "This string contains information about the author of the encoding file.")
   (voice-labels :initform nil
                 :initarg :voice-labels
                 :accessor voice-labels
                 :documentation "This alist contains pairs of voice ids and strings that will be printed as instrument names in front of staves. They can be overridden by local label definitions in voice instances."))
  (:documentation "This class contains a model of the complete score."))

(defclass section ()
  ((voices :initform nil
           :accessor voices
           :documentation "This simple list contains instances of the `section' class, the order is relevant for the graphical output.")
   (id :initform nil
       :initarg :id
       :accessor id
       :documentation "This symbol can be used to reference the section internally. It is taken from the score encoding file.")
   (heading :initform ""
            :initarg :heading
            :accessor heading
            :documentation "This string will be displayed as a heading, flush-left above the section. In a normal use case this would resemble the `id' slot, but can be defined independently in the score encoding file.")
   (caption :initform ""
            :initarg :caption
            :accessor caption
            :documentation "This string contains text to be displayed centered below the section.")
   (newlinep :initform nil
             :accessor newlinep
             :documentation "If T then this section should go on a new line, only relevant for backends such as lilypond.")
   (line-heading :initform nil
                  :initarg :line-heading
                  :accessor line-heading
                  :documentation "This strings contains the heading of a new line, only applicaple if `newlinep' is T.")
   (bracket :initform nil
            :initarg :bracket
            :accessor bracket
            :documentation "List of six numbers: x and y shift and vertical length for right and left bracket."))
  (:documentation "This class contains all information of one section of the score. It acts independently of other sections."))

(defclass voice ()
  ((mobjects :initform nil
             :accessor mobjects
             :documentation "This simple list contains instances of `mobject' (notes and rests). The order is musically relevant and should be respected in the graphical output.")
   (id :initform nil
       :initarg :id
       :accessor id
       :documentation "This symbol can be used to reference the voice internally. It is taken from the score encoding file. It can occur multiple times within a score, in different sections.")
   (label :initform ""
          :initarg :label
          :accessor label
          :documentation "This string will be displayed as instrument labels at the beginning of a stave. If `nil' it will be ignored for graphical output.")
   (clef-override :initform nil
                  :initarg :clef-overrid
                  :accessor clef-override
                  :documentation "This contains a lilypond-compatible string the is used to override the conversion from original to modern clefs.")
   (lyrics :initform nil
           :initarg :lyrics
           :accessor lyrics
           :documentation "Contains a string with lyrics information, following the content of a \\lyricmode block in lilypond."))
  (:documentation "This class contains all the information about a voice within a section of the score. Voices in other sections need to be instanciated independently in the `voices' slot of each section."))

(defclass mobject ()
  ((pitch :initform nil
          :initarg :pitch
          :accessor pitch
          ;; needs to be changed, because the notation is more expressive than the keyboard:
          ;; probably in the form of '(:a :♯ :⋅ 3)
          :documentation "This list describes the pitch of a note as an organ key: (lettera ordine octave). 'lettera' is one of the seven root note letters, as symbols. 'ordine' is 1-6, referencing the rows of keys. 'octave' is 1-5, where middle-C is 3. If NIL, the object is treated as a rest.")
   (id :initform nil
       :initarg :id
       :accessor id)
   (value :initform nil
          :initarg :value
          :accessor value
          :documentation "This describes the rhythmic value of the note or rest. It can be :maxima, :longa, :brevis, :semibrevis, :minima, :semiminima, :croma, :semicroma.")
   (dottedp :initform nil
            :initarg :dottedp
            :accessor dottedp
            :documentation "T if the rhythmic value is dotted.")
   (duration-override :initform nil
                      :initarg :duration-override
                      :accessor duration-override
                      :documentation "Nil will be ignored, any number or ratio will be used to modify the actual score duration of this note, according to lilypond's appendix '*1/2' or similar.")
   (clef :initform nil
         :initarg :clef
         :accessor clef
         :documentation "Describes the clef a note is contextualised in. Clef format: (type . line). Type is :c, :f or :g. A tenor clef is represented by '(:c . 7).")
   (key-signature :initform '(nil nil)
                  :initarg :key-signature
                  :accessor key-signature
                  :documentation "This slot decribes the key signature context of the mobject. It is not used to determine the actual pitch of the mobject, but to determine if a key change should be rendered for graphical output.")
   (meter :initform nil
          :initarg :meter
          :accessor meter
          :documentation "Contains a keyword describing the current time context of the mobject. Possible values: `:cut-c'.")
   (divider :initform nil
            :initarg :divider
            :accessor divider
            :documentation "When T, this will trigger the output of an (irregular) barline. Possible values are :dashed, :dotted, :regular and :double."))
  (:documentation "This class contains all information about a rest or note. Pitch encoding and duration are obvious. Also clef and tonality context are stored for each note individually. When rendering the `mobject' clef and tonality changes need to be identified with a state variable in order to trigger clef display correctly."))


(defmethod add-mobject ((voice voice) mobject-instance)
  "Adds an instance of `mobject' to an instance of `voice'."
  (setf (mobjects voice) (append (mobjects voice) (list mobject-instance))))

(defmethod get-mobject ((voice voice) mobject-id)
  "Returns the instance of a `mobject' based on its `id' slot, given a `voice' instance."
  (find mobject-id (mobjects voice) :key #'id :test #'string=))

(defmethod add-section ((score score) section-instance)
  "Adds an instance of `section' to a given instance of `score'."
  (setf (sections score) (append (sections score) (list section-instance))))

(defmethod get-section ((score score) section-id)
  "Returns the instance of a `section' based on its `id', given a `score' instance."
  (let ((sec (find section-id (sections score) :key #'id :test #'string=)))
    (or sec (progn (add-section score (make-instance 'section :id section-id))
                   (get-section score section-id)))))

(defmethod set-section-bracket* ((score score) id data)
  (let ((candidate (get-section score id)))
    (if candidate
        (setf (bracket candidate) data)
        (add-section score (make-instance 'section :id id :bracket data)))))

(defmethod set-section-heading* ((score score) id new-heading)
  "Sets the `heading' of a section referenced by its `id'. If no `section' instance with this `id' exists in `score', it will will be created."
  (let ((candidate (get-section score id)))
    (if candidate
        (setf (heading candidate) new-heading)
        (add-section score (make-instance 'section :id id :heading new-heading)))))

(defmethod set-section-caption* ((score score) id new-caption)
  "Sets the `caption' of a section referenced by its `id'. If no `section' instance with this `id' exists in `score', it will be created."
  (let ((candidate (get-section score id)))
    (if candidate
        (setf (caption candidate) new-caption)
        (add-section score (make-instance 'section :id id :caption new-caption)))))

(defmethod add-voice ((section section) voice-instance)
  "Adds the instance of `voice' to an instance of `section'."
  (setf (voices section) (append (voices section) (list voice-instance))))

(defmethod get-voice ((section section) voice-id)
  "Returns the instance of a voice with a given `id' in an instance of `section'"
  (let ((voic (find voice-id (voices section) :key #'id :test #'string=)))
    (or voic (progn (add-voice section (make-instance 'voice :id voice-id))
                    (get-voice section voice-id)))))

(defmethod add-voice-to-section ((score score) section-id voice-instance)
  "Adds a given instance of `voice' to a `section' referenced by its `id' in a given `score'."
  (add-voice (get-section score section-id) voice-instance))

(defmethod set-newline ((score score) section-id)
  "Sets the `newlinep' flag to T."
  (setf (newlinep (get-section score section-id)) t))

(defmethod set-line-heading ((score score) section-id heading)
  "Sets the line heading for a section."
  (setf (line-heading (get-section score section-id)) heading))


(defmethod get-voice-in-section ((score score) section-id voice-id)
  "Returns the instance of `voice', referenced by its `id' and the `id' of a section within the instance of `score'."
  (let ((sec (get-section score section-id)))
    (when sec (get-voice sec voice-id))))

(defmethod set-voice-label* ((score score) section-id voice-id voice-label)
  "Sets the `label' slot of a voice in a `score', referenced by the `id' of the `voice' and the `id' of the `section'."
  (setf (label (get-voice-in-section score section-id voice-id)) voice-label))

(defmethod set-voice-lyrics* ((score score) section-id voice-id lyrics-string)
  "Sets the `lyrics' slot of a voice in a `score', referenced by `voice-id'. Creates the `voice' object if necessary."
  (setf (lyrics (get-voice-in-section score section-id voice-id)) lyrics-string))

(defmethod set-clef-override* ((score score) section-id voice-id override-string)
  "Sets the `clef-override' slot of a voice in a `score', referenced by `voice-id'. Creates the `voice' object if necessary."
  (setf (clef-override (get-voice-in-section score section-id voice-id)) override-string))

(defmethod add-mobject-to-score ((score score) section-id voice-id mobject-instance)
  "Adds the instance of `mobject' to a voice in a `score', references by the voice's `id' and the section's `id'."
  (add-mobject (get-voice (get-section score section-id) voice-id)
               mobject-instance))

(defmethod make-note (id lettera chromatic-alteration enharmonic-alteration octave value dottedp duration-override clef key-signature divider)
  "Instanciates a `mobject' representing a note (not a rest). `lettera', `chromatic-alteration' and `enharmonic-alteration' all need to be provided in keyword form."
  (make-instance 'mobject :id id
                          :pitch (list lettera chromatic-alteration enharmonic-alteration octave)
                          :value value
                          :dottedp dottedp
                          :duration-override duration-override
                          :clef clef
                          :key-signature key-signature
                          :divider divider))

(defmethod make-rest (id value dottedp clef key-signature divider)
  "Instanciates a `mobject' representing a rest (not a note)."
  (make-instance 'mobject :id id
                          :pitch nil
                          :value value
                          :dottedp dottedp
                          :clef clef
                          :key-signature key-signature
                          :divider divider))


(defmethod print-element ((voice voice) stream)
  "Printing to standard-output, for debugging purposes."
  (format stream "~&~4,0tVoice ~a (~s):" (id voice) (label voice))
  (dolist (mobject (mobjects voice))
    (format stream "~&~6,0tMusical Object ~a:~&~8,0tPitch = ~a~&~8,0tValue = ~a~&~8,0tClef = ~a~&~8,0tKey Signature = ~a"
            (id mobject)
            (pitch mobject)
            (value mobject)
            (clef mobject)
            (key-signature mobject))))

(defmethod print-element ((section section) stream)
  "Printing to standard-output, for debugging purposes."
  (format stream "~&~2,0tSection ~a (~s / ~s):" (id section) (heading section) (caption section))
  (dolist (voice (voices section))
    (print-element voice stream)))

(defmethod print-element ((score score) stream)
  "Printing to standard-output, for debugging purposes."
  (format stream "~&Score (Title ~s, file ~s, creator ~s)~%[Comment ~s]:"
          (title score)
          (filename score)
          (creator score)
          (comment score))
  (dolist (section (sections score))
    (print-element section stream)))
