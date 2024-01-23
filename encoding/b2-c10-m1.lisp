`((:header
   (:filename "b2-c10-m1")
   (:alt-name "m2.013")
   (:comment "q021_s063, rotation: 0.75, origin: 414")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Esempio di comporre la dissonanza detta settima,\\sincopata con la sesta")
                 (:de "Beispiel, die Dissonanz genannt settima zu setzen,\\synkopiert mit der sesta.")
                 (:en "Example of composing with the dissonance called the settima,\\sincopata with the sesta")))
   (:section-headings
    (s1 (:alt (:it "A due voci")
              (:de "für zwei Stimmen")
              (:en "in two voci")))
    (s2 (:alt (:it "A tre voci")
              (:de "für drei Stimmen")
              (:en "in three voci"))))
   (:voice-labels
    (s1 v1 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenor")))
    (s1 v2 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenor")))
    (s2 v1 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenor")))
    (s2 v2 (:alt (:it "Alto")
                 (:de "Alto")
                 (:en "Alto")))
    (s2 v3 (:alt (:it "Basso")
                 (:de "Basso")
                 (:en "Bass"))))
   (:voice-order
    (s1 v1 v2)
    (s2 v2 v1 v3)))
  (:data
   (:text 70 58
     (263 nil "Eſſempio di comporre la diſſonanza detta Settima,ſincopata con la Seſta."))
   (:text 90 58
     (304 nil "à")
     (416 nil "due")
     (577 nil "uoci")
     (1163 nil "à")
     (1434 nil "tre")
     (1818 nil "uoci"))
   (:music 2191
           (:section s1)
           (:voice v1) cclef7 b38 m5d b38 sb7 b38 m6 b38 sb7 b38 b38
           (:voice v2) cclef7 b38 sb3 b38 sb1 b38 sb0 b38 b38
           (:section s2)
           (:voice v1) cclef7 b38 mrest7 sb7 b38 m6 b38 sb7 b38 b38
           (:voice v2) cclef5 b38 sb7 b38 sb8 b38 sb7 b38 b38
           (:voice v3) (:f-clef) max7 fclef7 b38 sb4 b38 sb5 b38 sb4 b38 bl b38)
   (:text 70 58
     (145 nil "Tenore")
     (629 nil "Tenore")
     (1050 nil "Tenore")
     (1473 nil "Alto")
     (1897 nil "Baſſo."))))
