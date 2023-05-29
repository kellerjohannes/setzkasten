`((:header
   (:filename "b2-c9-m1")
   (:alt-name "m2.012")
   (:comment "q021_s063, rotation: 0.75, origin: 420")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio di comporre la quinta imperfetta\\a due voci, et a più in vari modi")
   (:section-headings
    (s1 "A due voci")
    (s2 "A due voci")
    (s3 "A tre voci")
    (s4 "A tre voci et a quattro"))
   (:voice-labels
    (s1 v1 "Alto")
    (s1 v2 "Alto")
    (s2 v1 "Alto")
    (s2 v2 "Alto")
    (s3 v1 "Alto")
    (s3 v2 "Tenore")
    (s3 v3 "Tenore")
    (s4 v1 "Tenore")
    (s4 v2 "Basso")
    (s4 v3 "Basso")))

  (:preamble-lilypond
   (:clef-overrides
    (s1 v2 "treble_8")))
  (:data
   (:text 90 58
     (227 1754 "Eſſempio di comporre la Quinta imperfetta à due uoci,et à più in uarij modi,"))
   (:text 90 58
     (309 nil "à")
     (425 nil "due")
     (595 nil "uoci")
     (931 nil "à")
     (1041 nil "due")
     (1218 nil "uoci")
     (1597 nil "à")
     (1704 nil "tre")
     (1863 nil "uoci"))
   (:music 2216
           ;; Bibelgruppe:
           ;; Frage nach der Lesart. Linear, oder wild gemischt?
           ;; - Alto + Alto: ok
           ;; - Alto + Alto: ok
           ;; - Alto + Tenore + Tenore: Probleme mit dem zweiten Tenor
           ;; - Tenore + Basso + Basso: seltsam, aber ok.

           ;; Entweder ist die Lesart zu ändern (wie Maniates), oder der
           ;; problematische Tenor ist (stark) zu korrigieren.

           ;; Diese Frage ist offen, im Moment wird nichts idealisiert, das ist
           ;; akut zu diskutieren
           (:section s1)
           (:voice v1) cclef5 b22 sb9 b22 sb8 b22 sb7 b22
           (:voice v2) cclef5 b22 mrest3 b22 m2 b38 m3 b38 m4 b38 sb5 b22
           (:section s2)
           (:voice v1) cclef5 b22 sb7 b22 sb8 b22 sb7 b22
           (:voice v2) cclef5 b22 mrest5 b22 sb5 b38 m4 b38 sb5 b22
           (:section s3) (:newline)
           (:voice v1) cclef5 b22 sb9 b22 sb8 b22 sb7 b22
           (:voice v2) cclef7 b22 m4 b22 sb7 b22 m6 m7 b38 m5d bl)
   (:text 90 58
     (143 nil "ᴀlto")
     (572 nil "ᴀlto")
     (879 nil "ᴀlto")
     (1274 nil "ᴀlto")
     (1583 nil "ᴀlto")
     (1929 nil "Tenore"))
   (:text 90 58
     (662 nil "à")
     (771 nil "tre")
     (934 nil "uoci")
     (1184 nil "&")
     (1337 nil "à")
     (1450 nil "quattro"))
   (:music 2216
           (:voice v3) cclef7 b38 m4 b38 m5 b38 sb1 b38 sb4 b38
           (:section s4)
           (:voice v1) cclef7 b38 sb2 b38 sb3 b38 sb2 b38
           (:voice v2) (:f-clef) max7 fclef7 b22 mrest3 b22 m4 dot4 b38 cr3 b38 cr2 b38 m3 b38 sb4 b38
           (:voice v3) (:f-clef) max7 fclef7 b38 sb4 b38 sb5 b38 sb2 b38 bl
           b38 b22 b22 b38 b38 b38 b38 b38 b38)
   (:text 70 58
     (182 nil "Tenore")
     (567 nil "Tenore")
     (985 nil "Baſſo")
     (1596 nil "Baſſo"))))
