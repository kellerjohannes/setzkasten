`((:header
   (:filename "b3-c37-m2")
   (:alt-name "m3.080")
   (:comment "q021_s118, origin: 954")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-headings
    (s1 (:alt (:it "Seconda quinta\\diatonica")
              (:de "Zweite diatonische\\quinta.")
              (:en "Second diatonic\\quinta")))
    (s2 (:alt (:it "Seconda quinta\\cromatica")
              (:de "Zweite chromatische\\quinta.")
              (:en "Second chromatic\\quinta")))
    (s3 (:alt (:it "Terza quinta\\diatonica")
              (:de "Dritte diatonische\\quinta.")
              (:en "Third diatonic\\quinta")))
    (s4 (:alt (:it "Terza quinta\\cromatica")
              (:de "Dritte chromatische\quinta.")
              (:en "Third chromatic\\quinta")))
    (s5 (:alt (:it "Quarta quinta\\diatonica")
              (:de "Vierte diatonische\\quinta.")
              (:en "Fourth diatonic\\quinta")))
    (s6 (:alt (:it "Quarta quinta\\cromatica")
              (:de "Vierte chromatische\\quinta.")
              (:en "Fourth chromatic\\quinta")))))
  (:data
   (:text 110 58
     (0 nil "Seconda quinta.")
     (459 nil "2. quinta.")
     (807 nil "Terza quinta.")
     (1233 nil "3.quinta.")
     (1545 nil "Qu arta quīta.")
     ;; JK: Punkt ist hier nach unten verschoben, stillschweigend idealisiert.
     ;; Soll in den Bericht aufgenommen werden.
     ;;
     ;; OPEN
     (1954 nil "4. quinta."))
   (:music 2225
           (:voice v1)
           (:section s1) cclef7 b22 sb2 sb3 sb4 sb5 sb6 b22 bl
           (:section s2) b22 sb2 sb4 fl5 sb5 sb5 fl6 sb6 sb6 bl
           (:section s3) (:newline) b22 sb3 sb4 sb5 sb6 sb7 bl
           (:section s4) sb3 fl4 sb4 sb4 fl6 sb6 sb6 sb7 bl
           (:section s5) (:newline) sb4 sb5 sb6 sb7 sb8 bl
           (:section s6) sb4 fl5 sb5 sb5 sb7 fl8 sb8 sb8)
   (:text 70 58
     (98 nil "Diatonica.")
     (462 nil "ᴄromatica.")
     (809 nil "ᴅiatonica.")
     (1152 nil "ᴄromatica.")
     (1543 nil "ᴅiatonica.")
     (1869 nil "ᴄromatica."))))
