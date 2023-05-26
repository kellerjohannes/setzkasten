`((:header
   (:filename "b2-c6-m1")
   (:alt-name "m2.008")
   (:comment "q021_s060, rotation: 0, origin: 990")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio della quarta sincopata a due voci,\\& non sincopata a tre voci, & con il punto:\\come s'ha da comporre a molte voci, & con la sincopa tutta cattiva")
   (:section-headings
    (s1 "Buona")
    (s2 "Megliore")
    (s3 "Buone")
    (s4 "Semplice")
    (s5 "Sciolta")
    (s6 "A tre voci")
    (s7 "Sciolta")
    (s8 "All'antica")
    )
   ;; unklar, was mit den Ziffern 1., 2. und 3. getan werden soll
   (:section-captions
    (s1 "1.")
    (s2 "2.")
    (s3 "3.")
    ))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:data
   (:text 70 58
     (75 2090 "Eſſempio della quarta ſincopata à due uoci,& non ſincop. à tre uoci,& con il punto : come"))
   (:text 90 58
          (357 1469 "sʼhà da comporre à molte uoci , & con la ſincopa tutta cattiua."))
   (:music 2211
           (:voice v1)
           (:section s1) cclef7 b22 mrest7 m7 dot8 sm6 b22 m6 sb7 bl
           (:section s2) mrest7 b22 sb7 b22 m6 b22 sb7 bl
           (:section s3) mrest5 sb5 sb4 sb3 m2 sb3
           (:section s4) (:newline) cclef5 b38 sb5 b38 bl
           (:section s5) sb6 dot6 m7 sb6 bl
           (:section s6) sb6 dot6 fl7 m7 sb6 bl
           (:section s7) sb7 (:alt (:diplomatic dot6) (:idealised dot8)) m8 sb7 bl
           (:section s8) m7 sb8 m7 sb8 bl)
   (:text 90 58
     (86 nil "buoa")
     (433 nil "megliore")
     (730 nil "buone")
     (1032 nil "sēplice")
     (1236 nil "ſciolta")
     (1477 nil "à tre uoci")
     (1740 nil "ſciolta")
     (1970 nil "allʼ")
     (2061 nil "antica"))
   (:music 2206
           (:voice v2)
           (:section s1) cclef7 b38 sb5 b22 sb4 b22 m2 b22 m3 bl
           (:section s2) b22 sb5 b22 sb4 b22 sb0 bl
           (:section s3) sb3 sb2 b22 sb1 b22 sb0 b22 sb7 b22
           (:section s4) cclef7 b38 sb4 b38 bl
           (:section s5) sb6 dot6 m7 sb6 bl
           (:section s6) sb6 dot6 m7 sb6 b22 bl
           (:section s7) sb4 dot4 m5 sb4 bl
           (:section s8) m4 m5 sb4 sb5 bl)
   (:vspace 30)
   (:text 90 58
          (173 nil "1.")
          (514 nil "2.")
          (824 nil "3."))
   (:music 2203
           (:voice v3)
           (:section s4) s1008 (:f-clef) max7 fclef7 sb4 b38 bl
           (:section s5) b22 sb8 b22 sb8 b22 sb8 bl
           (:section s6) b22 sb8 b38 sb8 b38 sb8 b22 bl
           (:section s7) sb4 sb4 sb4 b22 bl
           (:section s8) b38 br4 b38 sb7 b22 bl)


   ))
