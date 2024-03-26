`((:header
   (:filename "b4-c37-m1")
   (:alt-name "m4.032")
   (:comment "q021_s183, rotation: 0.87, origin: 461")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-headings
    (s1 (:alt (:it "Principio et fine")
              (:de "")
              (:en "Beginning and end")
              ;; JK: Es ist zu diskutieren, wie dieses Textelement in der Normalisierung dargestellt
              ;; werden soll. Ausserdem sind verschiedene Auflösungen denkbar, die in separaten
              ;; Musikbeispielen ausgeführt werden könnten. Siehe dazu auch Tigrini, _Compendio
              ;; Musica_ (1588), der ein sehr ähnliches Beispiel abdruckt, allerdings mit
              ;; vierstimmiger Auflösung.
              ;;
              ;; DONE
              ))))
  (:preamble-lilypond
   (:clef-overrides
    (s1 v1 "treble_8")))
  (:data
   (:text 110 58
     ;; JK: Dieser Text soll in der modernen Fassung unter die erste Pause und unter die letzte
     ;; Noten gesetzt werden.
     ;;
     ;; OPEN
     (166 nil "Principio & fine.")
     (2142 nil "Principio & fine." :upside-down))
   (:music 2225
           (:voice v1)
           (:section s1) cclef5 b22 met-imperf-min-dim b22 mrest1 b22 m2 sb3 m4 sb5 m6 sm7 m9 sm7 m8 sb6 m5 m4 m3 m2 sb9 m8 m6 m5d m7 sm6 sm9 sm8 sm7 b22 m6 m3 sm2 m4 sm2 m6 m5d m9 b22 m8 b22 sm7 m9 sm7 m9 b22 m8 m7 sb9 custos2)))
