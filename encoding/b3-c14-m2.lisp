`((:header
   (:filename "b3-c14-m2")
   (:alt-name "m3.016")
   (:comment "q021_s086, origin: 446")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio delle quattro quinte diatoniche semplici, scritte con quattro ♭ molli")
   (:section-headings
    (s1 "Prima quinta")
    (s2 "Seconda quinta")
    (s3 "Terza quinta")
    (s4 "Quarta quinta"))
   (:section-captions
    (s1 "Composta / incomposta")
    (s2 "Composta / incomposta")
    (s3 "Composta / incomposta")
    (s4 "Composta / incomposta")))

  (:preamble-lilypond
   (:clef-overrides
    (s1 v1 "treble_8")
    (s2 v1 "treble_8")
    (s3 v1 "treble_8")
    (s4 v1 "treble_8")))
  (:data
   (:text 150 58
          (168 1796 "Eſſempio delle quattro quinte Diatoniche ſemplici, ſcritte con quattro ♭.molli."))
   (:text 90 58
          (168 nil "comp.")
          (461 nil "incomp.")
          (704 nil "comp.")
          (967 nil "incomp.")
          (1194 nil "comp.")
          (1477 nil "incomp.")
          (1716 nil "comp.")
          (1988 nil "incomp."))
   (:music 2177
           (:voice v1)
           (:section s1) cclef5 fl4 fl07 fl3 (:key-signature nil nil :flat nil nil :flat :flat)
           sb1 sb2 sb3 sb4 (:divider :regular) sb5 bl
           b22 sb1 b38 sb5 b22 bl
           (:section s2) sb2 sb3 sb4 sb5 (:divider :regular) sb6 bl
           b22 sb2 b38 sb6 b22 bl
           (:section s3) sb3 sb4 sb5 sb6 (:divider :regular) sb7 bl
           b22 sb3 b38 sb7 b22 bl
           (:section s4) sb4 sb5 sb6 sb7 (:divider :regular) sb8 bl
           b22 sb4 b22 sb8 b22 bl)
(:text 90 58
          (211 nil "Prima")
          (443 nil "Quinta")
          (685 nil "Seconda")
          (957 nil "Ɋuinta")
          (1220 nil "Terza")
          (1453 nil "Ɋuinta")
          (1707 nil "Quarta")
          (1994 nil "Ɋuinta"))))
