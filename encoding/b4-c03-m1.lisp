`((:header
   (:filename "b4-c03-m1")
   (:alt-name "m4.003")
   (:comment "q021_s147, rotation: -1.13, origin: 393. Für dieses Beispiel wird keine normalisierte Version angeboten.")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-headings
    ;; Kommentar Anne: In den ersten drei Beispiele hast die Pausen modernisiert. Ich finde es geht
    ;; hier nicht, weil im Kapitel beschreibt er wie die Striche 3 bis 4 Linien touchieren. Zu dem
    ;; sind sie keine Pausen in dem Stück, sie geben nur den Modus an und die Form ist wichtig für
    ;; die Verständnis des Modus.
    ;;
    ;; JK an Anne: du hast hier möglicherweise die moderne Edition angeschaut, die soll aber
    ;; eigentlich gar nicht existieren. Ich habe sie jetzt aus der Pipeline genommen, weil sie
    ;; automatisch trotzdem produziert wurde. Wichtig ist hier nur, dass das Fake-Simile stimmt, und
    ;; das scheint mir der Fall zu sein. Einverstanden?
    ;;
    ;; DONE
    (s1 (:alt (:it "Esempio del modo\\maggiore perfetto")
              (:de "Beispiel des Modus\\maior perfectus")
              (:en "Example of the major\\perfect modus")))
    (s2 (:alt (:it "Del modo maggiore\\imperfetto")
              (:de "[Beispiel] des Modus maior\\imperfectus")
              (:en "[Example] of the major\\imperfect modus")))
    (s3 (:alt (:it "Del minor\\perfetto")
              (:de "[Beispiel] des [Modus] minor\\perfectus")
              (:en "[Example] of the minor\\perfect [modus]")))
    (s4 (:alt (:it "Del minor\\imperfetto")
              (:de "[Beispiel] des [Modus] minor\\imperfectus")
              (:en "[Example] of the minor\\imperfect [modus]")))))
  (:data
   (:text 90 58
          (90 912 "Eſſempio del modo maggiore perfetto,")
          (1304 729 "ᴅel modo maggiore imperfetto,"))
   (:music 2206
           (:voice v1)
           (:section s1) cclef7 b38 b38 maxrest246 maxrest246 maxrest246 b22 max6 b38 longa5 b22 b22 longa5 b38 b22 longa5 b38 b38 b118 bl
           (:section s2) b38 b245 cclef7 b38 maxrest246 b22 maxrest246 b38 lrest24 b22 lrest24 b22 max6 b38 b38 longa4 b38 b22 longa4 b22 b22 bl b125)
   (:text 90 58
          (87 467 "ᴅel minor perfetto,")
          (1276 516 "Del minor imperfetto."))
   (:music 2209
           (:section s3) cclef7 b38 maxrest246 b38 longa8 b38 b38 br8 b38 br8 b22 b38 b38 b38 br8 b22 b118 bl
           (:section s4) b118 b118 b22 b38 b118 cclef7 b38 lrest46 b38 longa7 b38 br5 b38 br5 b38 bl
           b38 b38 b22 b118 b118 b118)))
