`((:header
   (:filename "b5-c29-m1")
   (:alt-name "m5.025")
   (:comment "q021_s229, rotation: 0, origin: 471")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "[Consonanze di Dlasolre quarto]")
                 (:de "Konsonanzen von Dlasolre quarto.")
                 (:en "Consonances of Dlasolre quarto")))
   (:section-headings
    (s1 (:alt (:it "Le cinque terze [discendenti]")
              (:de "die fünf absteigenden terze")
              (:en "The five descending terze")))
    (s2 (:alt (:it "Quinta")
              (:de "quinta")
              (:en "Quinta")))
    (s3 (:alt (:it "Le cinque seste [discendenti]")
              (:de "die fünf absteigenden seste")
              (:en "The five descending seste")))
    (s4 (:alt (:it "Ottava")
              (:de "ottava")
              (:en "Ottava")))
    (s5 (:alt (:it "Le quattro terze [ascendenti]")
              (:de "die vier aufsteigenden terze")
              (:en "The four ascending terze")))
    (s6 (:alt (:it "Quinta")
              (:de "quinta")
              (:en "Quinta")))
    (s7 (:alt (:it "Le quattro seste [ascendenti]")
              (:de "die vier aufsteigenden seste")
              (:en "The four ascending seste")))
    (s8 (:alt (:it "Ottava")
              (:de "ottava")
              (:en "Ottava"))))
   (:section-captions
    (s1 (:alt (:it "Terze minori / terze maggiori")
              (:de "terze minori / terze maggiori")
              (:en "Terze minori / terze maggiori")))
    (s3 (:alt (:it "Seste minori / seste maggiori")
              (:de "seste minori / seste maggiori")
              (:en "Seste minori / seste maggiori")))
    (s5 (:alt (:it "Terze minori / terze maggiori")
              (:de "terze minori / terze maggiori")
              (:en "Terze minori / terze maggiori")))
    (s7 (:alt (:it "Seste minori / seste maggiori")
              (:de "seste minori / seste maggiori")
              (:en "Seste minori / seste maggiori"))))
   (:line-headings
    (:alt (:it "Tutte le consonanze di Dlasolre acuto quarto discendenti\\e le propinque e propinquissime")
          (:de "Alle absteigenden Konsonanzen von Dlasolre acuto quarto\\mit den propinque und propinquissime.")
          (:en "All descending consonances of Dlasolre acuto quarto\\with the propinque and propinquissime"))
    (:alt (:it "Tutte le consonanze di Dsolre quarto ascendenti\\e le propinque e propinquissime")
          (:de "Alle aufsteigenden Konsonanzen von Dsolre quarto\\mit den propinque und propinquissime.")
          (:en "All ascending consonances of Dsolre quarto\\with the propinque and propinquissime")))
   )
  (:preamble-lilypond
   (:clef-overrides
    (s5 v1 "treble_8")
    (s6 v1 "treble_8")
    (s7 v1 "treble_8")
    (s8 v1 "treble_8")))
  (:data
   (:text 70 58
     (99 2139
         (:alt (:diplomatic "Queſte ſono tutte le conſonanze, con le ſue propinque & con le propinquiſſime di D ſol")
               (:critical "Queſte ſono tutte le conſonanze, con le ſue propinque & con le propinquiſſime di D ſol")
               (:coord-barre "TZ1-2")
               (:coord-norm "T")
               (:comment "Dieser Satz wird in der normalisierten Fassung auf die beiden Überschriften verteilt.")
               (:flag :draft) (:id 0))))
   (:text 90 58
     (5 1734
        (:alt (:diplomatic "re acuto quarto diſcendente, & quelle di D sol re quarto, aſcendenti.")
              (:critical "re acuto quarto diſcendenti, & quelle di D sol re quarto, aſcendenti.")
              (:coord-barre "TZ2")
              (:coord-norm "T")
              (:comment "In allen Exemplaren: »quarto diſcendente«.")
              (:flag :draft) (:id 0))))
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
                 (:comment "In allen Exemplaren: Ḋ.")
                 (:flag :ready) (:id 1))
           (:alt (:diplomatic sh6 sb6)
                 (:critical sh4 sb4)
                 (:coord-barre "MZ1 N21")
                 (:coord-norm "G7 St1 N4")
                 (:comment "In allen Exemplaren: D♯.")
                 (:flag :ready) (:id 2))
           bl
           (:section s8)
           (:alt (:diplomatic sbd8)
                 (:critical sbd6)
                 (:coord-barre "MZ1 N22")
                 (:coord-norm "G8 St1 N1")
                 (:comment "In allen Exemplaren: Ḟ.")
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
