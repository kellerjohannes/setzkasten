`((:header
   (:filename "b1-c37-m2")
   (:alt-name "m1.046")
   (:comment "q021_s047, origin: 372")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Essempio de gradi di alcune Quinte imperfette, naturali & accidentali.")
                 (:de "Beispiel der Tonschritte von einigen quinte imperfette naturali und accidentali.")
                 (:en "Example of the steps of some quinte imperfette, naturali and accidentali")))
   (:section-captions
    (s1 (:alt (:it "gradi di quinta\\imperfetta composta\\naturale")
              (:de "Tonschritte der quinta\\imperfetta composta\\naturale")
              (:en "steps of quinta\\imperfetta composta\\naturale")))
    (s2 (:alt (:it "gradi di quinta\\imperfetta composta\\naturale")
              (:de "Tonschritte der quinta\\imperfetta composta\\naturale")
              (:en "steps of quinta\\imperfetta composta\\naturale")))
    (s3 (:alt (:it "gradi di quinta\\imperfetta composta\\accidentale")
              (:de "Tonschritte der quinta\\imperfetta composta\\accidentale")
              (:en "steps of quinta\\imperfetta composta\\accidentale")))
    (s4 (:alt (:it "gradi di quinta\\imperfetta composta\\accidentale")
              (:de "Tonschritte der quinta\\imperfetta composta\\accidentale")
              (:en "steps of quinta\\imperfetta composta\\accidentale")))
    (s5 (:alt (:it "gradi di quinta\\imperfetta composta\\accidentale")
              (:de "Tonschritte der quinta\\imperfetta composta\\accidentale")
              (:en "steps of quinta\\imperfetta composta\\accidentale")))))
  (:preamble-lilypond
   (:clef-overrides
    (s2 v1 "treble_8")
    (s3 v1 "treble_8")
    (s4 v1 "treble_8")
    (s5 v1 "treble_8")))
  ;; David: b1-c37-m2> Nos. 2–5 should be notated an octave lower with a G2 clef (to be consistent
  ;; with the previous example – and I presume this is how we will transcribe music with an original
  ;; C3 clef throughout the treatise?). This one is not commented in the file, as I didn't know
  ;; where to put the comment.
  ;;
  ;; JK: soll so bleiben, akzeptabel?
  ;;
  ;; JK: Update zu diesem Thema: das Problem der Zuordnung der Schlüsselung (welche moderne Schlüssel werden für welche originale Schlüssel gesetzt?) habe ich nun in den Editionsrichtlinien der Musikbeispiele ausführlich kommentiert. Das erachte ich als genügend, weshalb ich diese Diskussion schliesse.
  ;;
  ;; DONE
  (:data
   (:text 90 58
          (254 1691 "ᴇſſempio de gradi di alcune Ɋuinte imperfette,naturali & accidentali."))
   (:music 2202
           (:voice v1)
           (:section s1)
           (:f-clef) max7 fclef7 b38 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb7 b38
           (:section s2)
           cclef5 b38 sb4 sb5 sb6 sb7 sb8 b38
           (:section s3)
           cclef5 b38 fl4 b38 sb4 sb5 sb6 sbd7 bl
           (:section s4)
           sb2 sb3 fl4 b38 sb4 sb5 b38 fl6 b22 sb6 bl
           (:section s5)
           sb5 sb4 sb3 b22 sb2 sh1 b22 sb1 bl)
   (:text 70 58
          (113 nil "gradi di quinta")
          (591 nil "gradi di quinta")
          (984 nil "gradi di quin.")
          (1338 nil "gradi di quinta")
          (1804 nil "gradi di quinta"))
   (:text 70 58
          (127 nil "imp.compoſta")
          (597 nil "imper. compo.")
          (993 nil "imp.compoſta")
          (1347 nil "imp.compoſta")
          (1802 nil "imp.compoſta"))
   (:text 70 58
          (120 nil "naturale")
          (611 nil "naturale")
          (993 nil "accidentale")
          (1345 nil "accidentale")
          (1822 nil "accidentale"))))
