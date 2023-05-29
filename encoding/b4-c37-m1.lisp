`((:header
   (:filename "b4-c37-m1")
   (:alt-name "m4.032")
   (:comment "q021_s183, rotation: 0.87, origin: 461")
   (:creator "Vicentino21 / Johannes Keller")
   ;; Bibelgruppe:
   ;; Frage nach dem Grund für das kopfüber gedruckte Fragment "Principio &
   ;; fine.". Sollen im Kommentar verschiedene Interpretationen dieses
   ;; Beispiels wiedergegeben und diskutiert werden?
   ;; Laut [[cite:&collinsFugueCanonDouble1993]] ist genau dieses Beispiel bei
   ;; Tigrini wiedergegeben. ([[cite:&tigriniCompendioMusica1588]], S. 111). Bei
   ;; Trigrini steht hingegen ein vierstimmiges Beispiel als
   ;; Krebs-Inversions-Kanon.

   ;; Im Moment wird keine Auflösung geboten, nur eine direkte Übertragung der Quelle.
   ;; Die Positionierung dieser Überschrift in der Normalisierung ist zu lösen,
   ;; in dieser Form ist sie nicht nachvollziehbar.

   ;; Es ist zu überlegen, ob aufgelöste Fassungen als Zusatz zur Normalisierung hergestellt
   ;; werden sollen.
   (:section-headings
    (s1 "Principio et fine")))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:preamble-lilypond
   (:clef-overrides
    (s1 v1 "treble_8")))
  (:data
   (:text 110 58
          (166 nil "Principio & fine.")
          (2142 nil "Principio & fine." :upside-down))
   (:music 2225
           (:voice v1)
           (:section s1) cclef5 b22 met-imperf-min-dim b22 mrest1 b22 m2 sb3 m4 sb5 m6 sm7 m9 sm7 m8 sb6 m5 m4 m3 m2 sb9 m8 m6 m5d m7 sm6 sm9 sm8 sm7 b22 m6 m3 sm2 m4 sm2 m6 m5d m9 b22 m8 b22 sm7 m9 sm7 m9 b22 m8 m7 sb9 custos2)))
