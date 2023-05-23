`((:header
   (:filename "b4-c19-m1")
   (:alt-name "m4.017")
   (:comment "q021_s161, rotation: 0, origin: 441")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio a due voci, delle quinte antecedenti,\\& sussequenti, con il buono & megliore procedere\\di ♮ & di ♭ & del diesis cromatico")
   (:section-headings
    (s1 " \\Quinta antecedente")
    (s2 "Quinta antecedente\\& sussequente")
    (s3 " \\buono procedere")
    (s4 " \\megliore")
    (s5 " \\buono procedere")
    (s6 " \\megliore")
    (s7 "modo di procedere\\con una parte")))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:data
   (:text 70 58
          (234 1766 "Eſſempio à due uoci,delle quinte antecedenti,& ſuſſequenti,con il buono &"))
   (:text 90 58
          (441 1327 "megliore procedere , di ♮. & di ♭. & del Diesis ᴄro."))
   (:music 2230
           (:voice v1)
           (:section s1) cclef5 b22 b38 sb6 b38 b22 m8 dot8 b22 sm7 b38 sb6 dot6 b22 m5d b38 blbl
           (:section s2) b38 cclef5 fl4 (:key-signature nil nil nil nil nil nil :flat) b38 b22 m2 b22 b38 sb5 b22 nat4 b22 m4 b38 sb5 b38 bl
           (:section s3) b38 sb8 b38 fl7 b38 sb7 b38 sb6 b38 bl
           (:section s4) b38 m8 dot8 sm6 fl7 sb7 b22 sb6 b22 bl custos3)
   (:text 90 58
          (81 nil "Quinta antecedente.")
          (784 nil "5. anteced.& ſuſſeq.")
          (1370 nil "buono procedere,")
          (1875 nil "megliore,"))
   (:music 2234
           (:voice v2)
           (:section s1) cclef7 (:key-signature nil nil nil nil nil nil nil) b38 sb4 b38 m3 b22 fl6 b22 m6 dot6 sm5 b22 m4 b22 sb3 b22 bl
           (:section s2) b38 cclef7 b38 fl6 (:key-signature nil nil nil nil nil nil :flat) b38 sb2 b38 m4 dot4 sm3 b38 m2 b38 m3 b38 bl
           (:section s3) b38 mrest5 b38 m6 b38 sb7 b38 sb4 b38  bl
           (:section s4) b38 mrest5 b38 m6 b38 sb7 b38 sb4 b38 bl custos1)
   (:vspace 120)
   (:music 2230
           (:voice v1)
           (:section s5) (:newline) cclef7 fl6 (:key-signature nil nil nil nil nil nil :flat) b38 sh3 m3 b38 m5 b22 nat6 b22 sb6 b38 sb7 b38 bl
           (:section s6) b38 b22 m5 dot6 sm7 b22 nat6 b22 sb6 b38 sb7 b38 b38 bl
           (:section s7) b38 b22 cclef7 (:key-signature nil nil nil nil nil nil nil) b38 b22 mrest7 b38 sb7 b38 m5 b22 fl6 b22 m6 b38 sb4 b38 m5 b38 b38 b38 bl b38 b125)
   (:text 90 58
          (167 nil "buono procedere.")
          (828 nil "megliore,")
          (1360 nil "modo di procedere con una parte."))
   (:music 2236
           (:voice v2)
           (:section s5) cclef7 fl6 (:key-signature nil nil nil nil nil nil :flat) b38 b38 mrest3 b38 m1 b38 sb4 b38 m2 b38 m5 b38 b38 bl
           (:section s6) b38 b38 sm1 b38 m3 b38 sm2 b38 sb4 b38 sbd0 b38 b38
           (:section s7) (:f-clef) max7 fclef7 (:key-signature nil nil nil nil nil nil nil) b38 b22 sb5 b38 sb7 b38 fl3 b38 m3 dot4 sm2 b38 m1 b38 m0 b38 b38 bl b38 b125)))
