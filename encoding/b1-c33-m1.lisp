`((:header
   (:filename "b1-c33-m1")
   (:alt-name "m1.041")
   (:comment "q021_s045, origin: 494")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Essempio del salto e dei gradi de quarta accidentale, incomposta e composta")
                 (:de "")
                 (:en "Example of the leap and the steps of the quarta accidentale, incomposta and composta")))
   (:section-captions
    ;; JK: zu den Endungen von '(in)composty'.
    ;;
    ;; Das finde ich sinnvoll, denn hier schreibt er ja von den 'gradi', die in
    ;; der 'quarta composta' zu finden sind. 'Quarta (in)composta' lese ich als
    ;; implizite Kurzform von 'salto (in)composto della quarta'. Die 'quarta' und
    ;; 'quinta' werden oft direkt 'composta' oder 'incomposta' genannt,
    ;; insbesondere wenn sie im Sinn eines "Tetrachord" oder "Pentachord"
    ;; verwendet werden (siehe Buch III).
    ;;
    ;; Ich finde es gut, in diesem Beispiel ausschliessich die weibliche Form
    ;; zu verwenden, also stets auf 'quarta' bezogen. So ist es im Moment
    ;; codiert, auf Italienisch und auf Englisch.
    ;;
    ;; DONE
    (s1 (:alt (:it "salto di quarta\\accidentale\\incomposta")
              (:de "")
              (:en "leap of a quarta\\accidentale\\incomposta")))
    (s2 (:alt (:it "gradi di quarta\\accidentale\\composta")
              (:de "")
              (:en "steps of quarta\\accidentale\\composta")))
    (s3 (:alt (:it "gradi di quarta\\accidentale\\composta")
              (:de "")
              (:en "steps of quarta\\accidentale\\composta")))
    (s4 (:alt (:it "salto di quarta\\accidentale\\incomposta")
              (:de "")
              (:en "leap of quarta\\accidentale\\incomposta")))
    (s5 (:alt (:it "gradi di quarta\\accidentale\\composta")
              (:de "")
              (:en "steps of quarta\\accidentale\\composta")))
    (s6 (:alt (:it "salto di quarta\\accidentale\\incomposta")
              (:de "")
              (:en "leap of quarta\\accidentale\\incomposta")))))
  (:data
   (:text 150 58
     (137 1893 "ᴇſſempio del ſalto,& de i gradi de Ɋuarta accidentale,incompoſta & compoſta."))
   (:music 2193
           (:voice v1)
           (:section s1)
           cclef7 sh1 b27 sb1 sh4 b22 sb4 bl
           (:section s2)
           fl2 b22 sb2 b22 sb3 sb4 b22 fl5 b22 sb5 bl
           (:section s3)
           sh3 b22 sb3 sb4 sb5 sb6 bl
           (:section s4)
           sh4 b22 sb4 b22 sh7 b22 sb7 bl
           (:section s5)
           fl8 b22 sb8 b22 sb7 b22 fl6 b22 sb6 b22 fl5 b22 sb5 bl
           (:section s6)
           fl4 b38 sb4 b22 fl1 b22 sb1 bl)
   (:text 80 58
     (48 nil "ſalto di 4.")
     (340 nil "gradi di quarta")
     (750 nil "gradi di 4.")
     (1062 nil "ſalto di 4.")
     (1375 nil "gradi di quarta acci.")
     (1882 nil "ſalto di 4."))
   (:text 70 58
     (51 nil "accidentale")
     (353 nil "accidentale")
     (746 nil "accidentale")
     (1067 nil "accidentale")
     (1366 nil "accidentale comp.")
     (1880 nil "accidentale"))
   (:text 70 58
     (57 nil "incomp.")
     (360 nil "compoſta")
     (751 nil "compoſta")
     (1062 nil "incompoﬆa")
     (1887 nil "incompoſta"))))
