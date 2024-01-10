`((:header
   (:filename "b5-c29-m1")
   (:alt-name "m5.025")
   (:comment "q021_s229, rotation: 0, origin: 471")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Queste sono tutte le consonanze, con le sue propinque\\e con le propinquissime di Dsolre acuto quarto discendente,\\e quelle di Dsolre quarto ascendenti")
                 (:de "")
                 (:en "These are all the consonances, with their propinque\\and the propinquissime of Dsolre acuto quarto descending,\\and those of Dsolre quarto ascending")))
   (:section-headings
    (s1 (:alt (:it "Le cinque terze\\[discendenti]")
              (:de "")
              (:en "The five [descending]\\terze")))
    (s2 (:alt (:it " \\Quinta")
              (:de "")
              (:en " \\Quinta")))
    (s3 (:alt (:it "Le cinque seste\\[discendenti]")
              (:de "")
              (:en "The five [descending]\\seste")))
    (s4 (:alt (:it " \\Ottava")
              (:de "")
              (:en " \\Ottava")))
    (s5 (:alt (:it "Le quattro terze\\[ascendenti]")
              (:de "")
              (:en "The four [ascending]\\terze")))
    (s6 (:alt (:it " \\Quinta")
              (:de "")
              (:en " \\Quinta")))
    (s7 (:alt (:it "Le quattro seste\\[ascendenti]")
              (:de "")
              (:en "The four [ascending]\\seste")))
    (s8 (:alt (:it " \\Ottava")
              (:de "")
              (:en " \\Ottava"))))
   (:section-captions
    (s1 (:alt (:it "Terza minore / terza maggiore")
              (:de "")
              (:en "Terza minore / terza maggiore")))
    (s3 (:alt (:it "Sesta minore / sesta maggiore")
              (:de "")
              (:en "Sesta minore / sesta maggiore")))
    (s5 (:alt (:it "Terza minore / terza maggiore")
              (:de "")
              (:en "Terza minore / terza maggiore")))
    (s7 (:alt (:it "Sesta minore / sesta maggiore")
              (:de "")
              (:en "Sesta minore / sesta maggiore")))))
  (:preamble-lilypond
   (:clef-overrides
    (s5 v1 "treble_8")
    (s6 v1 "treble_8")
    (s7 v1 "treble_8")
    (s8 v1 "treble_8")))
  (:data
   (:text 70 58
     (99 2139 "Queſte ſono tutte le conſonanze, con le ſue propinque & con le propinquiſſime di D ſol"))
   (:text 90 58
     (5 1734 "re acuto quarto diſcendente, & quelle di D sol re quarto, aſcendenti."))
   (:text 110 58
     (109 nil "Le cinque 3.")
     (522 nil "5.")
     (668 nil "Le cinque 6.")
     (1084 nil "8.")
     (1322 nil "Le 4.3.")
     (1673 nil "5.")
     (1857 nil "Le 4.6.")
     (2156 nil "8."))
   (:music 2241
           (:voice v1)
           (:section s1) cclef7 sbd8 b22 sbd8 b22 (:divider :regular) sbd8 bl
           b22 sbd8 b38 sbd8 b38 bl
           (:section s2) b22 sbd8 b22 bl
           (:section s3) b22 b22 sbd8 b22 (:divider :regular) sbd8 b22 bl
           sbd8 sbd8 b22 sbd8 bl
           (:section s4) b22 sbd8 b22
           (:section s5) (:newline) cclef5 sbd1 sh1 (:divider :regular) sb1 b22 bl
           fl2 sb2 fl2 sbd2 bl
           (:section s6) b22 sbd3 bl
           (:section s7) fl4 sbd4 (:divider :regular) sb4 bl
           (:alt (:diplomatic sbd6)
                 (:critical sbd4)
                 (:coord-barre "MZ1 N20")
                 (:coord-norm "G7 St1 N3")
                 (:comment "Original: Ḋ.")
                 (:flag :ready) (:id 1))
           (:alt (:diplomatic sh6 sb6)
                 (:critical sh4 sb4)
                 (:coord-barre "MZ1 N21")
                 (:coord-norm "G7 St1 N4")
                 (:comment "Original: D♯.")
                 (:flag :ready) (:id 2))
           bl
           (:section s8)
           (:alt (:diplomatic sbd8)
                 (:critical sbd6)
                 (:coord-barre "MZ1 N22")
                 (:coord-norm "G8 St1 N1")
                 (:comment "Original: Ḟ.")
                 (:flag :ready) (:id 3))
           bl)
   (:text 130 58
          (53 nil "3.mi.prop.")
          (326 nil "3.mag.pr.")
          (662 nil "6.mi.pr.")
          (901 nil "6.mag.pr.")
          (1196 nil "3.mi.pr.")
          (1421 nil "3.mag.p.")
          (1728 nil "6.mi.p.")
          (1960 nil "6.ma.p."))
   (:music 2245
           (:voice v2)
           (:section s1) cclef7 sbd6 sbc6 sb6 bl
           fl6 sbd6 fl6 sb6 bl
           (:section s2) b22 sbd4 b22 bl
           (:section s3) fl4 sb4 sh3 sb3 bl
           sbd3 sbc3 sb3 bl
           (:section s4) sbd1 b22
           (:section s5) cclef7 sbd1 b22 sbd1 b22 bl
           b22 sbd1 b22 b22 sbd1 bl
           (:section s6) b22 sbd1 bl
           (:section s7) b22 sbd1 b22 sbd1 b22 bl
           sbd1 b22 sbd1 b22 bl
           (:section s8) sbd1 bl)))
