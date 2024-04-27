`((:header
   (:filename "b5-c55-m6")
   (:alt-name "m5.077")
   (:comment "q021_s261, rotation: -0.44, origin: 496; q021_s262, rotation: 0.68, origin: 957")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Regola di ritrovare le sette ottave sopra Ffaut secondo,\\con li sottoscritti esempi")
                 (:de "Methode, die sieben ottave über Ffaut secondo zu finden,\\mit den unten geschriebenen Beispielen.")
                 (:en "Method of finding the seven ottave on Ffaut secondo,\\with the examples written below")))
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
          (84 2002 "Regola di ritrouare le sette ᴏttaue sopra ꜰ fa ut ſecondo,con li sottoſcritti eſſempi."))
   (:text 90 58
          (214 nil "Prima")
          (467 nil "ottaua.")
          (1175 nil "Seconda")
          (1464 nil "ottaua.")
          (1978 nil "Terza"))
   (:music 2228
           (:voice v1)
           (:section s1) cclef7 b22 sh2 sb2 b22 fl4 b22 sbd4 sh4 sb4 sh5 sb5 sh6 sb6 sh7 sb7 sh8 sb8 sh9 sb9 b22 bl
           (:section s2) b22 sh2 sb2 b22 sh3 sb3 b22 sh4 sb4 b22 sh5 sb5 sb6 sh7 sb7 sh8 sb8 sh9 sb9 b38 bl
           (:section s3) b22 sh2 sb2 fl4 sbd4 fl5 sbd5 custos5)
   (:text 90 58
          (168 nil "ottaua .")
          (736 nil "quarta")
          (999 nil "ottaua .")
          (1541 nil "Quinta")
          (1831 nil "ottaua."))
   (:music 2223
           (:alt (:diplomatic cclef5)
                 (:critical cclef7)
                 (:coord-barre "MZ2")
                 (:coord-norm "–")
                 (:comment "In allen Exemplaren: Diese Zeile steht im C3-Schlüssel.")
                 (:flag :ready) (:id 1))
           sh5 sb5 sh6 sb6 fl8 sbd8 fl9 sbd9 sh9 sb9 bl
           (:section s4) (:newline) sh2 sb2 fl4 sbd4 sh4 sb4 sh5 sb5 sh6 sb6 fl8 sbd8 sh8 sb8 sh9 sb9 bl
           (:section s5) sh2 sb2 sh3 sb3 sh4 sb4
           (:alt (:diplomatic sh3)
                 (:critical sh5)
                 (:coord-barre "MZ2 N17")
                 (:coord-norm "G5 N4")
                 (:comment "In allen Exemplaren: Das ♯ steht zwei Positionen tiefer.")
                 (:flag :ready) (:id 2))
           sb5 sh6 sb6 sh7 sb7 sh8 sb8 sh9 sb9 b22)
   (:text 70 58
          (377 nil "Seſta")
          (588 nil "ottaua.")
          (1336 nil "settima")
          (1614 nil "ottaua."))
   (:music 2223
           (:section s6) cclef7 b38 sh2 b22 sb2 b22 fl4 b22 sbd4 b22 fl5 b22 sbd5 b22 fl6 b22 sbd6 b22 sh6 b22 sb6 b22 fl8 b22 sbd8 b22 fl9 b22 sbd9 sh9 b22 sb9 b22 bl
           (:section s7) (:newline) b22 sh2 sb2 fl4 sbd4 b22 fl5 sbd5 sh5 sb5 sh6 sb6 fl8 b22 sbd8 b22 sh8 b22 sb8 sh9 sb9 b22 bl)))
