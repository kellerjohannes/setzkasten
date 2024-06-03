`((:header
   (:filename "b2-c11-m1")
   (:alt-name "m2.014")
   (:comment "q021_s064, rotation: -0.48, origin: 1045")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Essempio di comporre la Settima che fa parere due Ottaue,\\et non sono, et così due Vnisoni,\\et non sono, con due tenori, uno doppo l'altro.")
                 (:de "Beispiel, die settima zu setzen, dass es wie zwei ottave scheint\\und nicht ist, und ebenso zwei unisoni,\\und nicht ist, mit zwei tenore, einer nach dem anderen")
                 (:en "Example of composing the seventh which seems like two [consecutive] ottave,\\but is not; and likewise two [consecutive] unisoni,\\but is not; with two tenors, one after the other")))
   (:section-captions
    (s1 (:alt (:it "per semitono\\con l'Vnisono")
              (:de "per semitono\\mit dem unisono")
              (:en "by semitono\\with the unisono")))
    (s2 (:alt (:it "per tono\\con l'Vnisono")
              (:de "per tono\\mit dem unisono")
              (:en "by tono\\with the unisono")))
    (s3 (:alt (:it "per tono\\con la Settima")
              (:de "per tono\\mit der settima")
              (:en "by tono\\with the settima")))
    (s4 (:alt (:it "per semitono\\con l'Ottaua")
              (:de "per semitono\\mit der ottava")
              (:en "by semitono\\con l'ottava")))))
  (:data
   (:text 70 58
     (144 1946 "Eſſempio di comporre la settima che fa parere due Ottaue, et non ſono , et così due"))
   (:text 90 58
     (446 1273 "Vniſoni , et non ſono,con due tenori,uno doppò lʼaltro."))
   (:music 2224
           (:section s1)
           (:voice v1) cclef7 mrest7 sb7 b22 m6 b22
           (:voice v2) cclef7 b22 sb7 b22 m6 b22 m8 b38
           (:section s2)
           (:voice v1) cclef7 b22 sb8 b22 m7 b22 m5d b22 bl
           (:voice v2) mrest7 sb8 b22 m7 b22
           (:section s3)
           (:voice v1) cclef5 b22 sb9 b22 m8 b22 m6 b22
           (:voice v2) cclef7 mrest5 sb4 b22 m3 b38
           (:section s4)
           (:voice v1) cclef5 b22 sb8 b22 m7 b22 m5d b22
           (:voice v2) cclef7 b22 mrest3 sb3 b22 m2 bl)
   (:text 70 58
     (87 nil "per")
     (212 nil "ſemitono")
     (659 nil "per")
     (892 nil "tono")
     (1200 nil "per")
     (1442 nil
           (:alt (:diplomatic "to no")
                 (:barre "tono")
                 (:critical "tono")
                 (:coord-barre "TZ3 TE6")
                 (:coord-norm "G3 US")
                 (:comment "In den Exemplaren q013 und q080 als »tono« gedruckt, in allen anderen als »to no«.")
                 (:flag :ready) (:id 1)))
     (1742 nil "per")
     (1866 nil
           (:alt (:diplomatic "ſemi tono")
                 (:barre "ſemitono")
                 (:critical "ſemitono")
                 (:coord-barre "TZ3 TE8")
                 (:coord-norm "G4 US")
                 (:comment "In den Exemplaren q013 und q080 als »ſemitono« gedruckt, in allen anderen als »ſemi tono«.")
                 (:flag :ready) (:id 2))))
   (:text 70 58
     (80 nil "con lʼᴠniſono")
     (659 nil "con lʼᴠniſono")
     (1193 nil "con la Settima")
     (1737 nil "con lʼOttaua"))))
