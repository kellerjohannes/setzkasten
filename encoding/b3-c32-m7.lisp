`((:header
   (:filename "b3-c32-m7")
   (:alt-name "m3.069")
   (:comment "q021_s112, rotation: 0, origin: 912")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio di molte cadentie del settimo modo della musica participata\\e mista per ♮ quadro")
   (:voice-labels
    (s1 v1 "Cadentie del soprano")
    (s1 v2 "Cadentie del contr'alto")
    (s1 v3 "Cadentie del tenore")
    (s1 v4 "Cadentie del basso"))
   (:voice-order
    (s1 v1 v2 v3 v4)
    (s2 v1 v2 v3 v4)
    (s3 v1 v2 v3 v4)
    (s4 v1 v2 v3 v4)
    (s5 v1 v2 v3 v4)
    (s6 v1 v2 v3 v4)
    (s7 v1 v2 v3 v4)
    (s8 v1 v2 v3 v4)))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:preamble-lilypond
   (:clef-overrides
    (s1 v3 "treble_8")
    (s2 v3 "treble_8")
    (s3 v3 "treble_8")
    (s4 v3 "treble_8")
    (s5 v3 "treble_8")
    (s6 v3 "treble_8")
    (s7 v3 "treble_8")
    (s8 v3 "treble_8")))
  (:data
   (:text 70 58
          (418 1434 "Eſſempio di molte ᴄadentie del settimo Modo della Muſica"))
   (:text 130 58
          (659 889 "participata, & miſta,per ♮.quadro."))
   (:text 90 58
          (662 nil "Cadentie del Soprano."))
   (:music 2247
           (:voice v1)
           (:section s1) gclef3 mrest3 sb3 sh2 m2 sb3 bl
           (:section s2) mrest5 sb6 m5 sb6 bl
           (:section s3) mrest7 sb7 sh6 m6 sb7 bl
           (:section s4) mrest7 sb10 sh9 m9 sb10 bl
           (:section s5) (:newline) mrest3 b22 sb4 m3 bl
           (:section s6) b22 m4 b22 m6 dot6 sm5d sb5 m4 bl
           (:section s7) b22 b22 m7 b22 sb9 b22 m8 b22 b22 sb9 b22 bl
           (:section s8) mrest3 sb3 sh2 m2 br3)
   (:text 110 58
          (667 nil "Cadentie del ᴄontrʼᴀlto."))
   (:music 2244
           (:voice v2)
           (:section s1) cclef3 b22 sb4 sb4 sb4 b22 bl
           (:section s2) mrest7 m7 sb7 sb5 b22 bl
           (:section s3) mrest7 m8 sb8 b22 sb8 b22 bl
           (:section s4) mrest7 fl9 m9 sb8 sb7 bl
           (:section s5) mrest5 m6 sb5 b22 bl
           (:section s6) b22 sb5 b22 sb7 b22 sh6 sb6 b22 bl
           (:section s7) sm6 sm7 sm8 sm9 m10 dot10 sm9 m8 m6 bl
           (:section s8) mrest3 b22 m2 sb4 br4)
   (:text 110 58
          (654 nil "Cadentie del Tenore."))
   (:music 2250
           (:voice v3)
           (:section s1) cclef5 b38 sb4 b22 sb3 b22 sb2 bl
           (:section s2) mrest5 m7 sb6 sb5 bl
           (:section s3) mrest7 m8 b22 sb7 sb6 bl
           (:section s4) (:alt (:diplomatic mrest3) (:idealised mrest5)) m6 b22 sb6 b22 sb6 bl
           (:section s5) mrest5 m6 b22 sb4 b22 bl
           (:section s6) b22 sb5 b38 sb6 b38 sb6 b22 bl
           (:section s7) sb6 b38 m2 b38 m9 b38 m8 b38 m6 b22 bl
           (:section s8) b22 mrest1 b22 m2 sb3 br4)
   (:text 110 58
          (680 nil "Cadentie del Baſſo."))
   (:music 2243
           (:voice v4)
           (:section s1) (:f-clef) max5 fclef5 b22 sb6 sb3 sb6 bl
           (:section s2) mrest3 m2 sb6 sb2 b22 bl
           (:section s3) b22 mrest3 m3 sb7 sb3 bl
           (:section s4) b22 sb6 sb3 sb6 b38 bl
           (:section s5) b22 mrest3 m3 b22 sb4 b22 bl
           (:section s6) b22 sb7 b22 sb6 b38 sb3 b22 bl
           (:section s7) b22 sb3 b38 sb2 b38 m3 b22 fl8 b22 m8 b38 bl
           (:section s8) b22 mrest3 b22 m4 sb3 br6)))
