`((:header
   (:filename "b5-c53-m6")
   (:alt-name "m5.63")
   (:comment "q021_s257, rotation: -0.71, origin: 521")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Regola di ritrovare le sette ottave sopra Ffaut primo,\\con i sottoscritti esempi")
                 (:de "Methode, die sieben ottave über Ffaut primo zu finden,\\mit den unten geschriebenen Beispielen.")
                 (:en "Rule for finding the seven ottave on Ffaut primo,\\with the examples written below")))
   (:section-headings
    (s1 (:alt (:it "Prima ottava")
              (:de "erste ottava")
              (:en "First ottava")))
    (s2 (:alt (:it "Seconda ottava")
              (:de "zweite ottava")
              (:en "Second ottava")))
    (s3 (:alt (:it "Terza ottava")
              (:de "dritte ottava")
              (:en "Third ottava")))
    (s4 (:alt (:it "Quarta ottava")
              (:de "vierte ottava")
              (:en "Fourth ottava")))
    (s5 (:alt (:it "Quinta ottava")
              (:de "fünfte ottava")
              (:en "Fifth ottava")))
    (s6 (:alt (:it "Sesta ottava")
              (:de "sechste ottava")
              (:en "Sixth ottava")))
    (s7 (:alt (:it "Settima ottava")
              (:de "siebte ottava")
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
          (175 1906 "Regola di ritrouare le sette ᴏttaue sopra ꜰ fa ut primo , con li sottoſcritti eſſempi."))
   (:text 90 58
          (258 nil "Prima ottaua.")
          (854 nil "Seconda ottaua.")
          (1429 nil "Terza ottaua.")
          (1949 nil "Quarta"))
   (:music 2214
           (:voice v1)
           (:section s1) cclef5 b38 sb1 sb2 fl3 sb3 fl4 sb4 sb5 fl6 sb6 fl7 sb7 sb8 b22 bl
           (:section s2) b22 sb1 fl2 sb2 fl3 sb3 fl4 sb4 sbd4 fl6 sb6 fl7 sb7 sb8 b22 bl
           (:section s3) b22 sb1 sb2 sb3 fl4 sb4 sb5 sb6 sb7
           (:alt (:diplomatic sb2)
                 (:critical sb8)
                 (:coord-barre "MZ1 N24")
                 (:coord-norm "G3 N8")
                 (:comment "In allen Exemplaren: G (verdrehte Drucktype).")
                 (:flag :ready) (:id 1))
           b22 bl
           (:section s4) (:newline) b22 sb1 sb2 fl3 sb3 fl4 sb4 custos5)
   (:text 70 58
          (163 nil "ottaua.")
          (489 nil "quinta ottaua.")
          (1184 nil "Seſta ottaua.")
          (1713 nil "Settima ottaua."))
   (:music 2221
           cclef5 b38 sb5
           (:alt (:diplomatic fl6)
                 (:critical b38)
                 (:coord-barre "MZ2 N2")
                 (:coord-norm "G4 N6")
                 (:comment "In allen Exemplaren: D♭.")
                 (:flag :ready) (:id 2))
           sb6 fl7 sb7 sb8 b22 bl
           (:section s5) b22 sb1 fl2 b22 sb2 b22 fl3 sb3 fl4 sb4 sb5 fl6 sb6 fl7 sb7 sb8 b22 bl
           (:section s6) b22 sb1 sb2 sb3 sb4 sb5 sb6 sb7 sb8 b22 bl
           (:section s7) (:newline) b22 sb1 sb2 sb3 fl4 b22 sb4 sb5 sb6 fl7 sb7 sb8 b38 bl)))
