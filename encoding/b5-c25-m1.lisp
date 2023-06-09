`((:header
   (:filename "b5-c25-m1")
   (:alt-name "m5.021")
   (:comment "q021_s226, rotation: 0, origin: 970")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Queste sono tutte le consonanze di Elami acuto [quinto] discendente\\con le sue propinque et anchora di\\Elami grave [quinto] ascendente")
   (:section-headings
    (s1 "Le cinque terze\\[discendenti]")
    (s2 " \\Quinta")
    (s3 "Le cinque seste\\[discendenti]")
    (s4 " \\Ottava")
    (s5 "Le cinque terze\\[ascendenti]")
    (s6 " \\Quinta")
    (s7 "Le quattro seste\\[ascendenti]")
    (s8 " \\Ottava"))
   (:section-captions
    (s1 "Terze minori / terze maggiori")
    (s3 "Seste minori / seste maggiori")
    (s5 "Terze minori / terze maggiori")
    (s7 "Seste minori / seste maggiori")))

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
           ;; Kosmetische Anpassung, vertikale Position des ♭
           (:alt (:diplomatic fl6) (:idealised fl7))
           b38 sbd7 b38 bl
           (:section s3) b38
           ;; Kosmetische Anpassung, vertikale Position des ♭
           (:alt (:diplomatic fl6) (:idealised fl7))
           b38 sbd7 b38 fl7 b38 (:divider :regular) sbd7 b38 bl
           b38 fl7 b38 sbd7 b38 fl7 b38 sbd7 (:alt (:it fl7 sbd7)) bl
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
           (:section s8) b38 sbd2 b38 bl)))
