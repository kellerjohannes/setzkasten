`((:header
   (:filename "b2-c4-m1")
   (:alt-name "m2.006")
   (:comment "q021_s58, rotation: -0.92, origin: 1038")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio della sincopa maggiore, et minore, et minima")
   (:section-headings
    (s1 "A due voci")
    (s2 "A due voci")
    (s3 "A due voci")
    (s4 "A tre voci")
    (s5 "A tre voci")
    (s6 "A cinque voci")
    (s7 "A cinque voci"))
   (:section-captions
    (s1 "Sincopa maggiore")
    (s1 "Sincopa minore")
    (s1 "Sincopa minima")))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:data
   (:text 90 58
     (416 nil "Eſſempio della Sincopa ᴍaggiore,et ᴍinore , et minima."))
   (:text 90 58
     (84 nil "à due ᴠoci.")
     (464 nil "à")
     (541 nil "2.")
     (839 nil "à")
     (912 nil "2."))
   (:music 2236
           (:voice v1)
           (:section s1) cclef7 b22 br3 b22 br4 sb2 bl
           (:section s2) b22 m6 b22 m9 dot10 sm8 m7 sb6 b22 sb5 bl
           (:section s3) m8 dot8 sm7 b22 m6 b22 m5 b22 sb4 b22 bl
           (:section s4) mrest1 m2 m4 m5 m6 m8 sm9 sm2 sm3 sm5 bl
           (:section s5) (:newline) sb9 m8 m4 m5 m2 bl
           (:section s6) mrest5 sb5 m4 bl
           (:section s7) mrest7 sb8 b22 m7 bl)
   (:text 90 58
     (0 nil "ꜱincop.mag.")
     (332 nil "sincop.minore.")
     (753 nil "sincop.minima.")
     (1269 nil "à")
     (1337 nil "3.")
     (1644 nil "à")
     (1716 nil "3.")
     (1857 nil "à")
     (1933 nil "5.")
     (2030 nil "à 5 uoci."))
   (:music 2227
           (:voice v2)
           (:section s1) cclef7 sb5 br7 sb6 sb7 bl
           (:section s2) b22 m4 dot4 sm3 m2 sb5 sh4 b22 m4 b22 sb5 bl
           (:section s3) mrest5 m1 sm2 b22 m4 sh3 sm3 sb4 bl
           (:section s4) sb9 b22 m8 b22 sb7 b22 m6 b22 b22 sb7 b38 bl
           (:section s5) mrest7 sb7 m6 b22 sb7 b22 bl
           (:section s6) sb3 m4 m2 bl
           (:section s7) sb6 m7 m5 bl)))
