`((:header
   (:filename "b2-c25-m1")
   (:alt-name "m2.028")
   (:comment "q021_s077, rotation: 0.80, origin: 460. Kapitel falsch nummeriert in der Quelle.")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-headings
    (s1 (:alt (:it "Primo essempio")
              (:de "erstes Beispiel")
              (:en "First example")))
    (s2 (:alt (:it "Secondo essempio")
              (:de "zweites Beispiel")
              (:en "Second example")))
    (s3 (:alt (:it "Terzo essempio")
              (:de "drittes Beispiel")
              (:en "Third example")))
    (s4 (:alt (:it "Quarto essempio")
              (:de "viertes Beispiel")
              (:en "Fourth example")))
    (s5 (:alt (:it "Quinto essempio")
              (:de "fünftes Beispiel")
              (:en "Fifth example"))))
   (:voice-labels
    (s1 v1 (:alt (:it "Soprano")
                 (:de "Soprano")
                 (:en "Soprano")))
    (s1 v2 (:alt (:it "Alto")
                 (:de "Alto")
                 (:en "Alto")))
    (s1 v3 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenore")))
    (s1 v4 (:alt (:it "Basso")
                 (:de "Basso")
                 (:en "Basso")))))
  (:data
   (:text 90 58
     (53 nil "Primo eſſempio")
     (571 nil "2. eſſem.")
     (996 nil "3. eſſemp.")
     (1484 nil "4.eſſem.")
     (1943 nil "5. eſſempio"))
   (:music 2214
           (:section s1)
           (:voice v1)
           ;; JK: Bibelgruppe: Verdacht auf Schlüsselfehler. Scheint aber korrekt zu sein, deshalb
           ;; soll hier keine Idealisierung stattfinden.
           ;;
           ;; JK: Konsens mit Luigi: soll korrigiert werden, da ein Duodecima erscheinen muss.
           ;;
           ;; DONE
           (:alt (:diplomatic cclef3)
                 (:critical cclef1)
                 (:coord-barre "MZ1 N1")
                 (:coord-norm "G1-5 St1-2")
                 (:comment "In allen Exemplaren wurde dieser Schlüssel als C2 gedruckt. In den Exemplaren q004, q005, q011, q029, q030, q057 wurde er handschriftlich von Lesern zu C1 korrigiert. In Exemplar q034 wurden die ersten zwei Noten der ersten Musikzeile handschriftlich eine Terz nach oben korrigiert und für die letzten zwei Noten der ersten Musikzeile handschriftlich ein C2-Schlüssel ergänzt.")
                 (:flag :ready) (:id 1))
           b38 sb5 b22 bl
           (:voice v2) b22 sb3 b22 bl
           b22 b38 b38 b38 bl
           (:section s2)
           (:voice v1) b22 sb5 b22 bl
           (:voice v2) b22 sb3 b22 bl
           b38 b38 b38 b38 bl
           (:section s3)
           (:voice v1) b22 sb5 b22 bl
           (:voice v2) b22 sb1 b22 bl
           b38 b38 b38 b38 bl
           (:section s4)
           (:voice v1) b22 sb9 b22 bl
           (:voice v2) b22 sb2 b22 bl
           b38 b38 b38 b22 bl
           (:section s5)
           (:voice v1) b22 sb5 b22 bl
           (:voice v2) b22 sb3 b22 bl)
   (:text 90 58
          (51 nil "Sop.")
          (244 nil "Alto")
          (507 nil "Sop.")
          (661 nil "Alto")
          (1002 nil "Sop.")
          (1150 nil "Alto")
          (1466 nil "Sop.")
          (1619 nil "Alto")
          (1925 nil "Sop.")
          (2073 nil "Alto"))
   (:music 2213
           (:section s1)
           (:voice v3) cclef7 b38 sb7 b22 bl
           (:voice v4) b22 sb0 b22 bl
           b22 b38 b38 b38 bl
           (:section s2)
           (:voice v3) b22 sb4 b22 bl
           (:voice v4) b22 sb0 b22 bl
           b38 b38 b38 b38 bl
           (:section s3)
           (:voice v3) b22 sb2 b38 bl
           (:voice v4) b22 sb0 b38 bl
           b38 b38 b38 b38 bl
           (:section s4)
           (:voice v3) b22 sb6 b22 bl
           (:voice v4) b22 sb4 b22 bl
           b38 b38 b38 b22 bl
           (:section s5)
           (:voice v3) b22 sb2 b38 bl
           (:voice v4) b22 sb0 b38 bl)
   (:text 70 58
          (62 nil "Ten.")
          (215 nil "Baſ.")
          (513 nil "Te.")
          (646 nil "Baſ.")
          (985 nil "Te.")
          (1121 nil "Baſ.")
          (1464 nil "Te.")
          (1596 nil "Baſ.")
          (1934 nil "Te.")
          (2065 nil "Baſſo."))))
