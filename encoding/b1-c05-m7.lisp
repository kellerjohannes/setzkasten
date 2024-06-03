`((:header
   (:filename "b1-c05-m7")
   (:alt-name "m1.009")
   (:comment "q021_s025, origin: 493")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Mano Enarmonica ascendente, con i semitoni maggiori, e con il tono diuiso in\\quattro parti, & delle sette lettere della mano, come si hanno da leggere")
                 (:de "Aufsteigende enharmonische Hand mit den semitoni maggiori und mit dem tono unterteilt in\\vier Teile und den sieben Buchstaben der Hand, und wie sie zu lesen sind.")
                 (:en "Ascending enharmonic hand with semitoni maggiori and with the tono divided into\\four parts, and the seven letters of the hand, as they are to be read")))
   (:section-headings
    (s1 (:alt (:it "da A. à B.")
              (:de "von A zu B")
              (:en "from A to B")))
    (s2 (:alt (:it "da ♭faBmi.")
              (:de "von ♭faBmi")
              (:en "from ♭faBmi")
              ;; JK: Die Darstellung von G2-G3 ist zu diskutieren. Notfalls kann sie so bestehen
              ;; bleiben, sollte aber nochmals bestätigt werden.
              ;;
              ;; JK&LC: Dieses Textfeld soll rechtsbündig gesetzt werden, das nächste linksbündig
              ;;
              ;; DONE
              ))
    (s3 (:alt (:it "à C.")
              (:de "zu C")
              (:en "to C")))
    (s4 (:alt (:it "da C. à D.")
              (:de "von C zu D")
              (:en "from C to D")))
    (s5 (:alt (:it "da D. à E.")
              (:de "von D zu E")
              (:en "from D to E")))
    (s6 (:alt (:it "da E. à F.")
              (:de "von E zu F")
              (:en "from E to F")))
    (s7 (:alt (:it "da F. à G.")
              (:de "von F zu G")
              (:en "from F to G")))
    (s8 (:alt (:it "da G. à A.")
              (:de "von G zu A")
              (:en "from G to A"))))
   (:section-captions
    (s1 (:alt (:it "la per discendere")
              (:de "la absteigend")
              (:en "la in descent")))
    (s5 (:alt (:it "la e sol per discendere.")
              (:de "la und sol absteigend")
              (:en "la and sol in descent")))
    (s6 (:alt (:it "la per discendere")
              (:de "la absteigend")
              (:en "la in descent")))))
  (:preamble-lilypond
   (:lyrics
    (s1 v1 (:alt (:it "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } mi fa sol re mi")
                 (:de "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } mi fa sol re mi")
                 (:en "\\set stanza = \\markup{ \\normal-text \"in ♭:\" } mi fa sol re mi")))
    (s1 v1 (:alt (:it "\\set stanza = \\markup{ \\normal-text \"per ♮:\" } re mi fa re mi")
                 (:de "\\set stanza = \\markup{ \\normal-text \"per ♮:\" } re mi fa re mi")
                 (:en "\\set stanza = \\markup{ \\normal-text \"in ♮:\" } re mi fa re mi")))
    (s2 v1 (:alt (:it "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } fa re")
                 (:de "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } fa re")
                 (:en "\\set stanza = \\markup{ \\normal-text \"in ♭:\" } fa re")))
    (s3 v1 (:alt (:it "\\set stanza = \\markup{ \\normal-text \"per ♮:\" } mi mi fa")
                 (:de "\\set stanza = \\markup{ \\normal-text \"per ♮:\" } mi mi fa")
                 (:en "\\set stanza = \\markup{ \\normal-text \"in ♮:\" } mi mi fa")))
    (s4 v1 (:alt (:it "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } sol re mi fa re")
                 (:de "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } sol re mi fa re")
                 (:en "\\set stanza = \\markup{ \\normal-text \"in ♭:\" } sol re mi fa re")))
    (s4 v1 (:alt (:it "\\set stanza = \\markup{ \\normal-text \"per ɴ:\" } ut re mi fa re")
                 (:de "\\set stanza = \\markup{ \\normal-text \"per ɴ:\" } ut re mi fa re")
                 (:en "\\set stanza = \\markup{ \\normal-text \"in ɴ:\" } ut re mi fa re")))
    (s4 v1 (:alt (:it "\\set stanza = \\markup{ \\normal-text \"per ♮:\" } fa re mi fa re")
                 (:de "\\set stanza = \\markup{ \\normal-text \"per ♮:\" } fa re mi fa re")
                 (:en "\\set stanza = \\markup{ \\normal-text \"in ♮:\" } fa re mi fa re")))
    (s5 v1 (:alt (:it "\\set stanza = \\markup{ \\normal-text \"per ɴ:\" } re mi fa re mi")
                 (:de "\\set stanza = \\markup{ \\normal-text \"per ɴ:\" } re mi fa re mi")
                 (:en "\\set stanza = \\markup{ \\normal-text \"in ɴ:\" } re mi fa re mi")))
    (s6 v1 (:alt (:it "\\set stanza = \\markup{ \\normal-text \"per ɴ:\" } mi mi fa")
                 (:de "\\set stanza = \\markup{ \\normal-text \"per ɴ:\" } mi mi fa")
                 (:en "\\set stanza = \\markup{ \\normal-text \"in ɴ:\" } mi mi fa")))
    (s7 v1 (:alt (:it "\\set stanza = \\markup{ \\normal-text \"per ɴ:\" } fa re mi fa sol")
                 (:de "\\set stanza = \\markup{ \\normal-text \"per ɴ:\" } fa re mi fa sol")
                 (:en "\\set stanza = \\markup{ \\normal-text \"in ɴ:\" } fa re mi fa sol")))
    (s7 v1 (:alt (:it "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } ut re mi fa re")
                 (:de "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } ut re mi fa re")
                 (:en "\\set stanza = \\markup{ \\normal-text \"in ♭:\" } ut re mi fa re")))
    (s8 v1 (:alt (:it "\\set stanza = \\markup{ \\normal-text \"per ɴ:\" } sol re mi fa re")
                 (:de "\\set stanza = \\markup{ \\normal-text \"per ɴ:\" } sol re mi fa re")
                 (:en "\\set stanza = \\markup{ \\normal-text \"in ɴ:\" } sol re mi fa re")))
    (s8 v1 (:alt (:it "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } re mi fa re mi")
                 (:de "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } re mi fa re mi")
                 (:en "\\set stanza = \\markup{ \\normal-text \"in ♭:\" } re mi fa re mi")))
    (s8 v1 (:alt (:it "\\set stanza = \\markup{ \\normal-text \"per ♮:\" } ut re mi fa re")
                 (:de "\\set stanza = \\markup{ \\normal-text \"per ♮:\" } ut re mi fa re")
                 (:en "\\set stanza = \\markup{ \\normal-text \"in ♮:\" } ut re mi fa re")))
    ))
  (:data
   (:text 70 58 (0 2212 "ᴍano ᴇnarmonica aſcendente , con i ſemitomi maggiori, & con il tono diuiſo in quattro parti,&"))
   (:text 90 58 (10 1262 "delle ſette lettere della ᴍano : come ſi hanno da leggere."))
   (:text 100 58
     (140 nil "da ᴀ.")
     (374 nil "à ʙ.")
     (586 nil "da ♭ fa ʙ mi.")
     (972 nil "à ᴄ.")
     (1172 nil "da ᴄ.")
     (1454 nil "à ᴅ.")
     (1756 nil "da ᴅ.")
     (2012 nil "à ᴇ."))
   (:music 2202
           ;; JK: Achtung, siehe Maniates S. 65, ev. Korrekturen nötig
           ;;
           ;; JK: Es soll die vorliegende Fassung verwendet werden, unabhängig von Maniates
           ;;
           ;; DONE
           (:voice v1)
           (:section s1) (:f-clef) max7 fclef7 sb2 b22 sbd2 b22 fl3 b22 sb3 b22 fl3 b22 sbd3 b22 sb3 bl
           (:section s2) b22 fl3 b22 sb3 b22 fl3 b22 sbd3 bl
           ;; JK: diese Zeile soll in Lilypond in zwei Systeme geteilt werden, das untere als ossia
           ;; in Klammern
           ;;
           ;; JK: Das wurde in der Zwischenzeit anders gelöst.
           ;;
           ;; DONE
           (:section s3) sb3 b22 sbd3 b22 sb4 bl
           (:section s4) sb4 b22 sbd4 b22 fl5 b22 sb5 b22 fl5 b22 sbd5 b22 sb5 bl
           (:section s5) sb5 b22 sbd5 b22 fl6 b22 sb6 b22 fl6 b22 sbd6 b22 sb6 bl)
   (:text 70 58
     (0 564 "ꝑ ♭. mi. fa. ſol. re. mi.")
     (616 nil "fa.")
     (760 nil "re.")
     (902 216 "mi.mi.fa.")
     (1146 480 "ꝑ ♭. ſol.re.mi.fa.re.")
     (1668 500 "ꝑ n.re.mi.fa.re.mi."))
   (:text 70 58
     (0 538 "ꝑ ♮. re. mi. fa. re. mi.")
     (592 nil "ꝑ ♭.")
     (898 nil "per ♮.")
     (1142 488 "per n. ut.re.mi.fa.re.")
     (1660 490 "la.& ſol per diſcend."))
   (:text 70 58
     (110 nil "la per diſcendere.")
     (1144 494 "ꝑ ♮.fa.re.mi.fa.re."))
   (:text 110 58
     (138 nil "da ᴇ. à ꜰ.")
     (546 nil "da ꜰ.")
     (776 nil "à ɢ.")
     (1114 nil "da ɢ.")
     (1412 nil "à ᴀ."))
   (:music 2188
           (:section s6) (:newline) (:f-clef) max7 fclef7 b38 sb6 b38 sbd6 b38 sb7 bl
           (:section s7) sb7 b38 sbd7 b38 fl8 b38
           (:alt (:diplomatic sbd8)
                 (:critical sb8)
                 (:coord-barre "MZ2 N6")
                 (:coord-norm "G7 N3")
                 (:comment "In allen Exemplaren: Ġ♭.")
                 (:flag :ready) (:id 1))
           b38 fl8 b38 sbd8 b38 sb8 bl
           (:section s8) sb8 b38
           (:alt (:diplomatic sbd9)
                 (:critical sbd8)
                 (:coord-barre "MZ2 N10")
                 (:coord-norm "G8 N2")
                 (:comment "In allen Exemplaren: Ȧ.")
                 (:flag :ready) (:id 2))
           b38 fl9 b38 sb9 b38 fl9 b38 sbd9 b38 sb9 bl
           b38 b38 b38 b22 b430)
   (:text 70 58
     (:alt (:diplomatic)
           (:critical)
           (:coord-barre "allg.")
           (:coord-norm "allg.")
           (:comment "Das Zeichen ɴ wird als Abkürzung für _natura_ verwendet.")
           (:flag :ready) (:id 1))
     (10 396 "per n. mi. mi. fa.")
     (412 502 "ꝑ n. fa. re. mi. fa. ſol.")
     (1010 508 "ꝑ n. ſol. re. mi. fa. re."))
   (:text 70 58
     (148 218 "la ꝑ diſc.")
     (418 488 "ꝑ ♭. ut. re. mi. fa. re.")
     (1004 516 "ꝑ ♭. re. mi. fa. re. mi."))
   (:text 70 58
     (1008 504 "ꝑ ♮. ut. re. mi. fa. re."))))
