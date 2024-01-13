`((:header
   (:filename "b5-c56-m5")
   (:alt-name "m5.083")
   (:comment "q021_s264, rotation: 1.18, origin: 898")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "[Regola di ritrovare le sette ottave sopra Gsolreut terzo,\\con li sottoscritti esempi]")
                 (:de "")
                 (:en "Method for finding the seven ottave on Gsolreut terzo,\\with the examples written below")))
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
          (325 nil "Prima")
          (561 nil "ottaua.")
          (1238 nil "Seconda")
          (1532 nil "ottaua.")
          (2013 nil "Terza"))
   (:music 2225
           (:voice v1)
           (:section s1) cclef5 b38 fl2 b22 sb2 b22 fl3 b22 sb3 b22 sbd3 b22 sbd4 b22 fl6 b22 sb6 b22 sbd6 b22 sbd7 b22 fl9 b22 sb9 b22 bl
           (:section s2) b22 fl2 b22 sb2 b22 sbd2 b22 sbd3 b22 sbd4 b22 sbd5 b22 sbd6 b22 sbd7 b22 fl9 b22 sb9 b22 bl
           (:section s3) b22 fl2 b22 sb2 b22 fl3 b22 sb3 b22 fl4 b22 sb4 custos4)
   (:text 90 58
          (232 nil "ottaua.")
          (972 nil "Quarta")
          (1298 nil "ottaua.")
          (1943 nil "quinta"))
   (:music 2221
           cclef5 b38 sbd4 b22 fl6 b22 sb6 b22 fl7 b22 sb7 b38 sb8 b22 fl9 b22 sb9 b38 bl
           (:section s4) (:newline) b38 fl2 b22 sb2 b38 fl3 b22 sb3 b38 sbd3 b38 sbd4 b22 fl6 b22 sb6 b22 fl7 b22 sb7 b22 sbd7 b22 fl9 b22 sb9 b38 bl
           (:section s5) b22 b38 fl2 b22 sb2 b22 sbd2 b22 sbd3 b22 sbd4 b38 custos6)
   (:text 90 58
          (150 nil "ottaua.")
          (745 nil "Seſta")
          (959 nil "ottaua.")
          (1516 nil "Settima")
          (1777 nil "ᴏttaua."))
   (:music 2212
           cclef5 b38 fl6 b22 sb6 b22 sbd6 b22 sbd7 b22 fl9 b22 sb9 b38 bl
           (:section s6) b38 fl2 sb2 fl3 sb3 fl4 sb4 b22 sb5 fl6 sb6 fl7 sb7 b22 sb8 fl9 sb9 b38 bl
           (:section s7) (:newline) b38 fl2 b22 sb2 b22 fl3 b22 sb3 b22 fl4 sb4 b22 sbd4 b22 fl6 sb6 fl7 sb7 sbd7 fl9 sb9 bl)))
