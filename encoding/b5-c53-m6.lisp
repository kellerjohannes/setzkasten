`((:header
   (:filename "b5-c53-m6")
   (:alt-name "m5.63")
   (:comment "q021_s257, rotation: -0.71, origin: 521")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Regola di ritrovare le sette ottave sopra Ffaut primo,\\con i sottoscritti esempi")
   (:section-headings
    (s1 "Prima ottava")
    (s2 "Seconda ottava")
    (s3 "Terza ottava")
    (s4 "Quarta ottava")
    (s5 "Quinta ottava")
    (s6 "Sesta ottava")
    (s7 "Settima ottava")
    ))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
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
     (175 1906 "Regola di ritrouare le sette ᴏttaue sopra ꜰ fa ut primo , con li sottoſcritti eſſempi."))
   (:text 90 58
     (258 nil "Prima ottaua.")
     (854 nil "Seconda ottaua.")
     (1429 nil "Terza ottaua.")
     (1949 nil "Quarta")
     )
   (:music 2214
           (:voice v1)
           (:section s1) cclef5 b38 sb1 sb2 fl3 sb3 fl4 sb4 sb5 fl6 sb6 fl7 sb7 sb8 b22 bl
           (:section s2) b22 sb1 fl2 sb2 fl3 sb3 fl4 sb4 sbd4 fl6 sb6 fl7 sb7 sb8 b22 bl
           (:section s3) b22 sb1 sb2 sb3 fl4 sb4 sb5 sb6 sb7 (:alt (:diplomatic sb2) (:idealised sb8)) b22 bl
           (:section s4) b22 sb1 sb2 fl3 sb3 fl4 sb4 custos5
           )
   (:text 70 58
     (163 nil "ottaua.")
     (489 nil "quinta ottaua.")
     (1184 nil "Seſta ottaua.")
     (1713 nil "Settima ottaua.")
     )
   (:music 2221
           cclef5 b38 sb5 fl6 sb6 fl7 sb7 sb8 b22 bl
           (:section s5) (:newline) b22 sb1 fl2 b22 sb2 b22 fl3 sb3 fl4 sb4 sb5 fl6 sb6 fl7 sb7 sb8 b22 bl
           (:section s6) b22 sb1 sb2 sb3 sb4 sb5 sb6 sb7 sb8 b22 bl
           (:section s7) b22 sb1 sb2 sb3 fl4 b22 sb4 sb5 sb6 fl7 sb7 sb8 b38 bl
           )))
