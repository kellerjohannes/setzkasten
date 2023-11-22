`((:header
   (:filename "b1-c38-m1")
   (:alt-name "m1.047")
   (:comment "q021_s048, origin: 1066")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Essempio di più di quinta imperfetta accidentale, composto e incomposto")
                 (:de "")
                 ;; (The "composto" and "incomposto" in the overall caption are illogical, but
                 ;; they're what it says in the original…)
                 ;;
                 ;; JK: add »grado o salto«?
                 ;;
                 ;; OPEN
                 (:en "Example of the più di quinta imperfetta accidentale, composto and incomposto ")))
   (:section-captions
    ;; The captions for all of the individual segments should have "in/composta" rather than
    ;; "in/composto".
    ;;
    ;; JK: Not sure: I would treat this as a shorthand for 'grado o salto della più di quinta
    ;; imperfetta accidentale'. We could add 'grado o salto', what do you think?
    ;;
    ;; OPEN
    (s1 (:alt (:it "più di quinta\\imperfetta\\naturale\\composto")
              (:de "")
              (:en "più di quinta\\imperfetta\\naturale\\composto")))
    (s2 (:alt (:it "più di quinta\\imperfetta\\naturale\\incomposto")
              (:de "")
              (:en "più di quinta\\imperfetta\\naturale\\incomposto")))
    (s3 (:alt (:it "più di quinta\\imperfetta\\accidentale\\incomposto")
              (:de "")
              (:en "più di quinta\\imperfetta\\accidentale\\incomposto")))
    (s4 (:alt (:it "più di quinta\\imperfetta\\accidentale\\composto")
              (:de "")
              (:en "più di quinta\\imperfetta\\accidentale\\composto")))
    (s5 (:alt (:it "più di quinta\\imperfetta\\accidentale\\incomposto")
              (:de "")
              (:en "più di quinta\\imperfetta\\accidentale\\incomposto")))
    (s6 (:alt (:it "più di quinta\\imperfetta\\accidentale\\composto")
              (:de "")
              (:en "più di quinta\\imperfetta\\accidentale\\composto")))
    (s7 (:alt (:it "più di quinta\\imperfetta\\accidentale\\incomposto")
              (:de "")
              (:en "più di quinta\\imperfetta\\accidentale\\incomposto")))))
  (:preamble-lilypond
   (:clef-overrides
    (s2 v1 "treble_8")
    (s3 v1 "treble_8")
    (s4 v1 "treble_8")
    (s5 v1 "treble_8")
    (s6 v1 "treble_8")
    (s7 v1 "treble_8")
    (s8 v1 "treble_8")))
  ;; David: b1-c38-m1> Nos. 2–5 should be notated an octave lower with a G2 clef (to be consistent
  ;; with the previous example – and I presume this is how we will transcribe music with an original
  ;; C3 clef throughout the treatise?). This one is not commented in the file, as I didn't know
  ;; where to put the comment.
  ;;
  ;; JK: soll so bleiben, akzeptabel?
  ;;
  ;; OPEN

  (:data
   (:text 90 58
          (213 1734 "ᴇſſempio di più di Ɋuinta imperfetta accidentale,compoſto & incompoﬆo."))
   (:music 2232
           (:voice v1)
           (:section s1)
           (:f-clef) max7 fclef7 sb3 sb4 sb5 sb6 sbd7
           (:section s2)
           cclef5 b38 sb4 b38 sbd8 b38
           (:section s3)
           cclef5 b38 sh1 b38 sb1 b38 sbd5 bl
           (:section s4)
           sh2 sb2 sb3 sb4 sb5 sbd6 bl
           (:section s5)
           sb8 b38 fl4 b38 sbd4 b38 bl
           (:section s6)
           sb7 sb6 sb5 sb4 sbd3 bl
           (:section s7)
           b38 sb6 b38 sbd2 b38 bl)
   (:text 70 58
          (88 nil "più di quinta")
          (420 nil "più di quin.")
          (740 nil "più di quin.")
          (1041 nil "più di quinta")
          (1363 nil "più di quin.")
          (1640 nil "più di quinta")
          (1954 nil "più di quin."))
   (:text 80 58
          (81 nil (:alt (:diplomatic "imper.natur.")
                        (:critical "imper.natur.")
                        (:coord-barre "")
                        (:coord-norm "")
                        (:comment "»natur.« könnte hier und in G2, G6 und G7 in »accid.« korrigiert werden, abhängig davon, ob man den _quarto ordine_ bzw. die Mischung aus _primo_ und _quarto ordine_ als _naturale_ oder _accidentale_ betrachtet. Siehe b5-c43.")
                        (:flag :ready) (:id 1)))
          (425 nil "imper. nat.")
          (720 nil "imp. accid.")
          (1040 nil "imper.accid.")
          (1354 nil "imper.acci.")
          (1634 nil "imper. acci.")
          (1936 nil "impe. accid."))
   (:text 70 58
          (81 nil "comp.")
          (420 nil "incomp.")
          (738 nil "incomp.")
          (1056 nil "comp.")
          (1350 nil "incomp.")
          (1620 nil "comp.")
          (1938 nil "incomp."))))
