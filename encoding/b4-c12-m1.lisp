`((:header
   (:filename "b4-c12-m1")
   (:alt-name "m4.013")
   (:comment "q021_s155, rotation: -1.82, origin: 329. Für dieses Beispiel wird keine normalisierte Version angeboten.")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-headings
    (s1 (:alt (:it "Esempio del punto di augumentatione della metà più")
              (:de "Beispiel des Punkts der Augmentation um die Hälfte mehr")
              (:en "Example of the dot of augmentation of a half more")))
    (s2 (:alt (:it "Punto di divisione")
              (:de "Punkt der Division")
              (:en "Dot of division")))
    (s3 (:alt (:it "Punto di perfettione")
              (:de "Punkt der Perfektion")
              (:en "Dot of perfection")))
    (s4 (:alt (:it "Punti di ritorno")
              (:de "Punkte des Rückkehrens")
              (:en "Dots of repetition")))
    (s5 (:alt (:it "Punti di augumentatione di voce")
              (:de "Punkte der Augmentation der voce")
              (:en "Dots of augmentation of the voci")))
    (s6 (:alt (:it "Segno del comma.")
              (:de "Zeichen des comma")
              (:en "Sign of the comma")))))
  (:data
   (:text 90 58
          (0 1063 "Eſſempio del pūto di augumen.della metà piu")
          (1154 nil "punto di diuiſione")
          (1667 nil "punto di perfettione"))
   (:music 2225
           (:voice v1)
           (:section s1) cclef7 b22 max6 dot6 longa7 dot8 br6 dot6 sb5 dot6 m4 dot4 sm3 b22 sm2 dot2 cr1 b22 cr2 dot2 scr3 b22
           (:section s2) cclef7 b38 met-perf-min b38 br1 b22 sb2 b22 dot4 sb3 b38 br4 b38
           (:section s3) cclef7 b22
           (:alt (:diplomatic met-perf-min b22 met-imperf-min)
                 (:critical met-perf-maj b22 met-imperf-maj)
                 (:coord-barre "MZ1 N15")
                 (:coord-norm "—")
                 (:comment "Die Punkte in den beiden Taktsignaturen sind in allen Exemplaren von Hand ergänzt.")
                 (:flag :ready) (:id 1))
           b22 sb1 b22 m2 b22 sb3 b22 sb4 b22 m5 bl)
   (:text 110 58
          (107 nil "punti di ritorno")
          (615 nil "punti di qugumentatione di uoce")
          (1690 nil "ſegno del comma."))
   (:music 2221
           (:section s4) (:newline) cclef7 b22 sb2 b22 m3 b38 m4 b22 (:divider :repeat) sb5 s41 bl4-4 s41 bl
           (:section s5) (:ligature-start nil nil :dot nil) brdl5 (:ligature-end) b38 bl
           b22 brd4 b22 bl
           b22 (:ligature-start nil nil nil :dot) brdr5 (:ligature-end) b38 b22 bl
           b38 sbd1 b38 md5 b38 smd5 b22 crd7 b22 scrd2 b22 b38 bl
           (:section s6) b38 sbc10 b38 sbc9 b38 sbc8 b38 sbc7 b38 brc7 b38 brc8 b38 bl)))
