`((:header
   (:filename "b4-c43-m1")
   (:alt-name "m4.040")
   (:comment "q021_s195, rotation: 0, origin: 466")
   (:creator "Vicentino21 / Johannes Keller")
   ;; JK, aus der Bibelgruppe vom 3. Januar 2024:
   ;;
   ;; Die Kreuze sollten viel stärker differenziert werden. Beschluss
   ;; - Barré und crit ohne Unterscheidung, x und ♯
   ;; - Für norm soll ein neues Symbol erstellt werden, ein Kreuz, das
   ;;   aus zwei Strichen besteht ('quartertone-sharp'?)
   ;; - Zusätzlich soll, unabhängig von der Edition, eine Übertragung von
   ;;   Lusitanos Original angefertigt werden, mit zwei unterschiedlichen
   ;;   Kreuzen: 2 Strichen und 5 Strichen.
   ;;
   ;; OPEN
   (:title (:alt (:it "Esempio del sopra detto Don Vincentio,\\come ha posto le consonanze false")
                 (:de "")
                 (:en "")))
   (:voice-labels
    (s1 v1 (:alt (:it "Alto con la quinta falsa")
                 (:de "")
                 (:en "")))
    (s1 v2 (:alt (:it "Soprano con la decima falsa")
                 (:de "")
                 (:en "")))
    (s1 v3 (:alt (:it "Basso")
                 (:de "")
                 (:en "")))
    (s1 v4 (:alt (:it "Tenore con le consonanze false")
                 (:de "")
                 (:en ""))))
   (:voice-order
    (s1 v2 v1 v4 v3)))
  (:data
   (:text 90 58
          (227 1768 "Eſſempio del ſopra detto Don Vincentio,come hà posto le conſonanze falſe."))
   (:music 2241
           (:section s1)
           (:voice v1) cclef5 b38 b22 br3 b22 b38 sb3 dot4 b22 sh3 b38 b22 m3 b38 b22 fl4 b38 b22 sb4 b22 b38 sh4 b38 b22 sb4 b22 b38 br5 b38 bl
           (:voice v2) b38 sb5 b38 sh5 b38 m5 b22 b38 sh5 b38 b22 m5 b22 br6 b38 br7 b38 bl
           b125 b125 b125)
   (:text 90 58
          (178 nil "Alto con la quinta falſa")
          (1212 nil "Soprano con la decima falſa."))
   (:music 2239
           (:voice v3) (:f-clef) max7 fclef7 b38 met-imperf-min-dim b38 b22 br2 b38 b22 br5 b22 b38 sb1 b22 b38 sb1 b38 b22 br4 b38 b38 bl
           (:voice v4) b38 b38 sb6 b22 b38 sh6 b38 b22 sb6 b38 b22 sb7 b38 b22 sh7 b38 b22 m7 b38 b22 sh7 b38 b22 m7 b38 b22 br8 b38 bl
           b38 b38 b22 b125)
   (:text 70 58
          (359 nil "Baſſo")
          (994 nil "Tenore con le conſon. falſe."))))
