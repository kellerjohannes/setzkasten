`((:header
   (:filename "b2-c19-m1")
   (:alt-name "m2.022")
   (:comment "q021_s070, rotation: -0.61, origin: 973")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio della sesta minore, come in vari modi si può comporre")
   (:section-headings
    (s1 "A due voci")
    (s2 "A tre voci")
    (s3 "[A due voci]")
    (s4 "A due voci"))
   (:section-captions
    (s2 "De salti")
    )
   (:voice-order
    (s1 v1 v2)
    (s2 v1 v2 v3)
    (s3 v2 v1)
    (s4 v1 v2)))

  (:data
   (:text 110 58
          (353 1487 "Eſſempio della Seſta minore,come in uarij modi ſi può comporre."))
   (:text 90 58
          (125 nil "à due")
          (284 nil "uoci")
          (532 nil "à tre")
          (685 nil "uoci")
          (942 nil "de ſalti")
          (1800 nil "à due uoci."))
   (:music 2218
           (:section s1)
           (:voice v1) cclef7 b38 sb7 sb8 b38
           (:voice v2) cclef7 b22 sb2 sb1 b38 bl
           (:section s2)
           (:voice v1) b38 sb10 sb9 bl
           (:voice v2) sb5 b38 sb2 b38
           (:voice v3) cclef7 b38 sb7 b38 sb9 b38
           (:section s3)
           (:voice v1) (:f-clef) max7 fclef7 b38 sb6 sb2 b38
           (:voice v2) cclef7 b22 mrest7 sb7 b38 m9 b38
           (:section s4)
           ;; Rhythmischer Eingriff, Korrektur zu diskutieren!
           (:voice v1) cclef7 b38 sb3 sb2 (:alt (:diplomatic) (:idealised dot2)) bl
           (:voice v2) mrest7 m7 dot8 sm6 sb9 bl)))
