`((:header
   (:filename "b2-c27-m1")
   (:alt-name "m2.029")
   (:comment "q021_s078, rotation: -0.92, origin: 966")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Esempio della quintadecima, et della vigesima seconda,\\a tre voci, et a quattro")
                 (:de "")
                 (:en "Example of the quintadecima, and of the vigesima seconda,\\in three and four voci")))
   (:section-headings
    (s1 (:alt (:it "Quintadecima con\\ottava in mezzo\\ ")
    ;; Kommentar Anne: no need for backslashes without any content thereafter
              (:de "")
              (:en "Quintadecima with an\\ottava in the middle")))
    (s2 (:alt (:it "Vigesima seconda\\con due ottave\\in mezzo")
              (:de "")
              (:en "Vigesima seconda\\with two ottave\\in the middle"))))
   (:voice-labels
    (s1 v1 (:alt (:it "Soprano")
                 (:de "")
                 (:en "Soprano")))
    (s1 v2 (:alt (:it "Alto")
                 (:de "")
                 (:en "Alto")))
    (s1 v3 (:alt (:it "Tenore")
                 (:de "")
                 (:en "Tenor")))
    (s2 v1 (:alt (:it "Soprano")
                 (:de "")
                 (:en "Soprano")))
    (s2 v2 (:alt (:it "Alto")
                 (:de "")
                 (:en "Alto")))
    (s2 v3 (:alt (:it "Tenore")
                 (:de "")
                 (:en "Tenor")))
    (s2 v4 (:alt (:it "Basso")
                 (:de "")
                 (:en "Bass")))))
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
           (:voice v2) b38 b38
           (:alt (:diplomatic cclef3) (:critical cclef1)
                 (:comment "Original: C2-Schlüssel.") (:flag :draft) (:id 1))
           b38 sb4 b38 bl
           (:voice v3) b38 b38 cclef7 b38 sb3 b38 bl
           (:voice v4) b38 b38 (:f-clef) max7 fclef7 b38 b38 sb0 b38 bl)
   (:text 70 58
          (99 nil "15. con 8. in mezzo")
          (1055 1054 "Vigeſima ſeconda con due ottaue in mezzo."))))
