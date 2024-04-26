`((:header
   (:filename "b2-c09-m1")
   (:alt-name "m2.012")
   (:comment "q021_s063, rotation: 0.75, origin: 420")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Esempio di comporre la quinta imperfetta\\a due voci, et a più in vari modi")
                 (:de "Beispiel, die quinta imperfetta zu setzen,\\mit zwei und mehr Stimmen auf verschiedenen Arten und Weisen")
                 (:en "Example of composing with the quinta imperfetta\\in two or more voci, in various ways")
                 ;; JK: Das ganze Beispiel: akut zu diskutieren, insbesondere der zweite Tenor in
                 ;; der dritten Section. Maniates macht eine alternative Stimmverteilung. Alternativ
                 ;; könnte der Tenor stark korrigiert werden.
                 ;;
                 ;; GROUP !!!
                 ;; OPEN
                 ))
   (:section-headings
    (s1 (:alt (:it "A due voci")
              (:de "mit zwei Stimmen")
              (:en "in two voci")))
    (s2 (:alt (:it "A due voci")
              (:de "mit zwei Stimmen")
              (:en "in two voci")))
    (s3 (:alt (:it "A tre voci")
              (:de "mit drei Stimmen")
              (:en "in three voci")))
    (s4 (:alt (:it "A tre voci et a quattro")
              (:de "mit drei und vier Stimmen")
              (:en "in three and in four voci"))))
   (:voice-labels
    (s1 v1 (:alt (:it "Alto")
                 (:de "Alto")
                 (:en "Alto")))
    (s1 v2 (:alt (:it "Alto")
                 (:de "Alto")
                 (:en "Alto")))
    (s2 v1 (:alt (:it "Alto")
                 (:de "Alto")
                 (:en "Alto")))
    (s2 v2 (:alt (:it "Alto")
                 (:de "Alto")
                 (:en "Alto")))
    (s3 v1 (:alt (:it "Alto")
                 (:de "Alto")
                 (:en "Alto")))
    (s3 v2 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenore")))
    (s3 v3 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenore")))
    (s4 v1 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenore")))
    (s4 v2 (:alt (:it "Basso")
                 (:de "Basso")
                 (:en "Basso")))
    (s4 v3 (:alt (:it "Basso")
                 (:de "Basso")
                 (:en "Basso")))))
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
           ;;
           ;; Entweder ist die Lesart zu ändern (wie Maniates), oder der
           ;; problematische Tenor ist (stark) zu korrigieren.
           ;;
           ;; Diese Frage ist offen, im Moment wird nichts idealisiert, das ist
           ;; akut zu diskutieren
           ;;
           ;; GROUP !!!
           ;; OPEN
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
