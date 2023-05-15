`((:header
   (:filename "b2-c08-m1")
   (:alt-name "m2.011")
   (:comment "q021_s062, rotation: -0.75, origin: 937")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio del modo di comporre il tritono")
   (:section-headings
    (s1 "A due voci")
    (s2 "A tre voci"))
   (:voice-labels
    (s1 v1 "Tenore")
    (s1 v2 "Tenore")
    (s2 v1 "Alto")
    (s2 v2 "Tenore")
    (s2 v3 "Basso")))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:data
   (:text 70 58
     (538 986 "Eſſempio del modo di comporre il Tritono."))
   (:text 90 58
     (175 nil "à")
     (287 nil "due")
     (494 nil "uoci")
     (939 nil "à")
     (1384 nil "tre")
     (1791 nil "uoci"))
   (:music 2218
           (:section s1)
           (:voice v1) cclef7 b22 m7 b22 sb6 b22 m5d b22 sb6 b38
           (:voice v2) cclef7 b22 sb2 b22 sb3 b22 sb2 b22
           (:section s2)
           (:voice v1) cclef5 b22 m5 dot6 cr4 b22 cr3 b22 m4 b22 m5 b22 sb6 b22
           (:voice v2) cclef7 b22 sb5 b22 sb4 b22 sb5 b38
           (:voice v3) (:f-clef) max7 fclef7 mrest7 m7 dot8 cr6 b22 cr5d b22 m6 b22 m7 b22 m5d b22 bl)
   (:text 70 58
     (138 nil "Tenore")
     (527 nil "Tenore")
     (867 nil "ᴀlto")
     (1349 nil "ᴛenore")
     (1765 nil "Baſſo."))))
