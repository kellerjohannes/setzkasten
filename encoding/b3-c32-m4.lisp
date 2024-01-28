`((:header
   (:filename "b3-c32-m4")
   (:alt-name "m3.066")
   (:comment "q021_s111, rotation: 0.68, origin: 484")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Esempio di molte cadentie del quarto modo, a quattro voci\\della musica participata e mista per ♮ quadro")
                 (:de "")
                 (:en "Example of many cadences of the fourth mode in four voci,\\of musica participata and mista in ♮ quadro")))
   (:voice-labels
    (s1 v1 (:alt (:it "Cadentie del soprano")
                 (:de "")
                 (:en "Cadences of the soprano")))
    (s1 v2 (:alt (:it "Cadentie del contr'alto")
                 (:de "")
                 (:en "Cadences of the alto")))
    (s1 v3 (:alt (:it "Cadentie del tenore")
                 (:de "")
                 (:en "Cadences of the tenor")))
    (s1 v4 (:alt (:it "Cadentie del basso")
                 (:de "")
                 (:en "Cadences of the bass")))))
  (:preamble-lilypond
   (:clef-overrides
    (s1 v2 "treble_8")
    (s2 v1 "treble")
    (s2 v2 "treble_8")))
  (:data
   (:text 70 58
          (156 1909 "Eſsempio di molte cadentie del Quarto modo,à quattro uoci , della muſica parti⸗"))
   (:text 130 58
          (726 752 "cipata & miſta per ♮.quadro."))
   (:text 90 58
          (681 547 "Cadentie del ꜱoprano."))
   (:music 2234
           (:voice v1)
           (:section s1) cclef1 b22 mrest5 sb3 m2 sb3 b22 bl
           (:section s2) b22 mrest5 sb7 b22 m6 b22 sb7 b22 m8 b22 sb6 sh5 m5 b22 sb6 b22 bl
           (:section s3) (:newline) b22 m3 b22 sb1 b22 m0 b22 bl
           (:section s4) b22 mrest5 b22 sb5 sh4 m4 b22 sb5 b22 bl
           (:section s5) b22 mrest5 b22 sb6 b38 m5
           (:alt (:diplomatic dot4)
                 (:critical dot6)
                 (:coord-barre "MZ1 N18")
                 (:coord-norm "G5 St1 N2")
                 (:comment "Original: Punktierung steht eine Position tiefer.")
                 (:flag :ready) (:id 1))
           sm4 sb3 b38 m2 b38
           (:alt (:diplomatic br3)
                 (:critical longa3)
                 (:coord-barre "MZ1 N22")
                 (:coord-norm "G5 N6")
                 (:comment "Original: Brevis. Verlängerung um alle Stimmen gleich lang erscheinen zu lassen. Diese Drucktype (Longa auf der zweituntersten Notenlinie) wird sonst im Traktat nie verwendet.")
                 (:flag :ready) (:id 2))
           b38 blbl)
   (:text 110 58
          (664 597 "Cadentie del ᴄontrʼᴀlto."))
   (:music 2230
           (:voice v2)
           (:section s1) cclef5 sb3 sb3 m5 m5 b22 bl
           (:section s2) b22 m4 b22 m2 m0 m7 dot8 sm8 sb9 b22 m8 b22 sb7 sb7 b22 bl
           (:section s3) m0 m7 m9 dot10 sm8 b22 bl
           (:section s4) b38 sb7 b38 sb6 b38 sb4 b38 bl
           (:section s5) m6 dot6 sm6 m7 m6 sb5 m3 dot4 sm4 m5 sb5 m4 br4)
   (:text 110 58
          (669 541 "Cadentie del Tenore."))
   (:music 2228
           (:voice v3)
           (:section s1) cclef7 sb2 b22 sb3 b22 sb2 b38 bl
           (:section s2) m9 dot10 sm8 b22 sb7 b22 m6 b22 sb9 b22 m8 b22 sb6 sh7 sb7 bl
           (:section s3) b22 sb5 m1 b22 m8 b22 bl
           (:section s4) b22 m7 dot8 sm6 sb5 b22 sb4 b22 bl
           (:section s5) m4 b22 m3 b22 m2 b22 m4 b22 sb2 sb3 m2 sb5 m6 sh4 br4 blbl)
   (:text 110 58
          (665 473 "Cadentie del ʙaſſo ."))
   (:music 2235
           (:voice v4)
           (:section s1) (:f-clef) max7 fclef7 sb2 sb5 sb2 b38 bl
           (:section s2) sb6 b22 sb2 b22 m6 dot6 sm5 b22 m4 b22 m5 b22 sb6 b22 sb2 b22 bl
           (:section s3) b38 b22 sb2 b38 sb1 b38 b22 bl
           (:section s4) b38 sb4 b38 sb5 b38 sb1 b38 bl
           (:section s5) mrest7 m5 m2 m3 b22 m4 dot4 sm2 sb5 m4 b22 sb2 m1 br-1 blbl)
   ;; nötig, um der Hilfslinie genügend vertiaklen Raum zu geben.
   (:vspace 30)))
