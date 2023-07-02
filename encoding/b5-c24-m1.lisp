`((:header
   (:filename "b5-c24-m1")
   (:alt-name "m5.020")
   (:comment "q021_s225, rotation: 0, origin: 509")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Queste sono tutte le consonanze di Elami acuto discendente,\\e di Elami grave ascendente")
                 (:de "")
                 (:en "")))
   (:section-headings
    (s1 (:alt (:it "Le cinque terze\\[discendenti]")
              (:de "")
              (:en "")))
    (s2 (:alt (:it " \\Quinta")
              (:de "")
              (:en "")))
    (s3 (:alt (:it "Le cinque seste\\[discendenti]")
              (:de "")
              (:en "")))
    (s4 (:alt (:it " \\Ottava")
              (:de "")
              (:en "")))
    (s5 (:alt (:it "Le quattro terze\\[ascendenti]")
              (:de "")
              (:en "")))
    (s6 (:alt (:it " \\Quinta")
              (:de "")
              (:en "")))
    (s7 (:alt (:it "Le quattro seste\\[ascendenti]")
              (:de "")
              (:en "")))
    (s8 (:alt (:it " \\Ottava")
              (:de "")
              (:en ""))))
   (:section-captions
    (s1 (:alt (:it "Terza minore / terza maggiore")
              (:de "")
              (:en "")))
    (s3 (:alt (:it "Sesta minore / sesta maggiore")
              (:de "")
              (:en "")))
    (s5 (:alt (:it "Terza minore / terza maggiore")
              (:de "")
              (:en "")))
    (s7 (:alt (:it "Sesta minore / sesta maggiore")
              (:de "")
              (:en "")))))
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
   (:text 110 58
          (18 2209 "Queſte ſono tutte le conſonanze di Elami acuto diſcentende,& di Elami graue aſcendente."))
   (:text 110 58
          (57 nil "le cinque 3.")
          (537 nil "5.")
          (646 nil "le cinque 6.")
          (1059 nil "8.")
          (1252 nil "le quattro 3.")
          (1616 nil "5.")
          ;; Orthographische Textkorrektur
          (1762 nil (:alt (:diplomatic "la quattro 6.") (:idealised "le quattro 6.")) )
          (2123 nil "8."))
   (:music 2230
           (:voice v1)
           (:section s1) cclef5 b38 sbd7 b22 (:divider :regular) sbd7 bl
           sbd7 b22 sbd7 b22 sbd7 bl
           (:section s2) sbd7 bl
           (:section s3) b22 sbd7 b22 (:divider :regular) sbd7 b22 bl
           b22 sbd7 sbd7 sbd7 bl
           (:section s4) sbd7 b22
           (:section s5) (:newline) cclef5 b22 sbd2 sh2 (:divider :regular) sb2 bl
           fl3 sb3 fl3 sbd3 bl
           (:section s6) sbd4 bl
           (:section s7) b22 sbd5 sh5 (:divider :regular) sb5 bl
           fl6 sb6 fl6 sbd6 bl
           (:section s8) sbd7 bl)
   (:text 130 58
          (59 nil "3.min.")
          (305 nil "3.mag.")
          (668 nil "6.min.")
          (880 nil "6.mag.")
          (1239 nil "3.mi.")
          (1423 nil "3.mag.")
          ;; Offensichtliche inhaltliche Korrektur, an Luigi zu kommunizieren
          (1702 nil (:alt (:diplomatic "3.min.") (:idealised "6.min.")))
          (1919 nil (:alt (:diplomatic "3.mag.") (:idealised "6.mag."))))
   (:music 2223
           (:voice v2)
           (:section s1) cclef7 b22 fl8 sb8 sh7 sb7 bl
           sbd7 sbc7 sb7 bl
           (:section s2) sbd5 bl
           (:section s3) fl4 sb4 sh4 sb4 bl
           sbd4 sbc4 sb4 bl
           (:section s4) sbd2 b38
           (:section s5) cclef7 b22 sbd2 b22 sbd2 b22 bl
           b38 sbd2 b22 sbd2 bl
           (:section s6) sbd2 bl
           (:section s7) b22 sbd2 b22 sbd2 b22 bl
           b38 sbd2 b38 sbd2 b38 bl
           (:section s8) sbd2 bl)))
