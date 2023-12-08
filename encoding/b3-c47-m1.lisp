`((:header
   (:filename "b3-c47-m1")
   (:alt-name "m3.101")
   (:comment "q021_s127, rotation: 0.89, origin: 498 (first page); origin: 914 (second page)")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-captions
    (s1 (:alt (:it "Prima ottava enarmonica")
              (:de "")
              (:en "First enharmonic ottava")))
    (s2 (:alt (:it "Seconda ottava enarmonica")
              (:de "")
              (:en "Second enharmonic ottava")))
    (s3 (:alt (:it "Terza ottava enarmonica")
              (:de "")
              (:en "Third enharmonic ottava")))
    (s4 (:alt (:it "Quarta ottava enarmonica")
              (:de "")
              (:en "Fourth enharmonic ottava")))
    (s5 (:alt (:it "Quinta ottava enarmonica")
              (:de "")
              (:en "Fifth enharmonic ottava")))
    (s6 (:alt (:it "Sesta ottava enarmonica")
              (:de "")
              (:en "Sixth enharmonic ottava")))
    (s7 (:alt (:it "Settima ottava enarmonica")
              (:de "")
              (:en "Seventh enharmonic ottava")))))
  (:preamble-lilypond
   (:clef-overrides
    (s5 v1 "treble_8")
    (s6 v1 "treble_8")
    (s7 v1 "treble_8")))
  (:data
   (:text 110 58
     (331 nil "prima ottaua Enarmonica")
     (1422 nil "ſeconda ottaua ᴇnarmonica"))
   (:music 2202
           (:voice v1)
           (:section s1) (:f-clef) max7 fclef7 sb2 b22 sbd2 fl5 b22 sb5 sb5 b22 sbd5
           (:alt (:diplomatic fl6)
                 (:critical fl8)
                 (:coord-barre "MZ1 N6")
                 (:coord-norm "G1 N6")
                 (:comment "Original: Das ♭ steht zwei Positionen tiefer.")
                 (:flag :ready) (:id 1))
           sb8 b22 fl8 b22 sbd8 b38 sb8 b22 sbd8 fl9 b22 sb9 fl9 b22 sbd9 b22 sb9 bl
           (:section s2) sb3 sh5 b22 sb5 fl6 b22 sbd6 b22 sb6 sh8 b22 sb8 fl9 b22 sbd9 sb9 sbd9 fl10 sb10 fl10 sbd10 b22 sb10 bl)
   (:text 90 58
     (256 nil "terza ottaua Enarmonica")
     (1241 nil "quarta ottaua Enarmonica"))
   (:music 2207
           (:section s3) (:newline) cclef7 b22 sb0 b22 sbd0 fl1 b22 sb1 sb3 b22 sbd3 fl4 b22 sb4 b22 fl4 b22 sbd4 b22 sb4 b22 sbd4 fl5 b22 sb5 b22 sb7 bl
           (:section s4) sb1 b22 sbd1 fl4 b22 sb4 b22 fl4 b22 sbd4 b22 sb4 b22 sbd4 b22 sbd6 b22 sb7 b22 sbd7 fl8 b22 sb8 b38 fl8 b22 sbd8 b38 sb8 bl)
   (:text 90 58
     (250 nil "quinta ottaua Enarmonica")
     (1293 nil "ſeſta ottaua Enarmonica"))
   (:music 2225
           (:section s5) (:newline) cclef5 sb0 sh2 b22 b22 sb2 fl3 sbd3 sb3 b22 sbd3 fl6 b22 sb6 b22 fl6 sbd6 sb6 sbd6 fl7 b22 sb7 b22 fl7 sbd7 sb7 bl
           (:section s6) sb1 b22 sbd1 fl2 b22 sb2 fl2 b22 sbd2 fl4 b22 sbd4 b22 sb4 b22 sbd4 fl7 b22 sb7 b22 fl7 b22 sbd7 b22 sb7 b38 sbd7 sb8 bl)
   (:text 90 58
     (327 nil "ſettima ottaua Enarmonica"))
   (:music 2214
           ;; Bibelgruppe:
           ;; - Generell ist die Konsequenz zu überprüfen, mit der die bereits
           ;;   eingeführten "quarte" und "quinte" in die "ottave" integriert
           ;;   werden. Inkonsequenzen sind kein Problem, denn hier handelt es sich
           ;;   um ein 'Konstruktionsprinzip' (von Vicentino "via" genannt), und
           ;;   nicht um ein System zur Legitimierung oder Analyse von
           ;;   Musik. Prinzipiell geht es nur um die Qualitäten der beteiligten
           ;;   Schritte von "corto" und "lungo", die genaue Verteilung der "corto
           ;;   del corto" und "lungo del corto" bleibt laut Vicentino dem
           ;;   Komponisten überlassen, ist also strukturell irrelevant. Es ist nur
           ;;   zu beachten, dass die Summe aller "gradi" stets zu einer Oktave
           ;;   führen.
           ;; - Die "sesta ottava enarmonica" ist jedoch auch vor diesem Hintergrund
           ;;   fragwürdig, denn sie hat keinen Ton an der Position der Quarte oder
           ;;   der Quinte. D.h. das Konstruktionsprinzip der Kombination von
           ;;   "quarte" und "quinte" lässt sich hier nicht nachvollziehen.
           ;;
           ;; Eine Idealisierung würde hier eine komplette Neustrukturierung bedeuten, was
           ;; der Absicht der Edition widerspricht. Ev. müsste dies separat kommentiert werden
           ;; und eine neu strukturierte 'settima ottava' vorgeschlagen werden.
           ;;
           ;; OPEN
           (:section s7) (:newline)
           (:alt (:diplomatic  )
                 (:critical  )
                 (:coord-barre "MZ4")
                 (:coord-norm "G7")
                 (:comment "Die _settima ottava enarmonica_ hat eine fragwürdige Struktur, da es keine Note auf der Tonhöhe der Quarte und Quinte gibt, d.h. die Zusammensetzung aus einer _quarta enarmonica_ und einer _quinta enarmonica_ lässt sich hier nicht nachvollziehen. Eine Korrektur würde starke Eingriffe erfordern.")
                 (:flag :ready) (:id 2))
           cclef5 b38 sb2 b38 sbd2 b38 fl3 b38 b22 sb3 b38 sb5 b38 sbd5 b38 fl6 b38 sb6 b38 sb8 b38 sbd8 b38 fl9 b38 b38 sb9 b38 fl9 b38 sbd9 b38 sb9 b22 b22 bl
           b118 b118 b118 b118 b118 b118)))
