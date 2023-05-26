`((:header
   (:filename "b5-c10-m1")
   (:alt-name "m5.006")
   (:comment "q021_s213, origin: 509")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Di Alamire terzo, le consonanze discendenti et ascendenti.")
   ;; Sollen die Oktaven ergänzt werden?
   (:section-headings
    (s1 "Le quattro terze discendenti\\con le sue propinque")
    (s2 " \\Quinta")
    (s3 "Le quattro seste discendenti\\[con le sue] propinque")
    (s4 " \\[Ottava]")
    (s5 "Le quattro terze ascendenti\\con le [sue] propinque")
    (s6 " \\Quinta")
    (s7 "Le quattro seste ascendenti\\con le sue propinque")
    (s8 " \\[Ottava]"))
   (:section-captions
    (s1 "Terza minore / terza maggiore")
    (s2 "")
    (s3 "Sesta minore / sesta maggiore")
    (s4 "")
    (s5 "Terza minore / terza maggiore")
    (s6 "")
    (s7 "Sesta minore / sesta maggiore")
    (s8 ""))
   (:voice-labels
    (:all v1 "")
    (:all v2 ""))
   (:line-headings
    "Tutte le consonanze discendenti di Alamire terzo"
    "Tutte le consonanze ascendenti di Alamire terzo"))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:preamble-lilypond
   (:brackets
    (s4 0 12 -16 0 12 -16)
    (s8 0 12 -16 0 12 -16)))
  (:data
   (:text 110 58
          (349 1473 "Di ᴀla mi re terzo, le conſonanze diſcententi & aſcendenti."))
   (:text 90 58
          (9 nil "Le 4.terze diſcen.")
          (516 nil "Ɋuinta.")
          (766 nil "Le 4. seſte diſce.")
          (1236 nil "Le 4.terze aſcē.")
          (1693 nil "5,")
          (1796 nil "Le4 seﬆe aſcē."))
   (:music 2227
           (:voice v1)
           (:section s1)
           cclef7 b22 fl5 sb5 fl5 (:divider :regular) sb5 bl
           fl5 sb5 fl5 sb5 bl
           (:section s2) b22 fl5 b22 sb5 b22 bl
           (:section s3) fl5 sb5 fl5 (:divider :regular) sb5 bl
           b22 fl5 sb5 fl5 sb5 b22
           (:section s4) (:alt (:it (:bracketed) fl5 sb5))
           (:section s5) (:newline) cclef3 b22 sbd2 sh2 (:divider :regular) sb2 b22 bl
           sb3 sbd3 bl
           (:section s6) b22 fl5 b22 sb5 b22 bl
           (:section s7) b22 sbd5 sh5 (:divider :regular) sb5 bl
           b22 sb6 sbd6 b22 bl
           (:section s8) (:alt (:it (:bracketed) fl8 sb8)))
   (:text 110 58
          (4 nil "con le ſue propinque .")
          (552 nil "propinq.")
          (795 nil "propinq.")
          (1261 nil "cō le propinque.")
          (1684 nil "con le ſue propinque."))
   (:music 2237
           (:voice v2)
           (:section s1) (:f-clef) max7 fclef7 b22 sb7 sh6 (:divider :regualr) sb6 bl
           b22 sbd6 b22 sb6 b22 bl
           (:section s2) b22 fl5 sb5 b22 bl
           (:section s3) b22 sb4 sh3 (:divider :regular) sb3 b22 bl
           b22 sbd3 b22 sb3 b22
           (:section s4) (:alt (:it fl2 sb2))
           (:section s5) cclef7 fl5 sb5 fl5 (:divider :regular) sb5 bl
           fl5 sb5 fl5 sb5 bl
           (:section s6) fl5 sb5 bl
           (:section s7) fl5 sb5 fl5 (:divider :regular) sb5 bl
           fl5 sb5 fl5 sb5 bl
           (:section s8) (:alt (:it fl5 sb5)))
   (:text 110 58
          (95 nil "3.min.")
          (353 nil "3.magg.")
          (728 nil "6.min")
          (953 nil "6.mag.")
          (1175 nil "3.min.")
          (1386 nil "3.magg.")
          (1750 nil "6.min.")
          (2003 nil "6 .ma."))
   (:text 90 58
          (7 1032 "Tutte le conſonanze diſcē.di A la mi re.3.")
          (1103 1067 "Tutte le conſonanze aſcenden. dʼ A la mi re.3."))))
