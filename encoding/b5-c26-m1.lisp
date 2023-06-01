`((:header
   (:filename "b5-c26-m1")
   (:alt-name "m5.022")
   (:comment "q021_s226, rotation: 0, origin: 975; q021_s227, rotation: 0, origin: 429")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Queste sono tutte le consonanze, e le propinque e propinquissime\\di Dlasolre primo acuto, e discendente,\\e di Dsolre primo medesimamente ascendenti")
   (:section-headings
    (s1 "[Le quattro terze\\discendenti]")
    (s2 " \\[Quinta]")
    (s3 "[Le quattro seste\\discendenti]")
    (s4 " \\[Ottava]")
    (s5 "Le cinque [terze\\ascendenti]")
    (s6 " \\[Quinta]")
    (s7 "[Le cinque seste\\ascendenti]")
    (s8 " \\[Ottava]"))
   (:section-captions
    (s1 "Terza minore / terza maggiore")
    (s3 "Sesta minore / sesta maggiore")
    (s5 "Terza minore / terza maggiore")
    (s7 "Sesta minore / sesta maggiore")))

  (:preamble-lilypond
   (:clef-overrides
    (s5 v1 "treble_8")
    (s6 v1 "treble_8")
    (s7 v1 "treble_8")
    (s8 v1 "treble_8")))
  (:data
   (:text 70 58
     (70 2055 "Queſte sono tutte le conſonanze, et le propinque et propinquiſſime di D la ſol re primo"))
   (:text 70 58
     (271 1628 (:alt (:diplomatic "acuto,et diſcendente,et diſ D ol re primo medeſimamente aſcendenti.")
                     (:idealised  "acuto,et diſcendente,et di D ſol re primo medeſimamente aſcendenti."))))
   (:text 110 58
     (71 nil "3.mi.")
     (229 nil "3.mag.")
     (416 nil "5.")
     (514 nil "6.mi.")
     (668 nil "6.ma.")
     (860 nil "8."))
   (:music 2212
           (:voice v1)
           (:section s1) cclef7 b22 sb8 b22 (:divider :regular) sb8 bl
           sb8 b22 sb8 bl
           (:section s2) b22 sb8 b22 bl
           (:section s3) sb8 b22 (:divider :regular) sb8 bl
           sb8 b22 sb8 bl
           (:section s4) b22 sb8 b38
           (:voice v2)
           (:section s1) cclef7 b22 sb6 b38 fl6 b22 sbd6 bl
           fl6 b22 sb6 sh5 b22 sb5 bl
           (:section s2) b22 sb4 b22 bl
           (:section s3) sh3 b22 sb3 b22 sbd3 bl
           sb3 sh2 sb2 bl
           (:section s4) sb1 b22 bl)
   ;; dieser Text ist zu kommentieren, da er als Reklamante ausnahmsweise aufgenommen wurde, denn
   ;; fehlt auf der kommenden Seite
   (:text 70 58
     (1909 nil "le cinque"))
   (:vspace 200)
   (:text 110 58
     (97 nil "3 min.")
     (302 nil "3.mag.")
     (593 nil "5.")
     (749 nil "6.min.")
     (995 nil "6.mag.")
     (1217 nil "8."))
   (:music 2232
           (:voice v1)
           (:section s5) (:newline) cclef5 b22 sb1 sbd1 (:divider :regular) sbc1 bl
           sh1 b22 sb1 b22 fl2 b22 sb2 bl
           (:section s6) sb3 bl
           (:section s7) fl4 b22 sb4 b22 fl4 b22 (:divider :regular) sbd4 bl
           sb4 b22 sbd4 b22 sbc4 bl
           (:section s8) sb6 b22 b22
           (:voice v2)
           (:section s5) cclef7 sb1 sb1 sb1 bl
           sb1 sb1 bl
           (:section s6) sb1 bl
           (:section s7) sb1 sb1 bl
           sb1 sb1 sb1 bl
           (:section s8) sb1 bl)))
