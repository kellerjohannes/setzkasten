`((:header
   (:filename "b3-c24-m3")
   (:alt-name "m3.055")
   (:comment "q021_s102, rotation: -0.81, origin: 960")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio delle cadentie minime, di minima e di semiminima\\deminuita e non, con il punto e senza"))

  (:preamble-lilypond
   (:clef-overrides
    (s1 v1 "treble_8")
    (s2 v1 "treble_8")
    (s3 v1 "treble_8")
    (s4 v1 "treble_8")))
  (:data
   (:text 110 58
          (0 2217 "Eſſempio delle cadentie minime,di minima & di ſem. deminuita,et non:con il punto & ſenza."))
   (:music 2230
           (:voice v1)
           (:section s1) cclef5 b38 sm2 b38 m5 b38 sm4 b38 sb5 b38 bl
           (:section s2) b38 sm2 b22 b22 sm5 dot6 scr4 b22 scr3 b22 sm4 b22 sb5 b22 bl
           ;; idealisierung zu diskutieren
           (:section s3) b22 sm2 b22 (:alt (:diplomatic cr5) (:idealised sm5))
           dot6 b22 cr4 b22 cr4 b22 scr3 b22 scr4 b22 sb5 b38 bl
           (:section s4) b22 sm2 b22 sm5 dot6 cr4 b38 sm4 b38 sb5 b22 bl)))
