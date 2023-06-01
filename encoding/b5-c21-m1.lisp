`((:header
   (:filename "b5-c21-m1")
   (:alt-name "m5.017")
   (:comment "q021_s222, rotation: 0, origin: 968; q021_s223, rotation: 0, origin: 521")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "[Del Elami primo]")
   (:section-headings
    (s1 "[Le quattro terze\\discendenti]")
    (s2 " \\[Quinta]")
    (s3 "[Le quattro seste\\discendenti]")
    (s4 " \\[Ottava]")
    (s5 "[Le cinque terze\\ascendenti]")
    (s6 " \\[Quinta]")
    (s7 "[Le cinque seste\\ascendenti]")
    (s8 " \\[Ottava]"))
   (:section-captions
    (s1 "Terza minore / terza maggiore")
    (s3 "Sesta minore / sesta maggiore")
    (s5 "Terza minore / terza maggiore")
    (s7 "Sesta minore / sesta maggiore"))
   (:line-headings
    "[Tutte le consonanze di Elami primo ascendenti]"
    "[Tutte le consonanze di Elami primo discendenti]"))

  (:preamble-lilypond
   (:brackets
    (s4 0 12 -16 0 12 -16)
    (s8 0 12 -16 0 12 -16)))
  (:data
   (:text 110 58
          (177 1816 "queſte ſono tutte le conſonanze di E la mi primo diſcentendi & aſcendenti."))
   (:text 110 58
          (95 nil "3.mi.")
          (237 nil "3.mag.")
          (496 nil "5.")
          (593 nil "6.mi.")
          (753 nil "6.mag."))
   (:music 2214
           (:voice v1)
           (:section s1) cclef7 b22 sb9 b22 (:divider :regular) sb9 bl
           b22 sb9 b22 sb9 b22 bl
           (:section s2) b22 sb9 b22 bl
           (:section s3) sb9 b22 (:divider :regular) sb9 bl
           sb9 b22 sb9 b22
           (:section s4) (:alt (:diplomatic s0) (:idealised s0) (:it (:bracketed) sb9))
           (:voice v2)
           (:section s1) cclef7 b22 sh7 b22 sb7 b22 (:divider :regular) sbd7 bl
           b22 sb7 b22 sh6 b22 sb6 b22 bl
           (:section s2) b22 sb5 bl
           (:section s3) b22 sh4 b22 sb4 b22 (:divider :regular) sbd4 b22 bl
           b22 sb4 b22 fl4 b22 sbd4 bl
           (:section s4) (:alt (:it sb2)))
   (:vspace 200)
   (:text 110 58
          (104 nil "3.min.")
          (358 nil "3.mag.")
          (677 nil "5.")
          (829 nil "6.min.")
          (1083 nil "6.mag."))
   (:music 2238
           (:voice v1)
           (:section s5) (:newline) cclef7 b38 sb4 b22 (:divider :regular) sbd4 b22 bl
           b22 sh4 b22 sb4 b22 fl5 b22 sb5 b22 bl
           (:section s6) b22 sb6 b22 bl
           (:section s7) b22 sb7 b22 sbd7 b22 bl
           b22 sh7 b22 sb7 b22 fl8 b22 (:divider :regular) sb8 b22 b22
           (:section s8) (:alt (:diplomatic s0) (:idealised s0) (:it (:bracketed) sb9))
           (:voice v2)
           (:section s5) cclef7 b22 sb2 b22 (:divider :regular) sb2 bl
           sb2 b22 sb2 bl
           (:section s6) b22 sb2 bl
           (:section s7) b22 sb2 b22 (:divider :regular) sb2 b22 bl
           b22 sb2 b22 sb2 b22 bl
           (:section s8) (:alt (:it sb2)))))
