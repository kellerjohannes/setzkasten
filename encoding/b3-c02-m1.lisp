`((:header
   (:filename "b3-c02-m1")
   (:alt-name "m3.001")
   (:comment "q021_s086, rotation: 1.25, origin: 1025")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Esempio delle tre quarte diatoniche, composte et incomposte")
                 (:de "Beispiel der drei diatonischen quarte, composte und incomposte.")
                 (:en "Example of the three diatonic quarte, composte and incomposte")))
   (:section-headings
    (s1 (:alt (:it "Prima quarta")
              (:de "erste quarta")
              (:en "First quarta")))
    (s2 (:alt (:it "Seconda quarta")
              (:de "zweite quarta")
              (:en "Second quarta")))
    (s3 (:alt (:it "Terza quarta")
              (:de "dritte quarta")
              (:en "Third quarta"))))
   (:section-captions
    (s1 (:alt (:it "composta / incomposta")
              ;; Kommentar Anne: Willst du wirklich composta gross schreiben bei den section
              ;; captions?
              ;;
              ;; JK: Nein, das war einmal ein Wunsch von Luigi, ist aber aus meiner Sicht
              ;; neu zu diskutieren (ich meine, die Gross-/Kleinschreibung insgesamt).
              ;;
              ;; DONE
              (:de "composta / incomposta")
              (:en "composta / incomposta")))
    (s2 (:alt (:it "composta / incomposta")
              (:de "composta / incomposta")
              (:en "composta / incomposta")))
    (s3 (:alt (:it "composta / incomposta")
              (:de "composta / incomposta")
              (:en "composta / incomposta")))))
  (:data
   (:text 130 58
          (335 1555 "Eſſempio delle tre Quarte Diatoniche, composte & incomposte."))
   (:text 110 58
          (165 nil "Prima")
          (558 nil "Quarta")
          (919 nil "Seconda")
          (1264 nil "Ɋuarta")
          (1606 nil "Terza")
          (1972 nil "Quarta"))
   (:music 2220
           (:voice v1)
           (:section s1) (:f-clef) max7 fclef7 b38
           sb2 b38 sb3 b38 sb4 b38 (:divider :regular) sb5 b38 bl b38 b38 sb2 b38 sb5 b38 bl
           (:section s2) b38 sb3 b38 sb4 b38 sb5 b38 (:divider :regular) sb6 bl b38 sb3 b38 sb6 b38 b38 bl
           (:section s3) b38 sb4 b38 sb5 b38 sb6 b38 (:divider :regular) sb7 b38 bl b38 sb4 b38 sb7 b38 bl)
   (:text 70 58
          (246 nil "comp.")
          (560 nil "incomp.")
          (835 nil "comp.")
          (1246 nil "incomp.")
          (1564 nil "comp.")
          (1984 nil "incomp."))))
