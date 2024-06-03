`((:header
   (:filename "b1-c30-m1")
   (:alt-name "m1.038")
   (:comment "q021_s044, origin: 996")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Essempio de i gradi di Terza maggiore accidentale, incomposti & composti.")
                 (:de "Beispiel der Tonschritte der terza maggiore accidentale, incomposti und composti")
                 (:en "Example of the incomposti and composti steps of the terza maggiore accidentale")))
   (:section-captions
    ;; Kommentar David (via Anne) Since each segment shows only one terza maggiore accidentale, I
    ;; think that all of the captions to the individual segments should be expanded in the feminine
    ;; singular, as "composta" and "incomposta".
    ;;
    ;; JK: Agreed about singular, not agreed about feminine (since we treat these cases as referring
    ;; to 'grado'). I changed everything to singular masculine.
    ;;
    ;; DONE
    (s1 (:alt (:it "composto")
              (:de "composto")
              (:en "composto")))
    (s2 (:alt (:it "incomposto")
              (:de "incomposto")
              (:en "incomposto")))
    (s3 (:alt (:it "incomposto")
              (:de "incomposto")
              (:en "incomposto")))
    (s4 (:alt (:it "composto")
              (:de "composto")
              (:en "composto")))
    (s5 (:alt (:it "composto")
              (:de "composto")
              (:en "composto")))
    (s6 (:alt (:it "incomposto")
              (:de "incomposto")
              (:en "incomposto")))
    (s7 (:alt (:it "composto")
              (:de "composto")
              (:en "composto")))))
  (:data
   (:text 70 58
          (217 1780 "ᴇſſempio de i gradi,di ᴛerza maggiore accidentale,incompoſti & compoﬆi."))
   (:music 2225
           (:voice v1)
           (:section s1)
           cclef7 b22 sb1 b38 sb2 b38 sh3 sb3 bl
           (:section s2)
           sb2 b38 sh4 b38 sb4 bl
           (:section s3)
           sh3 b22 sb3 b22 sh5 b22 sb5 bl
           (:section s4)
           fl4 b22 sb4 b22 sb5 b22 fl6 b22 sb6 bl
           (:section s5)
           sb8 b22 sb7 b22 fl6 b27 sb6 bl
           (:section s6)
           fl5 b38 sb5 b38 sbd2 bl
           (:section s7)
           sh3 b22 sb3 b22 sb2 b22 sb1 bl)
   (:text 70 58
          (84 nil "compo.")
          (393 nil "incomp.")
          (649 nil "incomp.")
          (958 nil "comp.")
          (1318 nil "comp.")
          (1625 nil "incomp.")
          (1899 nil "comp."))))
