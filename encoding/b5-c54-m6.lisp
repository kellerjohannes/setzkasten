`((:header
   (:filename "b5-c54-m6")
   (:alt-name "m5.70")
   (:comment "q021_259, rotation: 0, origin: 588")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Regola di ritrovare le sette ottave sopra Ffaut quarto,\\con i sottoscritti esempi")
                 (:de "")
                 (:en "Method of finding the seven ottave on Ffaut quarto,\\with the examples written below")))
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
     (142 1985 "Regola da ritrouare le sette ᴏttaue sopra ꜰ fa ut quarto,con gli sottoſcritti eſſempi."))
   (:text 90 58
     (255 nil "Prima ottaua.")
     (833 nil "seconda ottaua.")
     (1432 nil "Terza ottaua.")
     (2001 nil "Quarta"))
   (:music 2221
           (:voice v1)
           (:section s1) cclef5 b22 sbd1 sbd2 fl3 sbd3 fl4 sbd4 sbd5 fl6 sbd6 fl7 sbd7 sbd8 bl
           (:section s2) sbd1 fl2 sbd2 fl3 sbd3 fl4 sbd4 sh4 sb4 fl6 sbd6 fl7 sbd7 sbd8 bl
           (:section s3) sbd1 sbd2 sbd3 fl4 sbd4 sbd5 sbd6 sbd7 sbd8 bl
           (:section s4) (:newline) sbd1 sbd2 fl3 sbd3 fl4 sbd4 sbd5 custos6)
   (:text 70 58
     (173 nil "ᴏttaua.")
     (551 nil "quinta ottaua.")
     (1219 nil "Seſta ottaua.")
     (1685 nil "Settima ottaua."))
   (:music 2232
           cclef5 b38 sbd6 b22 fl7 b22 sbd7 b22 sbd8 b22 bl
           (:section s5) b22 sbd1 fl2 sbd2 fl3 sbd3 fl4 sbd4 sbd5 fl6 sbd6 fl7 sbd7 sbd8 b22 bl
           (:section s6) b22 sbd1 sbd2 sbd3 sbd4 sbd5 sbd6 sbd7 sbd8 b22 bl
           (:section s7) (:newline) b22 sbd1 sbd2 sbd3 fl4 sbd4 sbd5 sbd6 fl7 sbd7 sbd8 b22 bl)))
