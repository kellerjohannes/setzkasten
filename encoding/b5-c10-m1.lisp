;; JK: Hier könnte man eine Oktave ergänzen, die nicht gedruckt ist. Offene Diskussion, im Moment
;; wird sie nicht ergänzt.
;;
;; JK: Konsens der Gruppe: Oktaven werden in diesen Kapiteln nie ergänzt.
;;
;; DONE
`((:header
   (:filename "b5-c10-m1")
   (:alt-name "m5.006")
   (:comment "q021_s213, origin: 509")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "[Consonanze di Alamire terzo]")
                 (:de "Konsonanzen von Alamire terzo.")
                 (:en "Consonances of Alamire terzo")))
   (:section-headings
    (s1 (:alt (:it "Le quattro terze discendenti con le sue propinque")
              (:de "die vier absteigenden terze mit ihren proinque")
              (:en "The four descending terze with their propinque")))
    (s2 (:alt (:it "Quinta")
              (:de "quinta")
              (:en "Quinta")))
    (s3 (:alt (:it "Le quattro seste discendenti [con le sue] propinque")
              (:de "die vier absteigenden seste [mit ihren] propinque")
              (:en "The four descending seste [with their] propinque")))
    (s4 (:alt (:it "Le quattro terze ascendenti con le [sue] propinque")
              (:de "die vier aufsteigenden terze mit [ihren] propinque")
              (:en "The four ascending terze with [their] propinque")))
    (s5 (:alt (:it "Quinta")
              (:de "quinta")
              (:en "Quinta")))
    (s6 (:alt (:it "Le quattro seste ascendenti con le sue propinque")
              (:de "die vier aufsteigenden seste mit ihren propinque")
              (:en "The four ascending seste with their propinque"))))
   (:section-captions
    (s1 (:alt (:it "Terze minori / terze maggiori")
              (:de "terze minori / terze maggiori")
              (:en "Terze minori / terze maggiori")))
    (s3 (:alt (:it "Seste minori / seste maggiori")
              (:de "seste minori / seste maggiori")
              (:en "Seste minori / seste maggiori")))
    (s4 (:alt (:it "Terze minori / terze maggiori")
              (:de "terze minori / terze maggiori")
              (:en "Terze minori / terze maggiori")))
    (s6 (:alt (:it "Seste minori / seste maggiori")
              (:de "seste minori / seste maggiori")
              (:en "Seste minori / seste maggiori"))))
   (:line-headings
    (:alt (:it "Tutte le consonanze discendenti di Alamire terzo")
          (:de "Alle absteigenden Konsonanzen von Alamire terzo.")
          (:en "All descending consonances of Alamire terzo"))
    (:alt (:it "Tutte le consonanze ascendenti di Alamire terzo")
          (:de "Alle aufsteigenden Konsonanzen von Alamire terzo.")
          (:en "All ascending consonances of Alamire terzo"))))
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
           (:section s4) (:newline) cclef3 b22 sbd2 sh2 (:divider :regular) sb2 b22 bl
           sb3 sbd3 bl
           (:section s5) b22 fl5 b22 sb5 b22 bl
           (:section s6) b22 sbd5 sh5 (:divider :regular) sb5 bl
           b22 sb6 sbd6 b22 bl)
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
           (:section s4) cclef7 fl5 sb5 fl5 (:divider :regular) sb5 bl
           fl5 sb5 fl5 sb5 bl
           (:section s5) fl5 sb5 bl
           (:section s6) fl5 sb5 fl5 (:divider :regular) sb5 bl
           fl5 sb5 fl5 sb5 bl)
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
