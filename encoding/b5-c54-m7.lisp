`((:header
   (:filename "b5-c54-m7")
   (:alt-name "m5.71")
   (:comment "q021_259, rotation: 0, origin: 584")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Regola di ritrovare le sette ottave sopra Gsolreut [quarto],\\con i sottoscritti esempi")
                 (:de "")
                 (:en "Method of finding the seven ottave on Gsolreut [quarto],\\with the examples written below")))
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
     (173 1898 "Regola di ritrouare le sette ᴏttaue sopra ɢ sol re ut,con li sottoſcritti eſſempi."))
   (:text 90 58
     (266 nil "Prima ottaua.")
     (866 nil "Seconda ottaua.")
     (1387 nil "Terza ottaua.")
     (1893 nil "Quarta"))
   (:music 2230
           (:voice v1)
           ;; JK: Zweifel, ob in der Quelle wirklich ein Punkt über der vierten Note gedruckt
           ;; ist. Eine Stellungnahme von Luigi steht aus.
           ;;
           ;; OPEN
           (:section s1) cclef5 b22 sbd2 sbd3 fl4 sbd4 sbd5 sbd6 fl7 sbd7 sbd8 sbd9 bl
           (:section s2) b22 sbd2 b22 fl3 sbd3 b22 fl4 sbd4 sbd5 fl6 sbd6 fl7 sbd7 sbd8 sbd9 b22 bl
           (:section s3) b22 sbd2 sbd3 sbd4 sbd5 sbd6 sbd7 fl9 sb9 sbd9 b22 bl
           (:section s4) (:newline) b38 sbd2 sbd3 fl4 sbd4 sbd5 custos6)
   (:text 70 58
     (87 nil "ᴏttaua.")
     (584 nil "quinta ottaua.")
     (1211 nil "Seſta ottaua.")
     (1757 nil "Settima ottaua."))
   (:music 2223
           cclef5 b38 sbd6 sbd7 sbd8 sbd9 b22 bl
           (:section s5) b22 sbd2 b22 fl3 b22 sbd3 b22 fl4 sbd4 sbd5 b22 sbd6 b22 fl7 sbd7 sbd8 sbd9 bl
           (:section s6) b22 sbd2 b22 sbd3 sbd4 b22 fl6 sb6 sbd6 sbd7 b22 fl9 b22 sb9 sbd9 b22 bl
           (:section s7) (:newline) b22 sbd2 sbd3 sbd4 sbd5 sbd6 sbd7 sbd8 sbd9 bl)))
