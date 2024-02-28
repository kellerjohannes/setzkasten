`((:header
   (:filename "b1-c20-m1")
   (:alt-name "m1.028")
   (:comment "q021_s038, origin: 939")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Essempio di più semitoni maggiori et minori, ascendenti e discendenti,\\composti et incomposti, naturali e accidentali")
                 (:de "Beispiel von weiteren semitoni maggiori et minori, aufsteigend und absteigend,\\composti und incomposti, naturali und accidentali")
                 (:en "Example of many semitoni maggiori and minori, ascending and descending,\\composti and incomposti, naturali and accidentali")))
   (:section-captions
    (s1 (:alt (:it "semitono maggiore\\naturale composto")
              (:de "semitono maggiore\\naturale composto")
              (:en "semitono maggiore\\naturale composto")))
    (s2 (:alt (:it "semitono maggiore\\accidentale composto")
              (:de "semitono maggiore\\accidentale composto")
              (:en "semitono maggiore\\accidentale composto")))
    (s3 (:alt (:it "semitono minore\\accidentale incomposto")
              (:de "semitono minore\\accidentale incomposto")
              (:en "semitono minore\\accidentale incomposto")))
    (s4 (:alt (:it "semitono maggiore\\accidentale incomposto")
              (:de "semitono maggiore\\accidentale incomposto")
              (:en "semitono maggiore\\accidentale incomposto")))
    (s5 (:alt (:it "semitoni minori\\accidentali composti")
              (:de "semitoni minori\\accidentali composti")
              (:en "semitoni minori\\accidentali composti")))
    (s6 (:alt (:it "semitono maggiore\\naturale composto")
              (:de "semitono maggiore\\naturale composto")
              (:en "semitono maggiore\\naturale composto")))
    (s7 (:alt (:it "semitono minore\\accidentale incomposto")
              (:de "semitono minore\\accidentale incomposto")
              (:en "semitono minore\\accidentale incomposto")))
    (s8 (:alt (:it "semitoni maggiori\\accidentali incomposti")
              ;; Kommentar Anne: Is the step from d-sharp to d-flat dot really maggiore? If the
              ;; Italian gets corrected, then the English must be corrected too.
              ;; JK: Ja, ist korrekt so im Original!
              ;;
              ;; DONE
              (:de "semitoni maggiori\\accidentali incomposti")
              (:en "semitoni maggiori\\accidentali incomposti")))
    (s9 (:alt (:it "semitoni maggiori\\accidentali composti")
              (:de "semitoni maggiori\\accidentali composti")
              (:en "semitoni maggiori\\accidentali composti")))
    (s10 (:alt (:it "semitono maggiore\\accidentale incomposto")
               (:de "semitono maggiore\\accidentale incomposto")
               (:en "semitono maggiore\\accidentale incomposto")))
    (s11 (:alt (:it "semitoni maggiori\\et minori\\accidentali incomposti")
               ;; Kommentar David (placed by Anne): No. 11: with your emended version of the pitches
               ;; in this segment, the caption is misleading. The numerous intervals shown include
               ;; two semitoni minori accidentali incomposti (Ab–Gdot and G–Gb) and two semitoni
               ;; maggiori accidentali composti (Ab–Gdot–G and Gdot–G–Gb).
               ;;
               ;; Personally I think it's possible that Vicentino really did intend the pitches that
               ;; are printed in the example, because then the caption would be correct (noting that
               ;; it's ambiguous as to whether it's singular or plural): it shows two semitoni
               ;; maggiori accidentali incomposti (Ab–G descending and Gb–Gdot ascending)
               ;; surrounding one semitono minore accidentale incomposto (G–Gb).  Alternatively, and
               ;; possibly even more likely, he may have meant the last pitch to be Fdot, in which
               ;; case the caption would still be correct: it would show one semitono maggiore
               ;; accidentale incomposto (Ab–G) followed by two semitoni minori accidentali
               ;; incomposti (G–Gb and Gb–Fdot), all descending.
               ;;
               ;; OPEN
               (:de "semitoni maggiori\\und minori\\accidentali incomposti")
               (:en "semitoni maggiori\\and minori\\accidentali incomposti")))
    (s12 (:alt (:it "semitoni minori\\et maggiori\\accidentali incomposti")
               (:de "semitoni minori\\und maggiori\\accidentali incomposti")
               (:en "semitoni minori\\and maggiori\\accidentali incomposti")))))
  (:data
   (:text 90 58
     (0 2234 "ᴇſſempio di più ꜱemitoni mag.et minori,aſcendenti,et diſcendenti, comp.et incomp.nat.et acci"))
   (:music 2220
           (:voice v1)
           (:section s1)
           cclef7 b38 sb2 b38 sbd2 b38 sb3 bl
           (:section s2)
           sh3 b27 sb3 fl4 b27 sbd4 b27 sb4 bl
           (:section s3)
           sb4 b38 sh4 b38 sb4 bl
           (:section s4)
           sb5 b38 fl6 b38 sb6 bl
           (:section s5)
           (:newline)
           fl6 b38 sb6 b27 fl6 b38 sbd6 b27 sb6 bl
           (:section s6)
           sb6 b27 sbd6 b27 sb7 bl
           (:section s7)
           sb7 b38 sh7 b27 sb7 bl)
   (:text 70 58
     (26 nil "ſemit.mag.")
     (344 nil "ſemit.magg.")
     (695 nil "ſemit. mi.")
     (964 nil "ſemit. ma.")
     (1229 nil "ſemit.minore")
     (1664 nil "ſemit.mag.")
     (1955 nil "ſemit.mino."))
   (:text 120 58
     (24 nil "nat.comp.")
     (337 nil "accid. compo.")
     (693 nil "acci.inco.")
     (949 nil "ac.incomp.")
     (1218 nil "accid.comp.")
     (1660 nil "nat.comp.")
     (1951 nil "acc. incom."))
   (:music 2225
           (:section s8)
           cclef7 sb9 b22 sh8 b38 sb8 b38 fl8 b38 sbd8 bl
           (:section s9)
           (:newline)
           sbd7 b38 sb7 b38 sbd6 b38 bl
           (:section s10)
           b38 fl6 b38 sb6 b38 sb5 b38 bl
           (:section s11)
           fl5 b38 sb5 b38
           (:alt (:diplomatic sb4 b38 fl4 b38 sb4 b38 sbd4)
                 (:critical sbd4 b38 sb4 b38 fl4 b38 sb4)
                 (:coord-barre "MZ2 N9-12")
                 (:coord-norm "G11")
                 (:comment "Original: A♭--G--G♭--Ġ. Dieses Beispiel zeigt zwei alternative Teilungen des _tono_: A♭--Ġ--G♭ und A♭--G--G♭.")
                 (:flag :ready) (:id 1))
           bl
           (:section s12)
           sb3 b38 sbd2 b38 fl2 b38 sb2 bl
           b38 b38 b38 b38 b38 b38)
   (:text 70 58
     (26 nil "ſemit.maggiori")
     (467 nil "ſem.ma.acc.")
     (775 nil "ſemit.magg.")
     (1105 nil "ſemit.magg. et min.")
     (1622 nil "ſe.min.et mag."))
   (:text 70 58
     (39 nil "accid.incomp.")
     (475 nil "comp.")
     (778 nil "accid.incom.")
     (1099 nil "accid.incomp.")
     (1618 nil "accid.incomp."))))
