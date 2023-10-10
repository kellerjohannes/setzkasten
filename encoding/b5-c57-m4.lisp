`((:header
   (:filename "b5-c57-m4")
   (:alt-name "m5.087")
   (:comment "q021_s265, rotation: -0.97, origin: 479; q021_s266, rotation: 0.82, origin: 987")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "[Regola di ritrovare le sette ottave sopra Gsolreut quinto,\\con li sottoscritti esempi]")
                 (:de "")
                 (:en "")))
   (:section-headings
    (s1 (:alt (:it "Prima ottava")
              (:de "")
              (:en "")))
    (s2 (:alt (:it "Seconda ottava")
              (:de "")
              (:en "")))
    (s3 (:alt (:it "Terza ottava")
              (:de "")
              (:en "")))
    (s4 (:alt (:it "Quarta ottava")
              (:de "")
              (:en "")))
    (s5 (:alt (:it "Quinta ottava")
              (:de "")
              (:en "")))
    (s6 (:alt (:it "Sesta ottava")
              (:de "")
              (:en "")))
    (s7 (:alt (:it "Settima ottava")
              (:de "")
              (:en "")))))
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
          (348 nil "ᴘrima")
          (573 nil "ottaua")
          (1367 nil "Seconda")
          (1642 nil "ottaua"))
   (:music 2210
           (:voice v1)
           (:section s1) cclef5 b38 fl2 b22 sbd2 b22 fl3 b22 sbd3 b22 sh3 b22 sb3 b22 sh4 b22 sb4 b22 fl6 b22 sbd6 b22 sh6 sb6 b22 sh7 sb7 b22 fl9 sbd9 bl
           (:section s2) fl2 sbd2 b22 sh2 sb2 b22 sh3 sb3 b22 sh4 sb4 b22 sh5 sb5 b22 sh6 sb6 b22 sh7 sb7 b22 fl9 sbd9 bl)
   (:text 110 58
          (172 nil "Terza ottaua")
          (986 nil "Quarta ottaua")
          (1754 nil "quinta ottaua"))
   (:music 2236
           (:section s3) cclef5 fl2 sbd2 fl3 sbd3 fl4 sbd4 sh4 sb4 fl6 sbd6 fl7 sbd7 sbd8 fl9 sbd9 bl
           (:section s4) (:newline) fl2 sbd2 fl3 sbd3 sh3 sb3 sh4 sb4 fl6 sbd6
           (:alt (:diplomatic sh6 sb6)
                 (:critical fl7 sbd7)
                 (:comment "Original: Die drittletzte Note ist ein D♯.")
                 (:flag :draft) (:id 1))
           sh7 sb7 fl9 sbd9 bl
           (:section s5) b22 fl2 sbd2 sh2 sb2 sh3 sb3 sh4 sb4 fl6 sbd6 b22 custos6)
   (:text 110 58
          (492 nil "Seſta ottaua")
          (1352 nil "Settima ottaua"))
   (:music 2231
           cclef5 sh6 sb6 sh7 sb7 fl9 sbd9 bl
           (:section s6) fl2 sbd2 fl3 sbd3 fl4 sbd4 sbd5 fl6 sbd6 b22 fl7 sbd7 b22 sbd8 b22 fl9 sbd9 bl
           (:section s7) (:newline) fl2 sbd2 b22 fl3 sbd3 b22 fl4 b22 sbd4 b22 sh4 b22 sb4 b22 fl6 sbd6 b22 fl7 sbd7 sh7 b22 sb7 b38 fl9 sbd9 bl)))
