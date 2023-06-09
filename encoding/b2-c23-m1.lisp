`((:header
   (:filename "b2-c23-m1")
   (:alt-name "m2.026")
   (:comment "q021_s074, rotation: -0.49, origin: 1000")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempi d'alcune ottave doppie")
   (:line-headings
    "Naturali"
    "Accidentali")
   (:section-captions
    (s1 "Terza\\minore")
    (s2 "Terza\\maggiore")
    (s3 "Quinta\\ ")
    (s4 "Sesta\\maggiore")
    (s5 "Sesta\\minore")
    (s6 "Ottava\\ ")
    (s7 "Terza\\maggiore")
    (s8 "Terza\\minore")
    (s9 "Quinta\\ ")
    (s10 "Ottava\\ ")))

  (:data
   (:text 110 58
     (659 766 "Eſſempi dʼalcune Ottaue doppie."))
   (:music 2233
           (:voice v1)
           (:section s1) cclef1 b38 sb4 b38 bl
           (:section s2) b38 sb3 b38 bl
           (:section s3) b38 sb5 b38 bl
           (:section s4) b38 sb6 b38 bl
           (:section s5) b38 sb8 b38 b38
           (:section s6) gclef3 b38 sb9 b38 bl
           (:section s7) (:newline) b38 cclef1 b38 sh4 b38 sb4 b38 bl
           (:section s8) b38 fl3 b38 sb3 b38 bl
           (:section s9) b38 sh4 b38 sb4 b38 bl
           (:section s10) b38 sh8 b38 sb8 bl)
   (:text 90 58
          (112 nil "na")
          (277 nil "tu")
          (435 nil "ra")
          (618 nil "li")
          (1316 nil "acci")
          (1578 nil "den")
          (1829 nil "tali"))
   (:music 2230
           (:voice v2)
           (:section s1) cclef7 b38 sb3 b38 bl
           (:section s2) b38 sb2 b38 bl
           (:section s3) b38 sb4 b38 bl
           (:section s4) b38 sb5 b38 bl
           (:section s5) b38 sb7 b38 b38 bl
           (:section s6) b38 b38 sb10 b38 b22 bl
           (:section s7) b38 cclef7 b38 sh3 b38 sb3 b38 bl
           (:section s8) b38 fl2 b38 sb2 b38 bl
           (:section s9) b38 sh3 b38 sb3 b38 bl
           (:section s10) b38 sh7 b38 sb7 bl)
   (:text 90 58
          (50 nil "3.mi.")
          (226 nil "3.ma.")
          (454 nil "5.")
          (542 nil "6.ma.")
          (710 nil "6.mi.")
          ;; Diese und die analoge Idealisierung sind zu bestätigen, scheinen aber plausibel.
          (1001 nil (:alt (:diplomatic "5.") (:idealised "8.")))
          (1269 nil "3.mag.")
          (1510 nil "3.mi.")
          (1825 nil "5.")
          ;; siehe oben
          (2059 nil (:alt (:diplomatic "5.") (:idealised "8."))))
   (:music 2235
           (:voice v3)
           (:section s1) (:f-clef) max7 fclef7 b22 sb5 bl
           (:section s2) b38 sb4 b22 bl
           (:section s3) b38 sb4 b38 bl
           (:section s4) b38 sb4 b38 bl
           (:section s5) b38 sb6 b38 b38 bl
           (:section s6) b38 b38 sb7 b38 b22 bl
           (:section s7) b38 (:f-clef) max7 fclef7 b38 sb5 b38 b22 bl
           (:section s8) b38 b38 sb4 b38 b38 bl
           ;; interessante Verwendung von 'nat'
           (:section s9) b38 nat3 b38 sb3 b22 b22 bl
           (:section s10) b38 sh4 b22 sb4 b22 bl)))
