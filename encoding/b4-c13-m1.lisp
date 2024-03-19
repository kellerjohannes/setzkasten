`((:header
   (:filename "b4-c13-m1")
   (:alt-name "m4.014")
   (:comment "q021_s156, rotation: 2.75, origin: 1080")
   (:creator "Vicentino21 / Johannes Keller")
   (:line-headings
    (:alt (:it "Punto in sincopa a due voci")
          (:de "Punkt in [Vorhalts-]Synkope mit zwei Stimmen")
          (:en "Dot of the sincopa [suspension] in two voci"))
    nil
    (:alt (:it "Punti dubbiosi di pigliar fiato")
          (:de "zweifelhafte Punkte, um Atem zu schnappen")
          (:en "Dubious dots for taking a breath")))
   ;; Kommentar Anne: this does not appear anywhere in your example and probably belongs to the
   ;; example with the octave and the fifth.
   ;;
   ;; JK: Ich verstehe den Kommentar nicht. Die beiden obigen Textelemente ("Punto in sincopa" /
   ;; "Punti dubbiosi") erscheinen im modernen Notensatz als Zwischentitel, da ich sie als solche
   ;; interpretiere. Gut so?
   ;;
   ;; AS: Ich finde es immer noch schwierig, die Textteile im Beispiel zu koordinieren mit dem Original, aber es stimmt grundsätzlich.
   ;;
   ;; DONE
   (:section-headings
    ;; AS: Die section-headings sollten alle zentriert über ihre Beispiele sein, oder?
    ;;
    ;; OPEN
    (s1 (:alt (:it "Esempio del punto di quinta e di seconda")
              (:de "Beispiel des Punkts der quinta und der seconda")
              (:en "Example of the dot of the quinta and of the seconda")))
    ;; AS: Ich frage mich, ob bei den untenstehenden nicht immer [Example of the] stehen soll. Da
    ;; die Beispiele vereinzelt stehen, zieht meine Augen nicht das "Essempio del" mit.
    ;;
    ;; OPEN
    (s2 (:alt (:it "Punto di quarta")
              (:de "Punkt der quarta")
              (:en "Dot of the quarta")))
    (s3 (:alt (:it "Punto di settima")
              (:de "Punkt der settima")
              (:en "Dot of the settima")))
    (s4 (:alt (:it "[Punto] di undecima")
              (:de "[Punkt] der undecima")
              (:en "[Dot] of the undecima")))
    (s5 (:alt (:it "Punto che salva\\due ottave")
              (:de "Punkt, der zwei\\[parallele] ottave rettet")
              (:en "Dot which rescues\\two [consecutive] ottave")))
    (s6 (:alt (:it "[Punto che] salva\\due quinte")
              (:de "[Punkt, der] zwei\\[parallele] quinte rettat")
              (:en "[Dot which] rescues\\two [consecutive] quinte")))
    (s7 (:alt (:it "Punto d'affanno")
              (:de "Punkt des Schmerzes")
              (:en "Dot of affliction")))))
  (:data
   (:text 90 58
     (10 773 "Eſſempio del punto di 5.& di 2.")
     (829 nil "pūto di 4.")
     (1247 nil "punto di 7.")
     (1679 nil "di undecima"))
   (:music 2227
           (:voice v1)
           (:section s1) cclef7 b38 m7 dot8 sm6 b38 m5 b38 m4 dot4 sm3 b38 sb3 b38 m2 b38 sb3 b38 bl
           (:section s2) b38 sb3 dot4 m2 b38 bl
           (:section s3) (:newline) mrest7 b38 m7 dot8 cr6 b38 cr5d b38 m6 b38 sb7 b38 bl
           (:section s4) mrest7 b38 m10 dot10 cr9 b38 cr8 b38 m9 b38 sb10 b38 bl)
   (:text 90 58
     (87 nil "Punto in ſincopa à due uoci."))
   (:music 2232
           (:voice v2)
           (:section s1) (:f-clef) max7 fclef7 b38 mrest7 b38 sb7 b38 m6 b38 m7 b38 b22 m5d b38 b22 sb4 b38 b22 sb0 b38 bl
           (:section s2) b38 sb5 b38 sb4 b38 bl
           (:section s3) b38 sb7 b38 b38 b38 sb5 b38 b38 b38 sb4 b38 b38 b22 bl
           (:section s4) b38 b38 sb5 b38 b38 sb4 b38 b38 b22 sb7 b38 b38 b22 bl)
   (:text 90 58
     (78 nil "Punto che ſalua due 8.& ſalua due 5."))
   (:music 2236
           (:voice v1)
           (:section s5) (:newline) cclef7 b38 m10 dot10 sm8 b38 sb9 b38 bl
           (:section s6) b38 m8 dot8 sm7 b38 b38 bl
           (:section s7) b38 b38 m5 b38 b38 sb7 b22 dot8 b22 sb6 b38 b38 bl
           b125 b125 b125 b125 b125 b125 b125 b125 b38 b125)
   (:text 90 58
     (89 nil "Pūti dubb.di pigliar fiato.")
     (712 nil "Punto dʼaffanno."))
   (:music 2239
           (:voice v2)
           (:section s5) (:f-clef) max7 fclef7 b38 m7 b38 m5d b38 sb4 bl
           (:section s6) b38 m8 b38 b22 m7 b38 bl
           (:section s7) b38 m7 dot8 sm8 b38 m9 b38 sb8 b38 m6 b38 bl
           b125 b125 b125 b125 b125 b125 b125 b38 b38 b125)))
