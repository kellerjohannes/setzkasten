`((:header
   (:filename "b3-c13-m2")
   (:alt-name "m3.013")
   (:comment "q021_s092, origin: 1026")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Esempio delle quattro quinte diatoniche per ♭ molle,\\composte et incomposte")
                 (:de "Beispiel der vier diatonischen quinte per ♭ molle,\\composte und incomposte.")
                 (:en "Example of the four diatonic quinte in ♭ molle,\\composte and incomposte")))
   (:section-headings
    (s1 (:alt (:it "Prima quinta")
              (:de "erste quinta")
              (:en "First quinta")))
    (s2 (:alt (:it "Seconda quinta")
              (:de "zweite quinta")
              (:en "Second quinta")))
    (s3 (:alt (:it "Terza quinta")
              (:de "dritte quinta")
              (:en "Third quinta")))
    (s4 (:alt (:it "Quarta quinta")
              (:de "vierte quinta")
              (:en "Fourth quinta"))))
   (:section-captions
    (s1 (:alt (:it "composta / incomposta")
              (:de "composta / incomposta")
              (:en "composta / incomposta")))
    (s2 (:alt (:it "composta / incomposta")
              (:de "composta / incomposta")
              (:en "composta / incomposta")))
    (s3 (:alt (:it "composta / incomposta")
              (:de "composta / incomposta")
              (:en "composta / incomposta")))
    (s4 (:alt (:it "composta / incomposta")
              (:de "composta / incomposta")
              (:en "composta / incomposta")))))
  (:preamble-lilypond
   (:clef-overrides
    (s1 v1 "treble_8")
    (s2 v1 "treble_8")
    (s3 v1 "treble_8")
    (s4 v1 "treble_8")))
  (:data
   (:text 150 58
          (225 1737 "Eſſempio delle quattro Quinte Diatoniche per ♭. molle comp.&incomp."))
   (:text 90 58
          (159 nil "Prima")
          (402 nil "Quinta")
          (658 nil "Seconda")
          (931 nil "quinta")
          (1178 nil "Terza")
          (1426 nil "quinta")
          (1689 nil "Quarta")
          (1936 nil "Quinta."))
   (:music 2232
           (:voice v1)
           (:section s1) cclef5 b22 fl4 (:key-signature nil nil nil nil nil nil :flat)
           b22 sb2 sb3 sb4 sb5 (:divider :regular) sb6 bl
           b22 sb2 b22 sb6 b22 bl
           (:section s2) sb3 sb4 sb5 sb6 (:divider :regular) sb7 bl
           b22 sb3 b38 sb7 b22 bl
           (:section s3) sb4 sb5 sb6 sb7 (:divider :regular) sb8 bl
           b22 sb4 b38 sb8 b22 bl
           (:section s4) sb5 sb6 sb7 sb8 (:divider :regular) sb9 bl
           b38 sb5 b38 sb9 b38 bl)
   (:text 70 58
          (132 nil "compoſta")
          (429 nil "incomp.")
          (652 nil "comp.")
          (950 nil "incomp.")
          (1176 nil "comp.")
          (1450 nil "incomp.")
          (1672 nil "comp.")
          (1978 nil "incomp."))))
