`((:header
   (:filename "b2-c06-m1")
   (:alt-name "m2.008")
   (:comment "q021_s060, rotation: 0, origin: 990")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Esempio della quarta sincopata a due voci,\\et non sincopata a tre voci, et con il punto:\\come s'ha da comporre a molte voci, et con la sincopa tutta cattiva")
                 (:de "Beispiel der synkopierten quarta mit zwei Stimmen,\\ und nicht synkopiert mit drei Stimmen, und mit der Punktierung;\\und wie sie mit vielen Stimmen setzt und mit der gänzlich schlechten Synkope.")
                 (:en "Example of the quarta sincopata in two voci,\\ and not sincopata in three voci;\\and how it is to be composed with the dot in many voci; and with the\\wholly bad sincopa")))
   ;; Kommentar Anne: or with the "suspension dissonance of a quarta"?
   ;; JK: Ja, würde ich ergänzen, habe ich bereits eingepflegt.
   ;;
   ;; DONE
   (:section-headings
    (s1 (:alt (:it "Buona")
              (:de "gut")
              (:en "good")))
    (s2 (:alt (:it "Megliore")
              (:de "besser")
              (:en "better")))
    (s3 (:alt (:it "Buone")
              (:de "gut")
              (:en "good")))
    (s4 (:alt (:it "Semplice")
              (:de "einfach")
              (:en "simple")))
    (s5 (:alt (:it "Sciolta")
              (:de "sciolta [unvorbereitet]")
              (:en "sciolta [unprepared]")))
    (s6 (:alt (:it "A tre voci")
              (:de "mit drei Stimmen")
              (:en "in three voci")))
    (s7 (:alt (:it "Sciolta")
              (:de "sciolta [unvorbereitet]")
              (:en "sciolta [unprepared]")))
    (s8 (:alt (:it "All'antica")
              (:de "all'antica")
              (:en "in the old style"))))
   (:section-captions
    (s1 (:alt (:it "1.")
              (:de "")
              (:en "1.")))
    (s2 (:alt (:it "2.")
              (:de "")
              (:en "2.")))
    (s3 (:alt (:it "3.")
              (:de "")
              (:en "3.")))))
  (:data
   (:text 70 58
     (75 2090 "Eſſempio della quarta ſincopata à due uoci,& non ſincop. à tre uoci,& con il punto : come"))
   (:text 90 58
          (357 1469 "sʼhà da comporre à molte uoci , & con la ſincopa tutta cattiua."))
   (:music 2211
           (:voice v1)
           (:section s1) cclef7 b22 mrest7 m7 dot8 sm6 b22 m6 sb7 bl
           (:section s2) mrest7 b22 sb7 b22 m6 b22 sb7 bl
           (:section s3) mrest5 sb5 sb4 sb3 m2 sb3
           (:section s4) (:newline) cclef5 b38 sb5 b38 bl
           (:section s5) sb6 dot6 m7 sb6 bl
           (:section s6) sb6 dot6 fl7 m7 sb6 bl
           (:section s7) sb7
           (:alt (:diplomatic dot6)
                 (:critical dot8)
                 (:coord-barre "MZ1 N20")
                 (:coord-norm "G7 St1 N1")
                 (:comment "Original: Rhythmische Punktierung steht eine Position tiefer.")
                 (:flag :ready) (:id 1))
           m8 sb7 bl
           (:section s8) m7 sb8 m7 sb8 bl)
   (:text 90 58
     (86 nil "buoa")
     (433 nil "megliore")
     (730 nil "buone")
     (1032 nil "sēplice")
     (1236 nil "ſciolta")
     (1477 nil "à tre uoci")
     (1740 nil "ſciolta")
     (1970 nil "allʼ")
     (2061 nil "antica"))
   (:music 2206
           (:voice v2)
           (:section s1) cclef7 b38 sb5 b22 sb4 b22 m2 b22 m3 bl
           (:section s2) b22 sb5 b22 sb4 b22 sb0 bl
           (:section s3) sb3 sb2 b22 sb1 b22 sb0 b22 sb7 b22
           (:section s4) cclef7 b38 sb4 b38 bl
           (:section s5) sb6 dot6 m7 sb6 bl
           (:section s6) sb6 dot6 m7 sb6 b22 bl
           (:section s7) sb4 dot4 m5 sb4 bl
           (:section s8) m4 m5 sb4 sb5 bl)
   (:vspace 30)
   (:text 90 58
          (173 nil
               (:alt (:diplomatic "1.")
                     (:critical "1.")
                     (:coord-barre "TZ4 TE1")
                     (:coord-norm "G1 US")
                     ;; JK: Notwendigkeit eines Kommentars ist zu diskutieren.
                     ;;
                     ;; OPEN
                     (:comment "Bedeutung von »1.« unklar.")
                     (:flag :observe) (:id 2)))
          (514 nil
               (:alt (:diplomatic "2.")
                     (:critical "2.")
                     (:coord-barre "TZ4 TE2")
                     (:coord-norm "G2 US")
                     ;; JK: Notwendigkeit eines Kommentars ist zu diskutieren.
                     ;;
                     ;; OPEN
                     (:comment "Bedeutung von »2.« unklar.")
                     (:flag :observe) (:id 3)))
          (824 nil
               (:alt (:diplomatic "3.")
                     (:critical "3.")
                     (:coord-barre "TZ4 TE3")
                     (:coord-norm "G3 US")
                     ;; JK: Notwendigkeit eines Kommentars ist zu diskutieren.
                     ;;
                     ;; OPEN
                     (:comment "Bedeutung von »3.« unklar.")
                     (:flag :observe) (:id 4))))
   (:music 2203
           (:voice v3)
           (:section s4) s1008 (:f-clef) max7 fclef7 sb4 b38 bl
           (:section s5) b22 sb8 b22 sb8 b22 sb8 bl
           (:section s6) b22 sb8 b38 sb8 b38 sb8 b22 bl
           (:section s7) sb4 sb4 sb4 b22 bl
           (:section s8) b38 br4 b38 sb7 b22 bl)))
