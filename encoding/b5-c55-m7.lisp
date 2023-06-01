`((:header
   (:filename "b5-c55-m7")
   (:alt-name "m5.078")
   (:comment "q021_s262, rotation: 0.68, origin: 950")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Regola di ritrovare le sette ottave sopra Gsolreut secondo,\\con li sottoscritti esempi")
   (:section-headings
    (s1 "Prima ottava")
    (s2 "Seconda ottava")
    (s3 "Terza ottava")
    (s4 "Quarta ottava")
    (s5 "Quinta ottava")
    (s6 "Sesta ottava")
    (s7 "Settima ottava")
    ))

  (:preamble-lilypond
   (:clef-overrides
    (s1 v1 "treble_8")
    (s2 v1 "treble_8")
    (s3 v1 "treble_8")
    (s4 v1 "treble_8")
    (s5 v1 "treble_8")
    (s6 v1 "treble_8")
    (s7 v1 "treble_8")
    ))
  (:data
   (:text 90 58
          (130 2053 "Regola da ritrouar le sette ᴏttaue sopra ɢ ſol re ut ſecondo,con li sottoſcritti eſſempi."))
   (:text 90 58
          (232 nil "Prima ottaua.")
          (895 nil "Seconda ottaua.")
          (1611 nil "Terza")
          (1850 nil "ottaua.")
          )
   (:music 2225
           (:voice v1)
           (:section s1) cclef5 b38 sh1 sb1 sh2 sb2 sb3 sb4 sh5 sb5 sb6 sb7 sh8 sb8 b38 bl
           (:section s2) b38 sh1 sb1 sb2 sb3 sb4 sb5 sb6 sb7 sh8 sb8 b38 bl
           (:section s3) b38 sh1 sb1 sh2 sb2 sh3 sb3 sb4 sh5 sb5 sh6 sb6 sh7 sb7 sh8 sb8 bl
           )
   (:text 70 58
          (466 nil "Quarta")
          (779 nil "ottaua.")
          (1448 nil "quinta")
          (1729 nil "ottaua.")
          )
   (:music 2225
           (:section s4) (:newline) cclef5 b38 b22 sh1 b22 sb1 b22 sh2 b22 sb2 b22 sb3 b22 sb4 b22 sh5 b22 sb5 b22 sh6 b22 sb6 b22 sb7 b22 sh8 b22 sb8 b38 b22 bl
           (:section s5) b22 b38 sh1 b22 sb1 b22 sb2 b22 sb3 b22 sb4 b22 sh5 b22 sb5 b22 b22 sb6 b22 b22 sb7 b22 b22 sh8 b22 sb8 b22 b38 bl b38
           )
   (:text 70 58
          (416 nil "Seſta")
          (621 nil "ottaua.")
          (1504 nil "Settima")
          (1775 nil "ᴏttaua.")
          )
   (:music 2216
           (:section s6) cclef5 b38 sh1 b22 sb1 b22 sh2 b22 sb2 b22 sh3 b22 sb3 b22 sh4 b22 sb4 b22 sh5 sb5 b22 sh6 b22 sb6 b22 sh7 b22 sb7 b22 sh8 b22 sb8 b22 bl
           (:section s7) (:newline) b22 sh1 sb1 b22 sh2 sb2 b22 sh3 sb3 b22 sb4 sh5 sb5 sh6 sb6 b22 sb7 b22 sh8 sb8 b22 bl
           )))
