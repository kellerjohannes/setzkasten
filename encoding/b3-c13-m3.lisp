`((:header
   (:filename "b3-c13-m3")
   (:alt-name "m")
   (:comment "q021_s092, origin line 1: 1020, line 2: 1019, line 3: 1018")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio delle sette ottave diatoniche per ♭ molle, composte ed incomposte")
   (:section-headings
    (s1 "Prima ottava")
    (s2 "Seconda ottava")
    (s3 "Terza ottava")
    (s4 "Quarta ottava")
    (s5 "Quinta ottava")
    (s6 "Sesta ottava")
    (s7 "Settima ottava"))
   (:section-captions
    (s1 "Composta / incomposta")
    (s2 "Composta / incomposta")
    (s3 "Composta / incomposta")
    (s4 "Composta / incomposta")
    (s5 "Composta / incomposta")
    (s6 "Composta / incomposta")
    (s7 "Composta / incomposta")))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
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
          (364 nil "comp..")
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
           (:section s7) (:newline) sb3 sb4 sb5 sb6 sb7 sb8 (:alt (:diplomatic sb8) (:idealised)) sb9 (:divider :regular) sb10 bl
           b38 sb3 b38 sb10 bl)))
