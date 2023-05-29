`((:header
   (:filename "b2-c27-m1")
   (:alt-name "m2.029")
   (:comment "q021_s078, rotation: -0.92, origin: 966")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio della quintadecima, et della vigesima seconda,\\a tre voci, et a quattro")
   (:section-headings
    (s1 "Quintadecima con\\ottava in mezzo\\ ")
    (s2 "Vigesima seconda\\con due ottave\\in mezzo"))
   (:voice-labels
    (s1 v1 "Soprano")
    (s1 v2 "Alto")
    (s1 v3 "Tenore")
    (s2 v1 "Soprano")
    (s2 v2 "Alto")
    (s2 v3 "Tenore")
    (s2 v4 "Basso")))

  (:data
   (:text 110 58
     (149 1932 "Eſſempio della Quinta decima,& della Vigeſima ſeconda,à tre uoci,& à quattro."))
   (:text 90 58
          (92 nil "Sopr.")
          (351 nil "ᴀlto")
          (623 nil "Ten.")
          (1020 nil "Sopra.")
          (1356 nil "Alto")
          (1658 nil "Ten.")
          (2035 nil "Baſſo"))
   (:music 2211
           (:section s1)
           (:voice v1) cclef1 b38 b38 sb10 b38 b38 bl
           (:voice v2) b38 b38 sb3 b38 b38
           (:voice v3) cclef7 b38 b38 sb2 b38 b38 bl
           b38 b38 b38 b38
           (:section s2)
           (:voice v1) gclef3 b22 sb9 b38 b22 bl
           ;; Bibelgruppe:
           ;; Fehler im zweiten Alt, der Schlüssel sollte C1 sein. Scheint gesichert.
           (:voice v2) b38 b38 (:alt (:diplomatic cclef3) (:idealised cclef1)) b38 sb4 b38 bl
           (:voice v3) b38 b38 cclef7 b38 sb3 b38 bl
           (:voice v4) b38 b38 (:f-clef) max7 fclef7 b38 b38 sb0 b38 bl)
   (:text 70 58
          (99 nil "15. con 8. in mezzo")
          (1055 1054 "Vigeſima ſeconda con due ottaue in mezzo."))))
