`((:header
   (:filename "b1-c39-m2")
   (:alt-name "m1.049")
   (:comment "q021_s049, origin: 406")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Essempio de i gradi delle Quinte naturali.")
                 (:de "Beispiel der Tonschritte der quinte naturali.")
                 (:en "Example of the steps of the quinte naturali")))
   (:section-captions
    ;; JK: ich schlage vor, auch hier die Ziffern auszuschreiben, also statt "ordine 1 de gradi"
    ;; "primo ordine de gradi" zu schreiben. Ich habe Italienisch und Englisch angepasst, Deutsch
    ;; hat Martin noch nicht eingefügt. Das ist von Luigi und Anne zu bestätigen.
    ;;
    ;; LC: gut so, aber als 'ordine primo' etc. (nicht 'primo ordine')
    ;;
    ;; DONE
    (s1 (:alt (:it "ordine primo de gradi\\della prima quinta\\composta")
              (:de "erste Reihenfolge der Tonschritte\\der ersten quinta\\composta")
              (:en "first order of the steps\\of the first quinta\\composta")))
    (s2 (:alt (:it "ordine secondo de gradi\\della seconda quinta\\composta")
              (:de "zweite Reihenfolge der Tonschritte\\der zweiten quinta\\composta")
              (:en "second order of the steps\\of the second quinta\\composta")))
    (s3 (:alt (:it "ordine terzo de gradi\\della terza quinta\\composta")
              (:de "dritte Reihenfolge der Tonschritte\\der dritten quinta\\composta")
              (:en "third order of the steps\\of the third quinta\\composta")))
    (s4 (:alt (:it "ordine quarto de gradi\\della quarta quinta\\composta")
              (:de "vierte Reihenfolge der Tonschritte\\der vierten quinta\\composta")
              (:en "fourth order of the steps\\of the fourth quinta\\composta")))))
  (:data
   (:text 90 58
          (595 984 "ᴇſſempio de i gradi delle Ɋuinte naturali."))
   (:music 2210
           (:voice v1)
           (:section s1)
           cclef7 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 bl
           (:section s2)
           b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 bl
           (:section s3)
           b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 bl
           (:section s4)
           b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 bl b38 b38)
   (:text 70 58
          (97 nil "ordine 1. de gradi")
          (582 nil "ordine 2. de gradi")
          (1097 nil "ordine 3. de gradi")
          (1602 nil "ordine 4. de gradi"))
   (:text 70 58
          (91 nil "della prima quinta")
          (575 nil "della ſeconda quinta")
          (1100 nil "della terza quinta")
          (1604 nil "della quarta quinta"))
   (:text 70 58
          (95 nil "compoſta")
          (580 nil "compoſta")
          (1097 nil
                (:alt (:diplomatic "compoſto")
                      (:critical "compoſta")
                      (:coord-barre "TZ4 TE4")
                      (:coord-norm "G4 US")
                      (:comment "In allen Exemplaren: »compoſto«.")
                      (:flag :ready) (:id 1)))
          (1605 nil "compoſta"))))
