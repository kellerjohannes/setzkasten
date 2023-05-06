`((:header
   (:filename "b5-c34-m1")
   (:alt-name "m5.030")
   (:comment "q021_s232, rotation: 0, origin: 1000; q021_s233, rotation: 0, origin: 500")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Queste sono tutte le consonanze di Bfabmi primo acuto\\con le sue propinque discendenti,\\ed il simile di Bmi primo ascendente")
   (:section-headings
    (s1 "Le quattro terze\\[discendenti]")
    (s2 " \\Quinta")
    (s3 "Le quattro seste\\[discendenti]")
    (s4 " \\Ottava")
    (s5 "Le cinque terze\\[ascendenti]")
    (s6 " \\Quinta")
    (s7 "Le cinque seste\\[ascendenti]")
    (s8 " \\Ottava"))
   (:section-captions
    (s1 "Terza minore / terza maggiore")
    (s3 "Sesta minore / sesta maggiore")
    (s5 "Terza minore / terza maggiore")
    (s7 "Sesta minore / sesta maggiore")))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:data
   (:text 70 58
     (21 2199 "Queſte sono tutte le conſonanze di B fa. ♭ mi primo acuto , con le ſue propinque diſcendenti,"))
   (:text 110 58
     (95 914 "& il ſimile di B mi primo aſcendente."))
   (:text 110 58
     (13 nil "Le quattro terze.")
     (479 nil "5.")
     (581 nil "Le quattro seste.")
     (998 nil "8.")
     (1098 nil "ʟe cinque terze.")
     (1586 nil "5.")
     (1693 nil "le cīque Seſte.")
     (2141 nil "8."))
   (:music 2225
           (:voice v1)
           (:section s1) cclef7 b22 sb6 b22 (:divider :regular) sb6 b22 bl
           b22 sb6 b22 sb6 b22 bl
           (:section s2) sb6 bl
           (:section s3) sb6 b22 (:divider :regular) sb6 bl
           b22 sb6 b22 sb6 b22 bl
           (:section s4) sb6 b38
           (:section s5) (:newline) cclef7 sb1 sbd1 (:divider :regular) sbc1 bl
           sh1 sb1 fl2 sb2 bl
           (:section s6) sh3 sb3 bl
           (:section s7) sb4 sbd4 (:divider :regular) sbc4 bl
           sh4 sb4 fl5 sb5 bl
           (:section s8) sb6 bl)
   (:text 100 58
     (0 nil "3.mi.prop.")
     (279 nil "3.ma.p.")
     (556 nil "6.mi.p.")
     (782 nil "6.ma.p.")
     (1002 nil "8.")
     (1109 nil "3.mi.pr.")
     (1322 nil "3.ma.pr.")
     (1679 nil "6.mi.pr.")
     (1906 nil "6.ma.pr.")
     (2147 nil "8."))
   (:music 2228
           (:voice v2)
           (:section s1) (:f-clef) max7 fclef7 sh8 sb8 sbd8 bl
           sb8 fl8 sbd8 bl
           (:section s2) sb6 b22 bl
           (:section s3) sh5 sb5 sbd5 bl
           sb5 fl5 sbd5 bl
           (:section s4) sb3
           (:section s5) (:f-clef) max7 fclef7 sb3 sb3 sb3 b22 bl
           b22 sb3 b22 sb3 b22 bl
           (:section s6) b38 sb3 b22 bl
           (:section s7) sb3 sb3 sb3 bl
           b22 sb3 b22 sb3 b22 b22 bl
           (:section s8) sb3 bl)))
