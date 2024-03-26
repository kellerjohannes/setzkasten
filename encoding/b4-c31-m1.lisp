;; Polyrhythmie funktioniert noch nicht!
;;
;; OPEN

`((:header
   (:filename "b4-c31-m1")
   (:alt-name "m4.022")
   (:comment "q021_s175, rotation: 0, origin: 441; q021_s176, rotation: 1.02, origin: 998.")
   (:creator "Vicentino21 / Johannes Keller")
   (:line-headings
    ;; JK: hier waren die Überschriften falsch gesetzt, ich habe sie neu verteilt und die Texte
    ;; angepasst. Das muss von Anne geprüft werden.
    ;;
    ;; OPEN
    (:alt (:it "Modo di entrare nella proportione di equalità, tre contra tre, a due voci")
          (:de "Art und Weise in die proportione di equalità, drei gegen drei, einzutreten, mit zwei Stimmen.")
          (:en "Method of entering into the proportion of equality, three against three, in two voci"))
    (:alt (:it "Proportione sesqualtera, due contra tre, a due voci")
          (:de "Proportione sesqualtera, zwei gegen drei, mit zwei Stimmen")
          (:en "Sesquialtera proportion, two against three, in two voci"))
    (:alt (:it "Emiolia maggiore, a due voci")
          (:de "Hemiola maior, mit zwei Stimmen")
          (:en "Major emiolia, in two voci"))
    (:alt (:it "Proportione sesqualtera, buona nel battere et nel levare, a due voci")
          (:de "Proportione sesqualtera, gut auf dem (Nieder-)Schlag und beim Anheben [der Hand], mit zwei Stimmen")
          (:en "Sesquialtera proportion, good on the beat and in elevation, in two voci"))
    (:alt (:it "Emiolia minore")
          (:de "Hemiola minor")
          (:en "Minor emiolia")))
   (:voice-labels
    (s1 v1 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenor")))
    (s1 v2 (:alt (:it "Basso")
                 (:de "Basso")
                 (:en "Bass")))
    (s2 v1 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenor")))
    (s2 v2 (:alt (:it "Basso")
                 (:de "Basso")
                 (:en "Bass")))
    (s3 v1 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenor")))
    (s3 v2 (:alt (:it "Basso")
                 (:de "Basso")
                 (:en "Bass")))
    (s4 v1 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenor")))
    (s4 v2 (:alt (:it "Basso")
                 (:de "Basso")
                 (:en "Bass")))
    (s5 v1 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenor")))
    (s5 v2 (:alt (:it "Basso")
                 (:de "Basso")
                 (:en "Bass")))))
  (:data
   (:text 90 58
          (207 1809 "ᴍodo di entrare nella proportione di equalità,à due uoci. Tenore & Baſſo."))
   (:music 2238
           (:voice v1)
           (:section s1) cclef7 b22 fl6 (:key-signature nil nil nil nil nil nil :flat) b22 met-imperf-min-dim b38 sb1 b22 m3 dot4 sm4 b22 sm5 b22 sm1 b22 sb8 b22 sh7 b22 m7 b22
           met-perf-min-dim b22 met-3-2 b22 br8 b22 sbrest9 sb4 dot4 m7 b22 m6 b22 m4 b22 fl9 b22 br9 b22 sb8 b22 sb7 sb6 sb5 br4 b22 sh3 b22 sb3 b22
           met-imperf-min-dim b22 sb4 b22
           (:alt (:diplomatic custos6)
                 (:critical custos6)
                 (:coord-barre "MZ1 Ende")
                 (:coord-norm "—")
                 (:comment "Dieser Custos hat keinen Anschluss.")
                 (:flag :ready) (:id 1)))
   (:text 90 58
          (1086 nil "ᴘroportione di equalità tre contra tre."))
   (:music 2241
           (:voice v2) (:f-clef) max7 fclef7 b22 fl3 (:key-signature nil nil nil nil nil nil :flat) b22 met-imperf-min-dim b22 mrest5 b22 m5 dot6 sm4 b22 m3 b22 sm2 b22 sm9 b22 sm8 b22 fl9 b22 sm10 sb9 b22
           met-perf-min-dim b22 met-3-2 b22 sb5 dot6 m8 m7 m5d b22 fl6 b22 br6 b22 sb6 b22 br4 sb3 sb7 sb8 fl6 sb5 sb6 b22 br5 b22
           met-imperf-min-dim b22 sb1 bl)
   (:text 90 58
          (180 nil "ᴀ due uoci Tenore & Baſſo")
          (1150 nil "ᴀ due uoci ᴛenore & Baſſo."))
   (:music 2234
           (:voice v1)
           (:section s2) (:newline)
           cclef7 b22 fl6 (:key-signature nil nil nil nil nil nil :flat) b38
           met-imperf-min-dim b22 br4 b22 br6 b22 br5 b22
           (:duration-override 1/2)
           longa4
           (:duration-override 1)
           b22 bl
           b38 b125 b125 b22
           (:section s3) (:newline)
           (:alt (:diplomatic)
                 (:modern met-imperf-min-dim)
                 (:coord-barre "")
                 (:coord-norm "")
                 (:comment "") (:flag :draft) (:id 0))
           cclef7 b22 fl6 (:key-signature nil nil nil nil nil nil :flat)
           (:alt (:diplomatic
                  b22 brbl4 b22 sbbl5 b22 sbbl6 b22 sbbl4 b22 sbbl3 b22 brbl4 b22 sbbl1 b22
                  sbbl5 dot6 sm6 b22 sbbl7 b22 sbbl8 b22 sbbl7 b22 sbbl8 b22
                  sbbl6 b22 brbl5 b22 brbl4 bl)
                 (:modern
                  (:duration-override 2/3) br4 sb5 sb6 sb4 sb3 br4 sb1 sb5 dot6 m6
                  sb7 sb8 sb7 sb8 sb6 br5 br4 dot4 bl
                  (:duration-override 1))
                 (:coord-barre "")
                 (:coord-norm "")
                 (:comment "") (:flag :draft) (:id 0)))
   (:text 90 58
          (111 nil "Proportione ſeſqualtera,due contra tre.")
          (1303 nil "Emiolia maggiore."))
   (:music 2211
           (:section s2)
           (:voice v2)
           (:f-clef) max7 fclef7 fl6
           (:key-signature nil nil nil nil nil nil :flat) b22
           met-perf-min-dim (:meter-override "sesquialtera" nil)
           b22 met-3-2 b22
           (:duration-override 2/3) sb1 sb4 sb3 m1 m8 dot8 sm7 sb5 m6 sb7 sb5 sh4 m4 m5
           (:duration-override 1)
           br1
           (:section s3)
           (:f-clef) max7 fclef7 fl3 (:key-signature nil nil nil nil nil nil :flat)

           (:alt (:diplomatic sbbl4 dot4 sm3 sbbl2 sbbl1 dot2 sm2 sbbl3 dot4 sm1
                              sbbl4 sbbl3 sbbl2 brbl7 sbbl5 sbbl6 sm7 sm5d brbl8 sh7 sbbl7 brbl8)
                 (:critical
                  (:duration-override 2/3)
                  sb4 dot4 m3 sb2 sb1 dot2 m2 sb3 dot4 m1 sb4 sb3 sb2 br7 sb5
                  sb6 m7 m5d br8 sh7 sb7 br8 dot8
                  (:duration-override 1))
                 (:coord-barre "")
                 (:coord-norm "")
                 (:comment "") (:flag :draft) (:id 0))
           )
   (:text 90 58
          (281 1310 "ᴘroportione ſeſqualtera,buona nel battere & nel leuare,")
          (1688 nil "Tenore"))
   (:music 2221
           (:voice v1)
           (:section s4) (:newline)
           (:alt (:diplomatic (:f-clef) max7 fclef7 b38)
                 (:critical cclef7 b38)
                 (:coord-barre "MZ5 N1")
                 (:coord-norm "G4 St2")
                 (:comment "In allen Exemplaren: F4-Schlüssel. In den Exemplaren q002 q005, q011, q026, q034, q035, q051, q053, q055, q061, q076 und q081 wurde dieser F4-Schlüssel von Lesern handschriftlich zu einem C4-Schlüssel korrigiert.")
                 (:flag :ready) (:id 2))
           (:alt (:diplomatic fl6)
                 (:critical fl3 b38)
                 (:coord-barre "MZ5 N1")
                 (:coord-norm "G4 St2")
                 (:comment "In allen Exemplaren: ♭-Signatur im dritten Zwischenraum.")
                 (:flag :ready) (:id 3))

           (:key-signature nil nil nil nil nil nil :flat) b38
           met-perf-min-dim b22 met-3-2 b38
           (:duration-override 1)
           sb4 b38 m1 b38 sb8 b38 m8 b38 fl9 b38 m9 b38 m8 b38 m7 b38 m4 b22 sb7 b22 m5d b22 m6 b22 m5d b22 m3 b38 m4 b38 m5 b38 m6 b38 m7 b38 m8 b38 m5d b38 m6 b22 m7 b22 custos6
           (:duration-overrid 1)

           )
   (:text 90 58
          (330 nil "ᴀ due uoci,")
          (1086 nil "Baſſo."))
   (:music 2218
           cclef7 b38 fl6 (:key-signature nil nil nil nil nil nil :flat) b38 sb6 b22 m4 b38 sb4 b38 sh3 b38 m3 b38 br4 b38 b38


           (:voice v2)
           (:f-clef) max7 fclef7 b38 fl3 (:key-signature nil nil nil nil nil nil :flat)
           b38 met-perf-min-dim b38 met-3-2 b38
           (:duration-override 3/2)
           br1 b38 br4 b38 br5 b38
           ;;(:duration-override 1)
           sb8 b38 sb7 b38 sb8 b38 sb5 b38 br1 b22 bl
           b125 b125 b125)
   (:text 90 58
          (166 nil "ᴇmiolia minore,")
          (906 nil "Tenore & ʙaſſo à due uoci."))
   (:music 2232
           (:section s5)
           (:voice v1) (:newline)
           cclef7 b38 fl6 (:key-signature nil nil nil nil nil nil :flat)
           b38 met-imperf-min-dim b38 met-3 b38
           (:alt (:diplomatic sm4 dot4 cr5 b22 sm6 b22 sm4 b22 sbbl7 b38 sm6 b38 sbbl5 b38 brbl4 b38)
                 (:modern
                  (:duration-override 8/9)
                  sm4 dot4 cr5 sm6 sm4 m7 sm6 m5 br4
                  (:duration-override 1))
                 (:coord-barre "")
                 (:coord-norm "")
                 (:comment "") (:flag :draft) (:id 0))
           (:voice v2)
           (:f-clef) max7 fclef7 b38 fl3 (:key-signature nil nil nil nil nil nil :flat)
           b22 met-imperf-min-dim b22 met-3 b22
           (:alt (:diplomatic sbbl4 b22 sm1 b22 fl6 b22 sm6 dot6 cr5 b22 sm4 b22 sbbl8 b22
                              sh7 b38 sm7 b22 br8 b38)
                 (:modern
                  (:duration-override 8/9)
                  m4 sm1 fl6 sm6 dot6 cr5 sm4 m8 sh7 sm7
                  (:duration-override 1)
                  br8)
                 (:coord-barre "")
                 (:coord-norm "")
                 (:comment "") (:flag :draft) (:id 0))
           bl)))
