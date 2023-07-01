`((:header
   (:filename "b2-c12-m1")
   (:alt-name "m2.015")
   (:comment "q021_s065, rotation: 0, origin: 448")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Esempio delle dissonanze sciolte, con li passaggi antichi,\\et moderni, a due voci")
                 (:de "")
                 (:en "")))
   (:section-headings
    (s1 (:alt (:it "All'antica")
              (:de "")
              (:en "")))
    (s2 (:alt (:it "All'antica")
              (:de "")
              (:en "")))
    (s3 (:alt (:it "Moderno")
              (:de "")
              (:en "")))
    (s4 (:alt (:it "Non troppo moderne")
              (:de "")
              (:en "")))
    (s5 (:alt (:it "Non moderne")
              (:de "")
              (:en "")))))
  (:preamble-lilypond
   (:clef-overrides
    (s5 v1 "treble_8")))
  (:data
   (:text 90 58
     (177 1859 "Eſſempio delle diſſonanze ſciolte,con li paſſaggi antichi,et moderni. à due uoci."))
   (:music 2216
           (:voice v1)
           (:section s1) cclef7 m4 m5 m6 m7 sb8 bl
           (:section s2) sb4 dot4 m5d sb6 bl
           (:section s3) b38 sb4 b38 m6 b38 m7 b38 b22 bl
           (:section s4) (:newline) m7 sm6 (:divider :regular) sm5 bl m4 sm5 (:divider :regular) sm6 bl b22 sm7 cr6 cr5 sm7 sm6
           (:section s5) cclef5 b22 sb6 b22 sb6 m7 dot8 sm6 sm5d sm4 sb3 m5 bl)
   (:text 90 58
     (95 nil "allʼantica")
     (345 nil "allʼant.")
     (572 nil "moderno")
     (1056 nil "non troppo moderne")
     (1707 nil "non moderne"))
   (:music 2219
           (:voice v2)
           (:section s1) cclef7 b38 b38 br4 dot4 b38 b22 bl
           (:section s2) b22 sb0 sb2 b38 sb2 bl
           (:section s3) sm0 sm1 sm2 sm3 sm4 m2 sm3 bl
           (:section s4) b38 sb3 b22 b38 bl m2 b22 m3 bl b38 b38 m3 b38 m2 b38 b38
           (:section s5) (:f-clef) max7 fclef7 b38 mrest5 sb5 sm4 sm3 m2 sb4 sm5d sm6 sb7 bl)))
