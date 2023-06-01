;; Bibelgruppe: ev. sollten s1 und s2 als eine 'section' verstanden werden. Zu diskutieren.

`((:header
   (:filename "b4-c24-m1")
   (:alt-name "m4.018")
   (:comment "q021_s167, rotation: 1.14, origin: 514. Kapitel im Original falsch nummeriert: XXIII, korrekt wäre XXIIII")
   (:creator "Vicentino21 / Johannes Keller")
   ;; Setzung der Überschriften fragwürdig, zu diskutieren. In dieser Form sicherlich nicht
   ;; überzeugend.

   ;; Bibelgruppe:
   ;; Nicht klar, ob es sich um 4 oder 5 Sektionen handelt. Ev. gehören die
   ;; ersten zwei zusammen. Zu diskutieren.
   (:line-headings
    "Decima maggiore all'ottava nei fini et nel basso, ne gl'alti"
    "Quinta imperfetta")
   (:section-captions
    (s1 "Buona")
    (s2 "Buona")
    (s3 "Buona")
    (s4 "Buona")
    (s5 "Buona")))

  (:data
   (:text 90 58
          (181 nil "Buona.")
          (684 nil "Buona.")
          (1181 nil "Buona.")
          (1675 nil "Buona.")
          (2011 nil "ʙuona.")
          )
   (:music 2227
           (:voice v1)
           (:section s1) cclef7 b22 sm9 b22 sm8 b22 sm7 b22 sm6 b22 m5d b22 m5d b38 bl
           (:section s2) b22 mrest5 b22 sb7 b22 m6 b22 sb7 b38 bl
           (:section s3) b22 cclef1 b22 b22 mrest1 b22 b22 sb4 b22 m3 b22 b22 sb4 b22 b38 b38
           (:section s4) (:newline) cclef1 b22 b38 sb5 b38 sb4 b38 sb3 b38 b38 bl
           (:section s5) b22 sb3 b22 sb4 b22 sb3 bl)
   (:text 130 98
          (0 nil "Decima mag.allʼottaua.")
          (666 nil "ne i Fini,& nel ʙaſſo ,")
          (1208 nil "ne glʼ ᴀlti.")
          (1630 nil "quinta")
          ;; der Punkt nach 'imperfetta' liegt markant zu hoch, wurde stillschweigend idealisiert
          (1948 nil "imperfetta."))
   (:music 2245
           (:voice v2)
           (:section s1) (:f-clef) max7 fclef7 b22 sm4 b22 sm5d b22 sm6 b22 sm8 b22 m7 m5d b22 bl
           (:section s2) b22 m6 dot6 sm7 sb5 b22 sb4 b22 bl
           (:section s3) b22 cclef7 b22 sb8 b22 m7 dot8 sm7 b22 m5d b22 fl6 b22 m6 b22
           (:section s4) cclef7 b22 mrest3 b22 m4 b22 m5 b22 m6 b22 sb7 b38 bl
           (:section s5) mrest7 sb7 b22 m6 b22 sb7 bl)))
