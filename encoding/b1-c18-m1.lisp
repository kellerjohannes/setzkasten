`((:header
   (:filename "b1-c18-m1")
   (:alt-name "m1.026")
   (:comment "q021_s036, origin: 628")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-captions
    (s1 (:alt (:it "semitono minore\\composto")
              (:de "")
              (:en "semitono minore\\composto")))
    (s2 (:alt (:it "semitono minore\\composto")
              (:de "")
              (:en "semitono minore\\composto")))
    (s3 (:alt (:it "semitono minore\\composto")
              (:de "")
              (:en "semitono minore\\composto")))
    (s4 (:alt (:it "semitono minore\\incomposto")
              (:de "")
              (:en "semitono minore\\incomposto")))
    (s5 (:alt (:it "semitono minore\\incomposto")
              (:de "")
              (:en "semitono minore\\incomposto")))
    (s6 (:alt (:it "semitono minore\\incomposto")
              (:de "")
              (:en "semitono minore\\incomposto")))
    (s7 (:alt (:it "diesis maggiore\\per semitono minore\\incomposto")
              (:de "")
              (:en "semitono minore as diesis maggiore\\incomposto")))
    (s8 (:alt (:it "diesis maggiore\\enarmonico incomposto")
              ;; Kommentar: David (sent to Anne) this semitono minore incomposto is not enharmonic!
              ;; In fact there is no such thing as a semitono minore enarmonico in Vicentino's
              ;; system – if it's this size and enharmonic then it's a diesis maggiore.  This minor
              ;; semitone is chromatic.  We need to make this emendation in all of the critical
              ;; versions of this example.  In the text we would write "chromatic semitono minore
              ;; incomposto", with the first word in English and the other three words in Italian.
              ;;
              ;; JK: Ja, ich verstehe den Punkt. Ich hätte mich auch vorstellen können, es so zu
              ;; belassen, aber ich bin einverstanden, es zu idealisieren. Allerdings schlage ich
              ;; eine andere Idealisierung vor, siehe :it-Text und Vorschlag für die Englische
              ;; Übersetzung. Ich habe das auch im Fake-Simile entsprechend angepasst.
              ;;
              ;; OPEN
              (:de "")
              (:en "diesis maggiore\\enarmonico incomposto")))))
  (:data
   (:music 2206
           (:voice v1)
           (:section s1)
           cclef7 fl1 b22 sb1 b22 fl1 b22 sbd1 b22 sb1 bl
           (:section s2)
           fl2 b22 sb2 b22 fl2 b22 sbd2 b22 sb2 bl
           (:section s3)
           fl4 b22 sb4 b22 fl4 b22 sbd4 b22 sb4 bl
           (:section s4)
           sb4 b22 sh4 b22 sb4 bl
           (:section s5)
           (:newline)
           sb5 b22 sh5 b22 sb5 bl
           (:section s6)
           (:alt (:diplomatic sb9)
                 (:critical sb8)
                 (:coord-barre "N14")
                 (:coord-norm "G6 N1")
                 (:comment "Original: E.")
                 (:flag :ready) (:id 1))
           b22 fl8 b22 sb8 bl
           (:section s7)
           sb7 b22 sbd6 bl
           (:section s8)
           sb6 fl6 sb6 bl)
   (:text 70 58
          (36 nil "ſemit.mi.comp.")
          (414 nil "ſe.mi.comp.")
          (777 nil "ſem.mi.comp.")
          (1118 nil "ſe.mi.incō.")
          (1375 nil "ſe.mi.inc.")
          (1607 nil "ſem.min.")
          (1834 nil "di.mag.")
          (2046 nil
                (:alt (:diplomatic "ſe.min.")
                      (:critical "ᴅi.ma.")
                      (:coord-barre "TZ2 TE8")
                      (:coord-norm "G8 US")
                      (:comment "Original: »ſe.min.«. Alternative Idealisierung: »semitono minore cromatico incomposto«.")
                      (:flag :ready) (:id 2))))
   (:text 70 58
          (1620 nil "incomp.")
          (1829 nil "ꝑ ſe.mi.ī")
          (2045 nil "ᴇn.inc."))))
