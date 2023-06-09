`((:header
   (:filename "b3-c31-m1")
   (:alt-name "m3.062")
   (:comment "q021_s108, origin: 1030")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio delle cadentie a tre voci, della music participata e mista")
   (:section-captions
    (s1 "")
    (s2 "tutta buona")
    (s3 "")
    (s4 ""))
   (:voice-labels
    (s1 v1 "Alto")
    (s1 v2 "Tenore")
    (s1 v3 "Basso")
    (s4 v1 "Tenore")
    (s4 v2 "Tenore")
    (s4 v3 "Basso")))

  (:data
   (:text 90 58
          (292 1605 "Eſſempio delle cadentie à tre uoci,della muſica participata & miſta."))
   (:text 110 58
          (165 nil "Alto")
          (1835 nil "Tenore"))
   (:music 2216
           (:voice v1)
           (:section s1) cclef5 b38 m9 b22 sb10 b22 sb9 b22 sh8 b22 m8 b22 sb9 b22 bl
           (:section s2) b38 b38 b22 sb5 b38 b38 sb5 b38 b38 sb5 b38 b38 bl
           (:section s3) b22 m3 b22 fl4 b22 m4 b22 m2 b22 sb3 b22 m3 b38 b22
           (:section s4) (:newline) cclef7 b22 fl6 (:key-signature nil nil nil nil nil nil :flat) b22
           fl9 b22 m9 b22 m7 b22 m8 b22 m4 b22 sb7 b22 blbl)
   (:text 110 58
          (175 nil "ᴛenore")
          (661 nil "tutta buona")
          (1769 nil "Tenore"))
   (:music 2213
           (:voice v2)
           (:section s1) cclef7 (:key-signature nil nil nil nil nil nil nil)
           b38 sb9 b38 sb8 b38 sh7 b38 sb7 b38 sb8 b22 bl
           (:section s2) b38 b38 b22 sb5 b38 b38 sb4 b38 b38 sb5 b38 b38 bl
           (:section s3) b22 mrest3 b38 m3 dot4 cr2 b22 cr1 b22 m2 b22 sb3 b38
           (:section s4) cclef7 b38 fl6 (:key-signature nil nil nil nil nil nil :flat)
           b38 m6 b38 m5d b38 sb6 b38 sb5 b38 b22 blbl b38)
   (:text 110 58
          (167 nil "Baſſo")
          (1871 nil "Baſſo"))
   (:music 2216
           (:voice v3)
           (:section s1) cclef7 (:key-signature nil nil nil nil nil nil) b38
           sb7 b38 sb6 b38 sb5 b22 b38 sb4 b38 b38 bl
           (:section s2) b22 mrest3 b38 m3
           ;; typographische Verschönerung, allgemien zu entscheiden
           (:alt (:diplomatic dot6) (:idealised dot4)) cr2 b38 cr1 b38 m2 b38 sb3 bl
           (:section s3) b38 b38 sb1 b38 b38 sb0 b38 b38 sb7 b38 b38 b38
           (:section s4) cclef7 b38 fl6 (:key-signature nil nil nil nil nil nil :flat)
           b38 m4 b38 sb3 b38 m2 b38 sb3 b38 b22 blbl b38)))
