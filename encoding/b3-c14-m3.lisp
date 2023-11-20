`((:header
   (:filename "b3-c14-m3")
   (:alt-name "m3.017")
   (:comment "q021_s093, origin line 1: 450, line 2: 460, line 3: rotation -0.8, origin: 1062 (q021_s094)")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Esempio delle sette ottave diatoniche\\notate con quattro ♭ molli, semplici")
                 (:de "")
                 (:en "Example of the seven simple diatonic ottave\\notated with four ♭ molli")))
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
              (:en "Seventh ottava"))))
   (:section-captions
   ;;Kommentar Anne: same question
    (s1 (:alt (:it "Composta / incomposta")
              (:de "")
              (:en "composta / incomposta")))
    (s2 (:alt (:it "Composta / incomposta")
              (:de "")
              (:en "composta / incomposta")))
    (s3 (:alt (:it "Composta / incomposta")
              (:de "")
              (:en "composta / incomposta")))
    (s4 (:alt (:it "Composta / incomposta")
              (:de "")
              (:en "composta / incomposta")))
    (s5 (:alt (:it "Composta / incomposta")
              (:de "")
              (:en "composta / incomposta")))
    (s6 (:alt (:it "Composta / incomposta")
              (:de "")
              (:en "composta / incomposta")))
    (s7 (:alt (:it "Composta / incomposta")
              (:de "")
              (:en "composta / incomposta")))))
  (:preamble-lilypond
   (:clef-overrides
    (s4 v1 "treble_8")
    (s5 v1 "treble_8")
    (s6 v1 "treble_8")
    (s7 v1 "treble_8")))
  (:data
   (:text 110 58
          (216 1754 "Eſſempio delle sette ᴏttaue Diatoniche notate,con quattro ♭. molli,ſemplici."))
   (:text 110 58
          (286 nil "Prima")
          (476 nil "Ottaua")
          (685 nil "compoſta")
          (954 nil "incomp.")
          (1216 nil "Seconda")
          (1438 nil "Ottaua")
          (1633 nil "compoſta")
          (1888 nil "incomp,"))
   (:music 2172
           (:voice v1)
           (:section s1) cclef7 fl6 b22 fl5 b22 fl29 b22 (:key-signature nil nil :flat nil nil :flat :flat)
           sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 (:divider :regular) sb7 bl
           b38 sb0 b38 sb7 b22 b38 bl
           (:section s2) sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 (:divider :regular) sb8 bl
           b38 sb1 b38 sb8 b38 b38 bl)
   (:vspace 30)
   (:text 110 58
          (261 nil "Terza Ottaua compoſta")
          (887 nil "incomp.")
          (1327 nil "Quarta Ottaua comp.")
          (1934 nil "incomp."))
   (:music 2166
           (:voice v1)
           (:section s3) cclef7 fl6 b22 fl5 b22 fl29 b22 (:key-signature nil nil :flat nil nil :flat :flat)
           sb2 b22 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb7 b22 sb8 b22 (:divider :regular) sb9 b22 bl
           b38 sb2 b38 sb9 b38
           (:section s4) (:newline) cclef5 fl4 b22 fl3 b22 fl07 b22 (:key-signature nil nil :flat nil nil :flat :flat)
           sb1 b22 sb2 b22 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb7 b22 (:divider :regular) sb8 b22 bl
           b38 sb1 b38 sb8 b38 bl)
   (:vspace 30)
   (:text 110 58
          (165 nil "5. Ottaua comp.")
          (586 nil "incom.")
          (900 nil "6. Ottaua comp.")
          (1367 nil "incom.")
          (1591 nil "7. ᴏttaua com.")
          (1996 nil "incomp."))
   (:music 2199
           (:voice v1)
           (:section s5) cclef5 fl4 fl3 fl07 (:key-signature nil nil :flat nil nil :flat :flat)
           sb2 sb3 sb4 sb5 sb6 sb7 sb8 (:divider :regular) sb9 bl
           sb2 b38 sb9 b38
           (:section s6) cclef3 fl2 fl18 fl5 (:key-signature nil nil :flat nil nil :flat :flat)
           sb1 sb2 sb3 sb4 sb5 sb6 sb7 (:divider :regular) sb8 bl
           b22 sb1 b38 sb8 b22 bl
           (:section s7) (:newline) sb2 sb3 sb4 sb5 sb6 sb7 sb8 (:divider :regular) sb9 bl
           sb2 sb9 b38 bl)))
