;; Polythythmie funktioniert noch nicht!

`((:header
   (:filename "b4-c31-m1")
   (:alt-name "m4.022")
   (:comment "q021_s175, rotation: 0, origin: 441")
   (:creator "Vicentino21 / Johannes Keller")
   (:line-headings
    "Modo di entrare nella proportione di equalità, tre contra tre, a due voci"
    "Proportione sesqualtera, due contra tre. Emiolia maggiore")
   (:voice-labels
    (s1 v1 "Tenore")
    (s1 v2 "Basso")
    (s2 v1 "Tenore")
    (s2 v2 "Basso")))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:data
   (:text 90 58
          (207 1809 "ᴍodo di entrare nella proportione di equalità,à due uoci. Tenore & Baſſo."))
   (:music 2238
           (:voice v1)
           (:section s1) cclef7 b22 fl6 (:key-signature nil nil nil nil nil nil :flat) b22 met-imperf-min-dim b38 sb1 b22 m3 dot4 sm4 b22 sm5 b22 sm1 b22 sb8 b22 sh7 b22 m7 b22
           ;; Der custos am Ende dieser Zeile ist merkwürdig, er hat keinen Anschluss
           met-perf-min-dim b22 met-3-2 b22 br8 b22 sbrest9 sb4 dot4 m7 b22 m6 b22 m4 b22 fl9 b22 br9 b22 sb8 b22 sb7 sb6 sb5 br4 b22 sh3 b22 sb3 b22
           met-imperf-min-dim b22 sb4 b22 custos6)
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
           (:section s2) (:newline) cclef7 b22 fl6 (:key-signature nil nil nil nil nil nil :flat) b38 met-imperf-min-dim b22 br4 b22 br6 b22 br5 b22 longa4 b22 bl
           b38 b125 b125 b22
           cclef7 b22 fl6 (:key-signature nil nil nil nil nil nil :flat) b22 brbl4 b22 sbbl5 b22 sbbl6 b22 sbbl4 b22 sbbl3 b22 brbl4 b22 sbbl1 b22 sbbl5 dot6 sm6 b22 sbbl7 b22 sbbl8 b22 sbbl7 b22 sbbl8 b22 sbbl6 b22 brbl5 b22 brbl4 bl)
   (:text 90 58
          (111 nil "Proportione ſeſqualtera,due contra tre.")
          (1303 nil "Emiolia maggiore."))
   (:music 2211
           (:voice v2) (:f-clef) max7 fclef7 fl3 (:key-signature nil nil nil nil nil nil :flat) b22 met-perf-min-dim b22 met-3-2 b22 sb1 sb4 sb3 m1 m8 dot8 sm7 sb5 m6 sb7 sb5 sh4 m4 m5 br1
           (:f-clef) max7 fclef7 fl3 (:key-signature nil nil nil nil nil nil :flat) sbbl4 dot4 sm3 sbbl2 sbbl1 dot2 sm2 sbbl3 dot4 sm1 sbbl4 sbbl3 sbbl2 brbl7 sbbl5 sbbl6 sm7 sm5d brbl8 sh7 sbbl7 brbl8)))
