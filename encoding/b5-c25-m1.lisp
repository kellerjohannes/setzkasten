`((:header
   (:filename "b5-c25-m1")
   (:alt-name "m5.021")
   (:comment "q021_s226, rotation: 0, origin: 970")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Queste sono tutte le consonanze di Elami acuto [quinto] discendente\\con le sue propinque et anchora di\\Elami grave [quinto] ascendente")
                 (:de "Dies sind alle Konsonanzen von Elami acuto [quinto] absteigend\\mit seinen propinque und auch von\\Elami grave [quinto] aufsteigend.")
                 (:en "These are all descending consonances of Elami acuto [quinto]\\with their propinque and also\\all ascending [consonances] of Elami grave [quinto]")))
   (:section-headings
    (s1 (:alt (:it "Le cinque terze\\[discendenti]")
              (:de "die fünf [absteigenden]\\terze")
              (:en "The five [descending]\\terze")))
    (s2 (:alt (:it " \\Quinta")
              (:de " \\quinta")
              (:en " \\Quinta")))
    (s3 (:alt (:it "Le cinque seste\\[discendenti]")
              (:de "die fünf [absteigenden]\\seste")
              (:en "The five [descending]\\seste")))
    (s4 (:alt (:it " \\Ottava")
              (:de " \\ottava")
              (:en " \\Ottava")))
    (s5 (:alt (:it "Le cinque terze\\[ascendenti]")
              (:de "die fünf [aufsteigenden]//terze")
              (:en "The five [ascending]\\terze")))
    (s6 (:alt (:it " \\Quinta")
              (:de " \\quinta")
              (:en " \\Quinta")))
    (s7 (:alt (:it "Le quattro seste\\[ascendenti]")
              (:de "die vier [aufsteigenden]\\seste")
              (:en "The four [ascending]\\seste")))
    (s8 (:alt (:it " \\Ottava")
              (:de " \\ottava")
              (:en " \\Ottava"))))
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
              (:en "Seste minori / seste maggiori")))))
  (:preamble-lilypond
   (:clef-overrides
    (s1 v1 "treble_8")
    (s2 v1 "treble_8")
    (s3 v1 "treble_8")
    (s4 v1 "treble_8")
    (s5 v1 "treble_8")
    (s6 v1 "treble_8")
    (s7 v1 "treble_8")
    (s8 v1 "treble_8")))
  (:data
   (:text 70 58
     (149 1936 "Queste ſono tutte le conſonanze di Elami acuto diſcendente con le ſue porpinque,"))
   (:text 70 58
     (620 939 "& anchora di Elami graue aſcendente."))
   (:text 90 58
     (134 nil "le cinque terze")
     (950 nil "quinta")
     (1257 nil "le cinque seſte")
     (2014 nil "ottaua"))
   (:music 2234
           (:voice v1)
           (:section s1) cclef5 b38 fl7 b22 sbd7 b22 fl7 b22 sbd7 b22 fl7 b22 (:divider :regular) sbd7 bl
           b38 fl7 b38 sbd7 b22 fl7 b38 sbd7 b38 bl
           (:section s2) b38
           (:alt (:diplomatic fl6)
                 (:critical fl7)
                 (:coord-barre "MZ1 N6")
                 (:coord-norm "G2 St1 N1")
                 (:comment "In allen Exemplaren: Das ♭ steht eine Position tiefer.")
                 (:flag :ready) (:id 1))
           b38 sbd7 b38 bl
           (:section s3) b38
           (:alt (:diplomatic fl6)
                 (:critical fl7)
                 (:coord-barre "MZ1 N7")
                 (:coord-norm "G3 St1 N1")
                 (:comment "In allen Exemplaren: Das ♭ steht eine Position tiefer.")
                 (:flag :ready) (:id 2))
           b38 sbd7
           (:alt (:diplomatic)
                 (:critical b38 fl7 sbd7)
                 (:coord-barre "MZ1 N8")
                 (:coord-norm "G3 N2")
                 (:comment "In allen Exemplaren fehlt eine Semibrevis auf Ė♭.")
                 (:flag :ready) (:id 3))
           b38 fl7 b38 (:divider :regular) sbd7 b38 bl
           b38 fl7 b38 sbd7 b38 fl7 b38 sbd7 bl
           (:section s4) b38 fl7 b38 sbd7 b38 bl)
   (:text 90 58
     (168 nil "3.min")
     (589 nil "3.mag.")
     (1260 nil "6.min.")
     (1651 nil "6.magg."))
   (:music 2231
           (:voice v2)
           (:section s1) cclef7 b38 sbd7 b38 b38 sbc7 b38 b38 sb7 b38 b22 b22 bl
           b38 sh6 b38 b38 sb6 b38 b22 sbd6 b38 bl
           (:section s2) b38 fl5 b38 sbd5 b38 bl
           (:section s3) b38 b22 sbd4 b38 b22 sb4 b38 b22 sbc4 b38 bl
           b38 fl4 b38 sbd4 b38 fl4 b22 b22 sb4 b22 bl
           (:section s4) b38 fl2 b38 sbd2 b38 bl)
   (:text 130 58
     (134 nil "le cinque terze")
     (1016 nil "quinta")
     (1332 nil "le quattro seſte")
     (2021 nil "ottaua"))
   (:music 2218
           (:voice v1)
           (:section s5) (:newline) cclef5 b38 fl2 b38 b22 sbd2 b38 b22 sb2 b38 b22 (:divider :regular) sbc2 b38 b38 bl
           b38 b22 sbd2 b38 b22 sh2 b38 b22 sb2 b38 bl
           (:section s6) b38 fl4 b38 sbd4 b38 bl
           (:section s7) b38 sh4 b38 sb4 b38 (:divider :regular) sb5 b38 bl
           b38 b22 sbd5 b38 b22 sh5 b38 b22 sb5 b38 bl
           (:section s8) b38 fl7 b38 sbd7 b38 bl)
   (:text 110 78
          (169 nil "3.min.")
          (632 nil "3.magg.")
          (1264 nil "6.min.")
          (1651 nil "6.magg."))
   (:music 2220
           (:voice v2)
           (:section s5) cclef7 b38 fl2 b38 sbd2 b38 fl2 b38 sbd2 b38 fl2 b22 sbd2 bl
           b22 fl2 b38 sbd2 b38 fl2 b38 sbd2 b22 bl
           (:section s6) b38 fl2 b38 sbd2 b38 bl
           (:section s7) b22 fl2 b38 sbd2 b38 fl2 b22 sbd2 bl
           b38 fl2 b38 sbd2 b38 b22 fl2 b22 b22 sbd2 b38 b22 b38 bl
           (:section s8)
           (:alt (:diplomatic b38 sbd2)
                 (:critical fl2 sbd2)
                 (:coord-barre "MZ4 N11")
                 (:coord-norm "G8 St2 N1")
                 (:comment "In allen Exemplaren: Ė.")
                 (:flag :ready) (:id 4))
           b38 bl)))
