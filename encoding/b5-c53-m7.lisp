`((:header
   (:filename "b5-c53-m7")
   (:alt-name "m5.64")
   (:comment "q021_s257, rotation: -0.71, origin: 511")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Regola di ritrovare le sette ottave sopra Gsolreut primo,\\con i sottoscritti esempi")
                 (:de "")
                 (:en "Method of finding the seven ottave on Gsolreut primo,\\with the examples written below")))
   (:section-headings
    (s1 (:alt (:it "Prima ottava")
              (:de "")
              (:en "First ottava")))
    (s2 (:alt (:it "Seconda ottava")
              (:de "")
              (:en "Second ottava")))
    (s3 (:alt (:it "Terza ottava")
              (:de "")
              (:en "Third ottava")))
    (s4 (:alt (:it "Quarta ottava")
              (:de "")
              (:en "Fourth ottava")))
    (s5 (:alt (:it "Quinta ottava")
              (:de "")
              (:en "Fifth ottava")))
    (s6 (:alt (:it "Sesta ottava")
              (:de "")
              (:en "Sixth ottava")))
    (s7 (:alt (:it "Settima ottava")
              (:de "")
              (:en "Seventh ottava")))))
  (:preamble-lilypond
   (:clef-overrides
    (s1 v1 "treble_8")
    (s2 v1 "treble_8")
    (s3 v1 "treble_8")
    (s4 v1 "treble_8")
    (s5 v1 "treble_8")
    (s6 v1 "treble_8")
    (s7 v1 "treble_8")))
  (:data
   (:text 90 58
          (96 2020 "Regola di ritrouare le sette ᴏttaue sopra ɢ sol re ut primo,con li sottoſcritti eſſempi."))
   (:text 90 58
          (171 nil "Prima ottaua.")
          (807 nil "Seconda ottaua.")
          (1446 nil "Terza ottaua.")
          (1950 nil "Quarta"))
   (:music 2210
           (:voice v1)
           (:section s1) cclef5 b38 sb2 sb3 b22 fl4 b22 sb4 sb5 sb6 fl7 sb7 sb8 sb9 b22 bl
           (:section s2) b22 sb2 fl3 sb3 b22 fl4 b22 sb4 sb5 fl6 sb6 fl7 sb7 sb8 sb9 b22 bl
           (:section s3) b22 sb2 sb3 sb4 sb5 sb6 sb7 sh8 sb8 sb9 b22 bl
           (:section s4) (:newline) b22 sb2 sb3 b22 fl4 b22 sb4 sb5 custos6)
   (:text 70 58
          (141 nil "ᴏttaua.")
          (548 nil "Quinta ottaua.")
          (1220 nil "Seſta ottaua.")
          (1729 nil "Settima ottaua."))
   (:music 2209
           cclef5 sb6
           (:alt (:diplomatic fl7)
                 (:critical b38)
                 (:coord-barre "MZ2 N2")
                 (:coord-norm "G4 N6")
                 (:comment "Original: E♭.")
                 (:flag :ready) (:id 1))
           sb7 b38 sb8 b38 sb9 b38 bl
           (:section s5) sb2 b22 fl3 b22 sb3 fl4 b22 sb4 sb5 sb6 fl7 sb7 sb8 sb9 b38 bl
           (:section s6) b38 sb2 sb3 sb4 sh5 sb5 sb6 sb7 sh8 sb8 sb9 b38 bl
           (:section s7) (:newline) b38 sb2 sb3 sb4 sb5 sb6 sb7 sb8 sb9 b38 bl)))
