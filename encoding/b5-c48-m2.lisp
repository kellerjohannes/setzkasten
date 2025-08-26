;; JK: in diesen Kapiteln ist die Anzahl der Textzeilen in den Überschriften unregelmässig, was zu
;; einem flatterigen Satz führt. Das ist am Ende der Text-Lektorate zu prüfen und anzupassen.
;;
;; JK: Mit Luigi wurde das Layout geändert, ist jetzt homogener und leichter verständlich.
;;
;; DONE

`((:header
   (:filename "b5-c48-m2")
   (:alt-name "m5.049")
   (:comment "q021_s248, rotation: 1.01, origin: 980")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "[Ascendenza di Are primo fin Alamire primo,\\con la divisione del tono in quattro parti,\\e con la divisione delli semitoni minori e maggiori]")
                 ;; AS und MK: neu übersetzen
                 ;;
                 ;; OPEN
                 (:de "")
                 (:en "")))
   (:section-headings
    (s1 (:alt (:it "Tono naturale\\[ascendente]\\ \\Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
              (:de "tono naturale\\aufsteigend")
              (:en "Ascending\\tono naturale")))
    (s2 (:alt (:it "Semitono accidentale\\e naturale\\[ascendente]\\ \\Semitono minore e\\maggiore:\\diesis minore – diesis minore –\\diesis minore")
              (:de "semitono accidentale\\und naturale\\aufsteigend")
              (:en "Ascending\\semitono accidentale\\and naturale")))
    (s3 (:alt (:it " \\Tono naturale\\[ascendente]\\ \\Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
              (:de "tono naturale\\aufsteigend")
              (:en "Ascending\\tono naturale")))
    (s4 (:alt (:it " \\Tono naturale\\[ascendente]\\ \\Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
              (:de "tono naturale\\aufsteigend")
              (:en "Ascending\\tono naturale")))

    (s5 (:alt (:it " \\Semitono accidentale\\e naturale\\[ascendente]\\ \\Semitono minore e\\maggiore:\\diesis minore – diesis minore –\\diesis minore")
              (:de "semitono accidentale\\und naturale\\aufsteigend")
              (:en "Ascending\\semitono accidentale\\and naturale")))
    (s6 (:alt (:it " \\Tono naturale\\[ascendente]\\ \\Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
              (:de "tono naturale\\aufsteigend")
              (:en "Ascending\\tono naturale")))
    (s7 (:alt (:it " \\Tono naturale\\[ascendente]\\ \\Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
              (:de "tono naturale\\aufsteigend")
              (:en "Ascending\\tono naturale")))
    (s8 (:alt (:it " \\Tono naturale\\discendente\\ \\Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
              (:de "tono naturale\\absteigend")
              (:en "Descending\\tono naturale")))

    (s9 (:alt (:it " \\Tono naturale\\[discendente]\\ \\Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
              (:de "tono naturale\\absteigend")
              (:en "Descending\\tono naturale")))
    (s10 (:alt (:it " \\Semitono accidentale\\e naturale\\[discendente]\\ \\Semitono minore e\\maggiore:\\diesis minore – diesis minore –\\diesis minore")
               (:de "semitono accidentale\\und naturale\\absteigend")
               (:en "Descending\\semitono accidentale\\and naturale")))
    (s11 (:alt (:it " \\Tono naturale\\[discendente]\\ \\Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
               (:de "tono naturale\\absteigend")
               (:en "Descending\\tono naturale")))

    (s12 (:alt (:it " \\Tono naturale\\[discendente]\\ \\Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
               (:de "tono naturale\\absteigend")
               (:en "Descending\\tono naturale")))
    (s13 (:alt (:it " \\Semitono [accidentale\\e] naturale\\[discendente]\\ \\Semitono minore e\\maggiore:\\diesis minore – diesis minore –\\diesis minore")
               (:de "semitono accidentale\\e naturale\\absteigend")
               (:en "Descending\\semitono accidentale\\and naturale")))
    (s14 (:alt (:it " \\Tono naturale\\[discendente]\\ \\Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
               (:de "tono naturale\\absteigend")
               (:en "Descending\\semitono naturale"))))
   ;; (:section-captions
   ;;  (s1 (:alt (:it "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
   ;;            (:de "semitono minore:\\diesis minore – diesis minore\\semitono maggiore:\\diesis maggiore – diesis minore")
   ;;            (:en "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")))
   ;;  (s2 (:alt (:it "Semitono minore\\e maggiore:\\diesis minore – diesis minore – diesis minore")
   ;;            (:de "semitono minore\\e maggiore:\\diesis minore – diesis minore – diesis minore")
   ;;            (:en "Semitono minore\\e maggiore:\\diesis minore – diesis minore – diesis minore")))
   ;;  (s3 (:alt (:it "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
   ;;            (:de "semitono minore:\\diesis minore – diesis minore\\semitono maggiore:\\diesis maggiore – diesis minore")
   ;;            (:en "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")))
   ;;  (s4 (:alt (:it "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
   ;;            (:de "semitono minore:\\diesis minore – diesis minore\\semitono maggiore:\\diesis maggiore – diesis minore")
   ;;            (:en "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")))

   ;;  (s5 (:alt (:it "Semitono minore\\e maggiore:\\diesis minore – diesis minore – diesis minore")
   ;;            (:de "semitono minore\\e maggiore:\\diesis minore – diesis minore – diesis minore")
   ;;            (:en "Semitono minore\\ andmaggiore:\\diesis minore – diesis minore – diesis minore")))
   ;;  (s6 (:alt (:it "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
   ;;            (:de "semitono minore:\\diesis minore – diesis minore\\semitono maggiore:\\diesis maggiore – diesis minore")
   ;;            (:en "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")))
   ;;  (s7 (:alt (:it "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
   ;;            (:de "semitono minore:\\diesis minore – diesis minore\\semitono maggiore:\\diesis maggiore – diesis minore")
   ;;            (:en "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")))
   ;;  (s8 (:alt (:it "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
   ;;            (:de "semitono minore:\\diesis minore – diesis minore\\semitono maggiore:\\diesis maggiore – diesis minore")
   ;;            (:en "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")))

   ;;  (s9 (:alt (:it "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
   ;;            (:de "semitono minore:\\diesis minore – diesis minore\\semitono maggiore:\\diesis maggiore – diesis minore")
   ;;            (:en "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")))
   ;;  (s10 (:alt (:it "Semitono minore\\e maggiore:\\diesis minore – diesis minore – diesis minore")
   ;;             (:de "semitono minore\\e maggiore:\\diesis minore – diesis minore – diesis minore")
   ;;             (:en "Semitono minore\\and maggiore:\\diesis minore – diesis minore – diesis minore")))
   ;;  (s11 (:alt (:it "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
   ;;             (:de "semitono minore:\\diesis minore – diesis minore\\semitono maggiore:\\diesis maggiore – diesis minore")
   ;;             (:en "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")))

   ;;  (s12 (:alt (:it "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
   ;;             (:de "semitono minore:\\diesis minore – diesis minore\\semitono maggiore:\\diesis maggiore – diesis minore")
   ;;             (:en "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")))
   ;;  (s13 (:alt (:it "Semitono minore:\\diesis minore – diesis minore – diesis minore")
   ;;             (:de "semitono minore:\\diesis minore – diesis minore – diesis minore")
   ;;             (:en "Semitono minore:\\diesis minore – diesis minore – diesis minore")))
   ;;  (s14 (:alt (:it "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore")
   ;;             (:de "semitono minore:\\diesis minore – diesis minore\\semitono maggiore:\\diesis maggiore – diesis minore")
   ;;             (:en "Semitono minore:\\diesis minore – diesis minore\\Semitono maggiore:\\diesis maggiore – diesis minore"))))
   )
  (:data
   (:text 90 58
     (127 nil "se.min.")
     (402 nil "se.mag.")
     (696 nil "se.mi.et mag.")
     (1102 nil "se.mi.")
     (1325 nil "se.mag.")
     (1622 nil "se.mi.")
     (1860 nil "se.mag."))
   (:music 2226
           (:voice v1)
           (:section s1) (:f-clef) max7 fclef7 b22 sb2 b22 sbd2 b22 sh2 b22 sb2 b22 fl3 b22 sbd3 b22 sb3 bl
           (:section s2) sb3 b22 sbd3 b22 sh3 b22 sb3 b22 sb4 b22 bl
           (:section s3) (:newline) b22 sb4 b22 sbd4 b22 sh4 b22 sb4 b22 fl5 b22 sbd5 b22 sb5 b22 bl
           (:section s4)  b22 sb5 b22 sbd5 b22 sh5 b22 sb5 b22 fl6 b22 sbd6 b22 sb6 b22 bl)
   (:text 70 58
     (45 nil "di.mi. di.mi.d.ma. d.mi.")
     (645 nil "di mi. d.mi.di.mi.")
     (1064 nil "d.mi.d.mi.d.ma. di.mi.")
     (1664 nil "d.mi.di.mi.di.ma.di.mi."))
   (:text 110 58
     (79 nil "tono")
     (268 nil "naturale")
     (714 nil "se. acc.et nat.")
     (1129 nil "tono naturale")
     (1698 nil "tono")
     (1896 nil "naturale"))
   (:text 110 58
     (129 nil "se.min & mag.")
     (566 nil "se.min.")
     (850 nil "se. mag.")
     (1145 nil "se.min.")
     (1373 nil "se.mag.")
     (1707 nil "se.min.")
     (1988 nil "se.mag."))
   (:music 2229
           (:section s5) (:newline) (:f-clef) max7 fclef7 b22 sb6 b22 sbd6 b22 sh6 b22 sb6 b22 sb7 b22 bl
           (:section s6) b22 sb7 b22 sbd7 b22 sh7 b22 sb7 b22 fl8 b22 sbd8 b22 sb8 b22 bl
           (:section s7) (:newline)  b22 sb8 b22 sbd8 b22 sh8 b22 sb8 b22 fl9 b22 sbd9 b22 sb9 b22 bl
           (:section s8) sb9 b38 fl9 b38 sbd9 b38 fl9 b22 sb9 b22 sbd8 b22 sb8 bl)
   (:text 90 58
     (45 nil "di. mi. d.mi. di. mi.")
     (548 nil "di.mi.d.mi.d.ma.di.mi.")
     (1139 nil "di.mi.d.mi.d.ma.d.mi.")
     (1679 nil "di.mi.d.mi.d.ma.d.mi."))
   (:text 110 58
     (66 nil "se. acc. et nat.")
     (600 nil "tono")
     (796 nil "naturale")
     (1127 nil "tono")
     (1330 nil "naturale")
     (1691 nil "tono natur. diſcend."))
   (:text 110 58
     (130 nil "se.min. sem.mag.")
     (930 nil "sem.min.")
     (1205 nil "& mag.")
     (1489 nil "sem. min.")
     (1779 nil "sem. mag."))
   (:music 2230
           (:section s9) (:newline) (:f-clef) max7 fclef7 b38 sb8 b38 fl8 b38 b22 sbd8 b38 fl8 b38 b22 sb8 b38 b22 sbd7 b38 b22 sb7 b38 b22 bl
           (:section s10)  b38 b22 sb7 b38
           (:alt (:diplomatic sbd6 b38 sh6 b38 b22 sb6)
                 (:critical sh6 b38 b22 sb6 b38 sbd6)
                 (:coord-barre "MZ3 N7-8")
                 (:coord-norm "G10 N2-3")
                 (:comment "In allen Exemplaren: Ė–E♯.")
                 (:flag :ready) (:id 1))
           b38 sb6 b38 b22 bl
           (:section s11) (:newline) b22 b38 sb6 b38 fl6 b38 sbd6 b38
           (:alt (:diplomatic sh5 b38 sb5)
                 (:critical fl6 b38 sb6)
                 (:coord-barre "MZ3 N12")
                 (:coord-norm "G11 N3")
                 (:comment "In allen Exemplaren: D♯.")
                 (:flag :ready) (:id 2))
           b38 sbd5 b22 b22 sb5 b22 b22 bl)
   (:text 100 58
     (45 nil "di. mi. di. mi.")
     (405 nil "di. ma. di. mi.")
     (893 nil
          (:alt (:diplomatic "di. ma. di. mi. di. mi.")
                (:critical "di. mi. di. mi. di. mi.")
                (:coord-barre "TZ8 TE2")
                (:coord-norm "G10 US")
                (:comment "In allen Exemplaren: »di. ma. di. mi. di. mi.«.")
                (:flag :ready) (:id 0)))
     (1502 nil "di. mi. di. mi. di. ma. di. mi."))
   (:text 120 58
     (127 nil "tono")
     (382 nil "naturale")
     (950 nil "sem. acc. & nat.")
     (1546 nil "tono")
     (1746 nil "naturale"))
   (:text 100 58
     (132 nil "se.min.")
     (518 nil "sem.mag.")
     (893 nil "sem.min. & mag.")
     (1518 nil "sem.min.")
     (1800 nil "sem.mag."))
   (:music 2221
           (:section s12) (:f-clef) max7 fclef7 b38 sb5 b38 fl5 b38 sbd5 b38 fl5 b38 sb5 b38 b22 sbd4 b38 sb4 b38 b22 bl
           (:section s13) (:newline) b22 b38 sb4 b38 b22
           (:alt (:diplomatic sbd3 b38 sh3 b38 sb3)
                 (:critical sh3 b38 sb3 b38 sbd3)
                 (:coord-barre "MZ4 N7-8")
                 (:coord-norm "G13 N2-3")
                 (:comment "In allen Exemplaren: Ḃ♮–B♯.")
                 (:flag :ready) (:id 3))
           b38 sb3 b38 b22 bl
           (:section s14) b22 b38 sb3 b38 b22 fl3 b38 sbd3 b38 b22
           (:alt (:diplomatic sh2 b22 b22 sb2)
                 (:critical fl3 b38 sb3)
                 (:coord-barre "MZ4 N12")
                 (:coord-norm "G14 N3")
                 (:comment "In allen Exemplaren: A♯.")
                 (:flag :ready) (:id 4))
           b38 sbd2 b38 b22 sb2 b38 b22 bl)
   (:text 90 58
     (57 nil "di. mi. di mi.")
     (400 nil "di. ma. di. mi.")
     (879 nil
          (:alt (:diplomatic "di.ma. di mi. di.mi.")
                (:critical "di.mi. di mi. di.mi.")
                (:coord-barre "TZ11 TE2")
                (:coord-norm "G13 US")
                (:comment "In allen Exemplaren: »di.ma. di mi. di.mi.«.")
                (:flag :ready) (:id 5)))
     (1471 nil "di. mi. di. mi.")
     (1834 nil "di. ma. di. mi."))
   (:text 70 58
     (128 nil "tono")
     (318 nil "naturale")
     (896 nil "tono")
     (1087 nil "naturale")
     (1612 nil "tono")
     (1846 nil "naturale"))))
