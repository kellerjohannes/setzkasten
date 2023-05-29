`((:header
   (:filename "b3-c27-m1")
   (:alt-name "m3.058")
   (:comment "q021_s105, origin: 519")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio delle cadentie a due voci intiere,\\e diminuite, e senza conclusione")
   (:section-captions
    (s1 "buona")
    (s2 "buona")
    (s3 "buona")
    (s4 "non tanto")
    (s5 "dubbiosa")
    (s6 "buona")
    (s7 "buona")))

  (:data
   (:text 120 58
          (167 1865 "Eſſempio delle cadentie à due uoci intiere, & diminuite,& ſenza concluſione."))
   (:music 2207
           (:voice v1)
           (:section s1) cclef7 b38 b22 m5 b38 sb7 b38 m6 b38 sb7 b22 bl
           (:section s2) b38 m5 b22 m7 dot8 cr6 b22 cr5d b22 m6 b22 sb7 b22 bl
           (:section s3) b22 mrest5 m7 dot8 sm6 b22 sm6 b22 cr5d b22 cr6 b22 sb7 bl
           ;; Bibelgruppe
           ;; vierter Takt, soll wirklich zuerst ein G und dann ein G♯ gesungen werden?

           ;; Im Moment keine Idealisierung vorgeschlagen.
           (:section s4) m2 b22 m5 dot6 cr4 b22 sh3 b22 cr3 b22 sh4 b22 m4 b22 sb5 bl)
   (:text 90 58
          (178 nil "buona")
          (646 nil "buona")
          (1195 nil "buona")
          (1737 nil "non tanto"))
   (:music 2209
           (:voice v2)
           (:section s1) (:f-clef) max7 fclef7 b22 m7 dot8 sm6 b38 sb5 b38 sb4 bl
           (:section s2) b38 b22 m7 b22 b22 m6 b38 b38 sb5 b38 b22 sb4 b38 bl
           (:section s3) b38 b38 b22 sb7 b38 b38 sb5 b38 b38 sb4 b38 b38 b38 bl
           (:section s4) b38 b38 sb4 b38 b38 sb3 b38 b38 b22
           ;; Bibelgruppe:
           ;; Verdacht auf Druckfehler: vierter Takt, zweite Stimme, letzte Note, soll
           ;; ein A, nicht B♮ sein.

           ;; Idealisierung zu diskutieren.
           (:alt (:diplomatic sb3) (:idealised sb2)) b38 b38 b38 b38 bl)
   (:vspace 20)
   (:music 2189
           (:voice v1)
           (:section s5) (:newline) cclef7 b38 m2 b38 sb5 b38 m4 b38 sb5 b38 bl
           (:section s6) b38 m2 b38 m5 dot6 cr4 b38 cr3 b38 m4 b38 m3 b38 m2 bl
           (:section s7) b38 m2 b38 m5 dot6 cr4 b38 cr3 b38 m4 b38 sb0 b38 bl
           b118 b118 b38 b38 b38 b118)
   (:text 110 58
          (160 nil "dubbioſa")
          (693 nil "buona")
          (1321 nil "buona"))
   (:music 2209
           (:voice v2)
           (:section s5) (:f-clef) max7 fclef7 b38 sb2 b38 fl3 b38 sb3 b38 sb2 b22 bl
           (:section s6) b38 b38 b22 sb2 b38 b38 fl3 b38 b38 sb3 b38 b38 sb2 b38 b38 b22 bl
           (:section s7) b38 b38 sb2 b38 b38 fl3 b38 b38 sb3 b38 b38 sb2 b38 b38 bl
           b38 b118 b118 b118 b118)))
