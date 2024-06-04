`((:header
   (:filename "b3-c13-m3")
   (:alt-name "m3.014")
   (:comment "q021_s092, origin line 1: 1020, line 2: 1019, line 3: 1018")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Essempio delle sette Ottaue Diatoniche per ♭ molle, composte et incomposte.")
                 (:de "Beispiel der sieben diatonischen ottave per ♭ molle, composte und incomposte")
                 (:en "Example of the seven diatonic ottave in ♭ molle, composte and incomposte")))
   (:section-headings
    (s1 (:alt (:it "Prima Ottaua")
              (:de "erste ottava")
              (:en "First ottava")))
    (s2 (:alt (:it "Seconda Ottaua")
              (:de "zweite ottava")
              (:en "Second ottava")))
    (s3 (:alt (:it "Terza Ottaua")
              (:de "dritte ottava")
              (:en "Third ottava")))
    (s4 (:alt (:it "Quarta Ottaua")
              (:de "vierte ottava")
              (:en "Fourth ottava")))
    (s5 (:alt (:it "Quinta Ottaua")
              (:de "fünfte ottava")
              (:en "Fifth ottava")))
    (s6 (:alt (:it "Sesta Ottaua")
              (:de "sechste ottava")
              (:en "Sixth ottava")))
    (s7 (:alt (:it "Settima Ottaua")
              (:de "siebte ottava")
              (:en "Seventh ottava"))))
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
              (:en "composta / incomposta")))
    (s5 (:alt (:it "composta / incomposta")
              (:de "composta / incomposta")
              (:en "composta / incomposta")))
    (s6 (:alt (:it "composta / incomposta")
              (:de "composta / incomposta")
              (:en "composta / incomposta")))
    (s7 (:alt (:it "composta / incomposta")
              (:de "composta / incomposta")
              (:en "composta / incomposta")))))
  (:preamble-lilypond
   (:clef-overrides
    (s4 v1 "treble_8")
    (s5 v1 "treble_8")))
  (:data
   (:text 110 58
          (169 1810 "Eſſempio delle ſette ᴏttaue Diatoniche,per ♭.molle,compoſte et incompoſte."))
   (:text 90 58
          (87 nil "Prima Ottaua")
          (536 nil "composta")
          (847 nil "incomp.")
          (1195 nil "Seconda ᴏttaua")
          (1632 nil "compoſta")
          (1931 nil "incomp."))
   (:music 2213
           (:voice v1)
           (:section s1) cclef7 b22 fl6 (:key-signature nil nil nil nil nil nil :flat)
           b22 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 (:divider :regular) sb8 b38 bl
           b38 sb1 b22 b22 sb8 b38
           (:section s2) cclef7 b22 fl6 (:key-signature nil nil nil nil nil nil :flat)
           b22 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 (:divider :regular) sb9 b22 bl
           b38 sb2 b22 b38 sb9 b38 bl)
   (:text 110 58
          (143 nil "Terza Ottaua")
          (603 nil "compoſta")
          (897 nil "incomp.")
          (1293 nil "Quarta Ottaua")
          (1731 nil "compoſta")
          (1987 nil "incomp."))
   (:music 2226
           (:voice v1)
           (:section s3) cclef7 b22 fl6 (:key-signature nil nil nil nil nil nil :flat)
           b22 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 (:divider :regular) sb10 b38 bl
           b38 sb3 b38 sb10 b38 b38 b38
           (:section s4) (:newline) cclef5 b22 fl4 (:key-signature nil nil nil nil nil nil :flat)
           sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b22 (:divider :regular) sb9 bl
           b38 sb2 b38 sb9 b22 bl)
   (:text 110 58
          (87 nil "5. ᴏttaua")
          (364 nil "comp.")
          (578 nil "incomp.")
          (845 nil "6. Ottaua")
          (1141 nil "comp.")
          (1312 nil "incomp.")
          (1536 nil "7. Ottaua")
          (1826 nil "comp.")
          (2008 nil "incomp."))
   (:music 2201
           (:voice v1)
           (:section s5) cclef3 b22 fl2 (:key-signature nil nil nil nil nil nil :flat)
           b22 sb1 sb2 sb3 sb4 sb5 sb6 sb7 (:divider :regular) sb8 bl
           b22 sb1 b22 sb8 b22
           (:section s6) cclef3 b22 fl2 (:key-signature nil nil nil nil nil nil :flat)
           sb2 sb3 sb4 sb5 sb6 sb7 sb8 (:divider :regular) sb9 bl
           b22 sb2 b22 sb9 b22 bl
           (:section s7) (:newline) sb3 sb4 sb5 sb6 sb7 sb8
           (:alt (:diplomatic sb8)
                 (:critical)
                 (:coord-barre "MZ3 N26")
                 (:coord-norm "G7 N6")
                 (:comment "In allen Exemplaren: A–A (Note fehlerhaft verdoppelt).")
                 (:flag :ready) (:id 1))
           sb9 (:divider :regular) sb10 bl
           b38 sb3 b38 sb10 bl)))
