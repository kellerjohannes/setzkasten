`((:header
   (:filename "b1-c05-m7")
   (:alt-name "m1.009")
   (:comment "q021_s025, origin: 493")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Mano enarmonica ascendente, con i semitoni maggiori, e con il tono diviso in\\quattro parti, e delle sette lettere della mano, come si hanno da leggere")
                 (:de "")
                 (:en "Ascending enharmonic hand with semitoni maggiori and with the tono divided into\\four parts, and the seven letters of the hand, as they are to be read")))
   (:section-headings
    (s1 (:alt (:it "da A a B")
              (:de "")
              (:en "from A to B")))
    (s2 (:alt (:it "da ♭faBmi ...")
              (:de "")
              (:en "from ♭faBmi ...")
              (:comment "Darstellung unbefriedigend, ist zu diskutieren.") (:flag :observe) (:id 1)))
    (s3 (:alt (:it "... a C")
              ;; Kommentar Anne: auch hier würde ich die Silben direkt unter den Noten und unter einander setzen.
              (:de "")
              (:en "... to C")))
    (s4 (:alt (:it "da C a D")
              (:de "")
              (:en "from C to D")))
    (s5 (:alt (:it "da D a E")
              (:de "")
              (:en "from D to E")))
    (s6 (:alt (:it "a E a F")
              (:de "")
              (:en "from E to F")))
    (s7 (:alt (:it "da F a G")
              (:de "")
              (:en "from F to G")))
    (s8 (:alt (:it "da G a A")
              (:de "")
              (:en "from G to A"))))
   (:section-captions
    (s1 (:alt (:it "per ♭: mi-fa-sol-re-mi\\per ♮: re-mi-fa-re-mi\\la per discendere")
              (:de "")
              (:en "per ♭: mi-fa-sol-re-mi\\per ♮: re-mi-fa-re-mi\\la in descent")))
    (s2 (:alt (:it "per ♭: fa-re-...")
              (:de "")
              (:en "per ♭: fa-re-...")))
    (s3 (:alt (:it "...-mi-mi-fa\\per ♮: mi-mi-fa")
              (:de "")
              (:en "...-mi-mi-fa\\per ♮: mi-mi-fa")))
    (s4 (:alt (:it "per ♭: sol-re-mi-fa-re\\per natura: ut-re-mi-fa-re\\per ♮: fa-re-mi-fa-re")
              (:de "")
              (:en "per ♭: sol-re-mi-fa-re\\per natura: ut-re-mi-fa-re\\per ♮: fa-re-mi-fa-re")))
    (s5 (:alt (:it "per natura: re-mi-fa-re-mi\\la e sol per discendere")
              (:de "")
              (:en "per natura: re-mi-fa-re-mi\\la and sol in descent")))
    (s6 (:alt (:it "per natura: mi-mi-fa\\la per discendere")
              (:de "")
              (:en "per natura: mi-mi-fa\\la in descent")))
    (s7 (:alt (:it "per natura: fa-re-mi-fa-sol\\per ♭: ut-re-mi-fa-re")
              (:de "")
              (:en "per natura: fa-re-mi-fa-sol\\per ♭: ut-re-mi-fa-re")))
    (s8 (:alt (:it "per natura: sol-re-mi-fa-re\\per ♭: re-mi-fa-re-mi\\per ♮: ut-re-mi-fa-re")
              (:de "")
              (:en "per natura: sol-re-mi-fa-re\\per ♭: re-mi-fa-re-mi\\per ♮: ut-re-mi-fa-re")))))
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
           ;; achtung, siehe Maniates S. 65, ev. Korrekturen nötig
           (:voice v1)
           (:section s1) (:f-clef) max7 fclef7 sb2 b22 sbd2 b22 fl3 b22 sb3 b22 fl3 b22 sbd3 b22 sb3 bl
           (:section s2) b22 fl3 b22 sb3 b22 fl3 b22 sbd3 bl
           ;; diese Zeile soll in Lilypond in zwei Systeme geteilt werden, das untere als ossia in Klammern
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
                 (:comment "Original: Ġ♭.") (:flag :draft) (:id 2))
           b38 fl8 b38 sbd8 b38 sb8 bl
           (:section s8) sb8 b38
           (:alt (:diplomatic sbd9)
                 (:critical sbd8)
                 (:comment "Original: Ȧ.")
                 (:flag :draft) (:id 3))
           b38 fl9 b38 sb9 b38 fl9 b38 sbd9 b38 sb9 bl
           b38 b38 b38 b22 b430)
   (:text 70 58
          (10 396 "per n. mi. mi. fa.")
          (412 502 "ꝑ n. fa. re. mi. fa. ſol.")
          (1010 508 "ꝑ n. ſol. re. mi. fa. re."))
   (:text 70 58
          (148 218 "la ꝑ diſc.")
          (418 488 "ꝑ ♭. ut. re. mi. fa. re.")
          (1004 516 "ꝑ ♭. re. mi. fa. re. mi."))
   (:text 70 58
          (1008 504 "ꝑ ♮. ut. re. mi. fa. re."))))
