`((:header
   (:filename "b1-c11-m2")
   (:alt-name "m1.019")
   (:comment "q021_s031, origin: 1273")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-headings
    (s1 (:alt (:it "Tono diviso in 4\\parti ascendenti")
              (:de "tono unterteilt in vier\\aufsteigende Teile")
              (:en "tono divided in four\\ascending parts")))
    (s2 (:alt (:it "Tono diviso in 4\\parti ascendenti")
              (:de "tono unterteilt in vier\\aufsteigende Teile")
              (:en "tono divided in four\\ascending parts")))))
  (:preamble-lilypond
   (:lyrics
    (s1 v1 (:alt (:it "\\set stanza = \\markup{ \\normal-text \"per ♮:\" } ut re mi fa re")
                 (:de "\\set stanza = \\markup{ \\normal-text \"per ♮:\" } ut re mi fa re")
                 (:en "\\set stanza = \\markup{ \\normal-text \"in ♮:\" } ut re mi fa re")))
    (s2 v1 (:alt (:it "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } re mi fa re mi")
                 (:de "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } re mi fa re mi")
                 (:en "\\set stanza = \\markup{ \\normal-text \"in ♭:\" } re mi fa re mi")))))
  (:data
   (:text 90 58
          (36 691 "Tono diuiſo in 4. parti aſcen.")
          (754 650 "To.diuiſo in 4. parti aſcen."))
   (:music 1400
           (:voice v1)
           (:section s1)
           cclef7 b38 sb4 b38 sbd4 b22 sh4 b22
           (:alt (:diplomatic sbd4)
                 (:critical sb4)
                 (:coord-barre "N3")
                 (:coord-norm "G1 N3")
                 ;; JK: Hier und allgemein: Form der Verweise klären: bx-cy-mz oder I.11,
                 ;; Notenbeispiel 1?
                 ;;
                 ;; OPEN
                 (:comment "In allen Exemplaren: Ġ♯. Begründungen für die Korrektur in der kritischen Edition: Vicentino würde diese Tonhöhe als A♭ notieren. Die Ganztonteilung mit A♭ wurde bereits im vorhergehenden Beispiel (b1-c11-m1) behandelt, was die originale Gestalt redundant macht.")
                 (:flag :ready) (:id 1))
           b38 fl5 b38 sbd5 b38 sb5 b38
           (:section s2)
           cclef7
           (:alt (:diplomatic b38)
                 (:critical fl6 (:key-signature nil nil nil nil nil nil :flat))
                 (:coord-barre "Schlüssel vor N6")
                 (:coord-norm "Schlüssel in G2")
                 (:comment "♭-Vorzeichnung ergänzt, analog zu b1-c11-m1.")
                 (:flag :ready) (:id 2))
           sb4 b38 sbd4 b38 sh4 b22 sb4 b38 fl5 b38 sbd5 b38 sb5 bl)
   (:text 90 58
          (:alt (:diplomatic)
                (:critical (0 nil "ꝑ ♮."))
                (:coord-barre "TZ2")
                (:coord-norm "G1 US")
                (:comment "Am Anfang des Textelements wurde »ꝑ ♮.« bzw. »per ♮« ergänzt, um die inhaltlich naheliegende Symmetrie zu b1-c11-m1 herzustellen.")
                (:flag :ready) (:id 3))
          (113 nil "ut")
          (203 nil "re")
          (344 nil "mi")
          (517 nil "fa")
          (604 nil "re")
          (:alt (:diplomatic)
                (:critical (700 nil "ꝑ ♭."))
                (:coord-barre "TZ2, vor 3. »re«")
                (:coord-norm "G2 US")
                (:comment "»ꝑ ♭.« bzw. »per ♭« wurde ergänzt, um die inhaltlich naheliegende Symmetrie zu b1-c11-m1 herzustellen.")
                (:flag :ready) (:id 4))
          (801 nil "re")
          (890 nil "mi")
          (1058 nil "fa")
          (1206 nil "re")
          (1295 nil "mi"))))
