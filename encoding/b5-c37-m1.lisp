`((:header
   (:filename "b5-c37-m1")
   (:alt-name "m5.033")
   (:comment "q021_s235, rotation: 0, origin: 475")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "[Consonanze di Bfabmi quarto]")
                 (:de "Konsonanzen von Bfabmi quarto.")
                 (:en "Consonances of Bfabmi quarto")))
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
    (:alt (:it "[Tutte le consonanze di Bfabmi acuto quarto discendenti\\e le propinque e propinquissime]")
          (:de "Alle absteigenden Konsonanzen von Bfabmi acuto quarto\\mit den propinque und propinquissime.")
          (:en "All descending consonances of Bfabmi acuto quarto\\with the propinque and propinquissime"))
    (:alt (:it "[Tutte le consonanze di Bmi quarto ascendenti\\e le propinque e propinquissime]")
          (:de "Alle aufsteigenden Konsonanzen von Bmi quarto\\mit den propinque und propinquissime.")
          (:en "All ascending consonances of Bmi quarto\\with the propinque and propinquissime"))))
  (:data
   (:text 110 58
     (94 nil "ʟe cinque")
     (362 nil "terze.")
     (535 nil "5.")
     (640 nil "ʟe cinque")
     (903 nil "seſte.")
     (1074 nil "8.")
     (1180 nil "ʟe quattro terze.")
     (1621 nil "5.")
     (1726 nil "ʟe quattro seſte.")
     (2124 nil "8."))
   (:music 2228
           (:voice v1)
           (:section s1) cclef7 b38 b22 sbd6 b22 (:divider :regular) sbd6 b38 bl
           sbd6 sbd6 sbd6 b22 bl
           (:section s2) sbd6 bl
           (:section s3) b22
           ;; JK: diese Type hat zwei Punkte, die im Moment nicht dargestellt werden (nur für die
           ;; Barré-Fassung relevant). Die Type soll noch hergestellt und entsprechend hier ergänzt
           ;; werden.
           ;;
           ;; OPEN
           (:alt (:diplomatic sbd6)
                 (:critical sbd6)
                 (:coord-barre "MZ N7")
                 (:coord-norm "G3 N1")
                 (:comment "In allen Exemplaren steht ein enharmonischer Punkt im Zwischenraum über dem Notenkopf, und ein zweiter enharmonischer Punkt im Raum über der obersten Notenlinie.")
                 (:flag :ready) (:id 4))
           b22 (:divider :regular) sbd6 b38 bl
           sbd6 sbd6 sbd6 bl
           (:section s4) sbd6
           (:section s5) (:newline) cclef7 sbd1 sh1 (:divider :regular) sb1 bl
           fl2 sb2
           (:alt (:diplomatic fl3)
                 (:critical fl2)
                 (:coord-barre "MZ1 N16")
                 (:coord-norm "G5 St1 N2")
                 (:comment "In allen Exemplaren: Das ♭ steht eine Position höher.")
                 (:flag :ready) (:id 1))
           sbd2 bl
           (:section s6) fl4 sb4 bl
           (:section s7) sbd4 sh4 (:divider :regular) sb4 bl
           fl5 sb5 fl5 sbd5 bl
           (:section s8)
           (:alt (:diplomatic sb6)
                 (:critical sbd6)
                 (:coord-barre "MZ1 N22")
                 (:coord-norm "G8 St1 N1")
                 (:comment "In allen Exemplaren: B♮.")
                 (:flag :ready) (:id 3))
           bl)
   (:text 130 58
     (48 nil "3.mi.prop.")
     (323 nil "3.ma.pro.")
     (646 nil "6.mi.pro.")
     (896 nil "6.ma.pro.")
     (1187 nil "3.mi.pr.")
     (1402 nil "3.ma.p.")
     (1711 nil "6.mi.p.")
     (1913 nil "6.ma.pr."))
   (:music 2233
           (:voice v2)
           (:section s1) (:f-clef) max7 fclef7
           (:alt (:diplomatic fl8 sb8)
                 (:critical fl9 sb9)
                 (:coord-barre "MZ2 N1")
                 (:coord-norm "G1 St2 N1")
                 (:comment "In allen Exemplaren: G♭.")
                 (:flag :ready) (:id 2))
           sh8 sb8 bl
           sbd8 sbc8 sb8 bl
           (:section s2) sbd6 bl
           (:section s3) fl6 sb6 sh5 sb5 bl
           b22 sbd5 sbc5 sb5 bl
           (:section s4) sbd3
           (:section s5) (:f-clef) max7 fclef7 sbd3 sbd3 bl
           b22 sbd3 b22 sbd3 b22 bl
           (:section s6) sbd3 b22 bl
           (:section s7) b22 sbd3 sbd3 b22 bl
           b22 sbd3 b38 sbd3 b22 bl
           (:section s8) sbd3 bl)))
