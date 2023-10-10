(in-package :setzkasten)

(defclass apparatus-state ()
  ((data :initform nil :accessor data)
   (filename :initform nil :accessor filename)
   (alternative-numbering :initform nil :accessor alternative-numbering)
   (meta-comment :initform nil :accessor meta-comment)
   (filter :initform nil :initarg :filter :accessor filter)
   (in-header-p :initform nil :accessor in-header-p)
   (line-counter :initform 0 :accessor line-counter)
   (glyph-counter :initform 0 :accessor glyph-counter)
   (musical-element-counter :initform 0 :accessor musical-element-counter)
   (current-section :initform nil :accessor current-section)
   (current-voice :initform nil :accessor current-voice)
   (current-id :initform nil :accessor current-id)
   (text-field :initform 1 :accessor text-field)
   (in-text-line-p :initform nil :accessor in-text-line-p)
   (score-text-type :initform nil :accessor score-text-type)
   (score-text-section :initform nil :accessor score-text-section)
   (score-text-voice :initform nil :accessor score-text-voice)
   (score-line-heading-counter :initform 0 :accessor score-line-heading-counter)
   (coordinate-barre :initform nil :accessor coordinate-barre)
   (coordinate-norm :initform nil :accessor coordinate-norm)
   (critical-comment :initform nil :accessor critical-comment)
   (flag :initform nil :accessor flag)
   (reference-content :initform nil :accessor reference-content)))

(defun musical-element-p (item)
  (or (member item *list-of-notes*)
      (member item *list-of-rests*)
      (member item *meter-signatures*)
      (member item *list-of-clefs*)))

(defmethod count-resolved-elements (expression (state apparatus-state))
  (dolist (item expression expression)
    (incf (glyph-counter state))
    (when (musical-element-p expression) (incf (musical-element-counter state)))))

(defmethod output-music-entry (reading reading-tag (state apparatus-state))
  (list :music
        :id (current-id state)
        :type-imitation-line (line-counter state)
        :type-imitation-glyph (glyph-counter state)
        :musical-element (musical-element-counter state)
        :score-section (current-section state)
        :score-voice (current-voice state)
        :original (reference-content state)
        :replacement (rest reading)
        :reading reading-tag
        :coord-barre (coordinate-barre state)
        :coord-norm (coordinate-norm state)
        :comment (critical-comment state)
        :flag (flag state)))

(defmethod output-text-entry (reading reading-tag (state apparatus-state))
  (list :type-imitation-text
        :id (current-id state)
        :type-imitation-line (line-counter state)
        :type-imitation-text-field (text-field state)
        :original (reference-content state)
        :replacement (rest reading)
        :reading reading-tag
        :coord-barre (coordinate-barre state)
        :coord-norm (coordinate-norm state)
        :comment (critical-comment state)
        :flag (flag state)))

(defmethod output-score-text-entry (reading reading-tag (state apparatus-state))
  (list :normalised-text
        :id (current-id state)
        :score-text-location (list (score-text-type state)
                                   (unless (eq (score-text-type state) :title)
                                     (score-text-section state))
                                   (when (or (eq (score-text-type state) :voice-label)
                                             (eq (score-text-type state) :lyrics))
                                     (score-text-voice state)))
        :coord-barre (coordinate-barre state)
        :coord-norm (coordinate-norm state)
        :comment (critical-comment state)
        :flag (flag state)))

(defmethod output-apparatus-entry (reading reading-tag (state apparatus-state))
  (prog1
      (if (in-header-p state)
          (output-score-text-entry reading reading-tag state)
          (if (in-text-line-p state)
              (output-text-entry reading reading-tag state)
              (output-music-entry reading reading-tag state)))
    (setf (current-id state) nil)))

(defmethod loop-alt-expression (expression filter (state apparatus-state))
  (unless (null filter)
    (let ((candidate (find (first filter) expression :key #'first)))
      (cond (candidate
             (when (critical-comment state)
               (push (output-apparatus-entry candidate (first filter) state) (data state)))
             (reset-reading-state state)
             (rest candidate))
            (t (loop-alt-expression expression (rest filter) state))))))

(defmethod find-comment (expression (state apparatus-state))
  (let ((comment (find :comment (rest expression) :key #'first)))
    (when comment
      (setf (critical-comment state) (second comment)))))

(defmethod find-coordinate-barre (expression (state apparatus-state))
  (let ((coordinate (find :coord-barre (rest expression) :key #'first)))
    (when coordinate
      (setf (coordinate-barre state) (second coordinate)))))

(defmethod find-coordinate-norm (expression (state apparatus-state))
  (let ((coordinate (find :coord-norm (rest expression) :key #'first)))
    (when coordinate
      (setf (coordinate-norm state) (second coordinate)))))

(defmethod find-id (expression (state apparatus-state))
  (let ((id (find :id (rest expression) :key #'first)))
    (when id
      (setf (current-id state) (second id)))))

(defmethod find-flag (expression (state apparatus-state))
  (let ((flag (find :flag (rest expression) :key #'first)))
    (when flag
      (setf (flag state) (second flag)))))

(defmethod resolve-reading (expression (state apparatus-state))
  (when (eq (first expression) :alt)
    (find-comment expression state)
    (find-coordinate-barre expression state)
    (find-coordinate-norm expression state)
    (find-id expression state)
    (find-flag expression state)
    (count-resolved-elements (loop-alt-expression (rest expression) (filter state) state) state)))

(defmethod reset-reading-state ((state apparatus-state))
  (setf (critical-comment state) nil)
  (setf (coordinate-barre state) nil)
  (setf (coordinate-norm state) nil)
  (setf (flag state) nil)
  (setf (reference-content state) nil))

(defmethod reset-in-line-counters ((state apparatus-state))
  (setf (glyph-counter state) 0
        (musical-element-counter state) 0
        (text-field state) 1))

(defmethod reset-text-type-data ((state apparatus-state))
  (setf (score-text-type state) nil
        (score-text-section state) nil
        (score-text-voice state) nil
        (score-line-heading-counter state) 0))

(defmethod loop-score (rest-score (state apparatus-state))
  (cond ((null rest-score) nil)
        ((atom (first rest-score))
         (incf (glyph-counter state))
         (let ((item (first rest-score)))
           (cond ((eq item :header) (setf (in-header-p state) t))
                 ((eq item :data) (setf (in-header-p state) nil))
                 ((eq item :filename) (setf (filename state) (second rest-score)))
                 ((eq item :alt-name) (setf (alternative-numbering state) (second rest-score)))
                 ((and (eq item :comment) (in-header-p state))
                  (setf (meta-comment state) (second rest-score)))
                 ((eq item :music)
                  (incf (line-counter state))
                  (reset-in-line-counters state)
                  (setf (in-text-line-p state) nil))
                 ((eq item :text)
                  (incf (line-counter state))
                  (reset-in-line-counters state)
                  (setf (in-text-line-p state) t))
                 ((in-text-line-p state)
                  (when (stringp item) (incf (text-field state))))
                 ((eq item :section) (setf (current-section state) (second rest-score)))
                 ((eq item :voice) (setf (current-voice state) (second rest-score)))
                 ((in-header-p state)
                  (incf (score-line-heading-counter state))
                  (when (stringp (second rest-score))
                    (setf (score-text-section state) item))
                  (when (stringp (third rest-score))
                    (setf (score-text-section state) item)
                    (setf (score-text-voice state) (second rest-score)))
                  (case item
                    (:title (setf (score-text-type state) :title))
                    (:line-headings
                     (reset-text-type-data state)
                     (setf (score-text-type state) :line-heading))
                    (:section-headings
                     (reset-text-type-data state)
                     (setf (score-text-type state) :section-heading))
                    (:section-captions
                     (reset-text-type-data state)
                     (setf (score-text-type state) :section-caption))
                    (:voice-labels
                     (reset-text-type-data state)
                     (setf (score-text-type state) :voice-label))
                    (:lyrics
                     (reset-text-type-data state)
                     (setf (score-text-type state) :lyrics))))
                 ((musical-element-p item) (incf (musical-element-counter state))))
           (cons item (loop-score (rest rest-score) state))))
        ((eq (first (first rest-score)) :alt)
         (append (resolve-reading (first rest-score) state)
                 (loop-score (rest rest-score) state)))
        (t (cons (loop-score (first rest-score) state)
                 (loop-score (rest rest-score) state)))))

(defmethod output-meta-data ((state apparatus-state))
  (list (list :metadata
              :filename (filename state)
              :alternative-numbering (alternative-numbering state)
              :comment (meta-comment state)
              :filter (filter state))))

(defmethod dump-apparatus-data ((state apparatus-state))
  (append (output-meta-data state)
          (data state)))

(defun extract-reading (score extraction-arguments)
  (let ((state (make-instance 'apparatus-state
                              :filter extraction-arguments)))
    (values (loop-score score state) (dump-apparatus-data state))))


;; example for meta data
'(:metadata
  :filename "b5-c53-m2"
  :alternative-numbering "m5.058"
  :comment "q021_s256, rotation: 0.94, origin: 932")

;; example for a note idealisation
'(:music
  :type-imitation-line 1
  :type-imitation-glyph 15
  :musical-element 7
  :score-section s3
  :score-voice v2
  :original (sh5 sb5)
  :replacement (b38 b38)
  :filter :critical
  :coord-barre "2. Zeile, 3. Note"
  :coord-norm "Section 3, 2. Note"
  :comment "C♯ ist hier fragwürdig, wird entfernt."
  :flag :suggestion-jk)

;; example for a original text idealisation
'(:type-imitation-text
  :type-imitation-line 2
  :type-imitation-text-field 1
  :original "tono"
  :replacement "sem.tono"
  :filter :critical
  :comment "\"sem.\" ergänzt."
  :flag :suggestion-jk)

;; example for a normalised text idealisation (comment only)
'(:normalised-text
  :score-text-location (:section-headings s2)
  :comment "Im Original fehlt hier \"semitono minore\"."
  :flag :suggestion-jk)
