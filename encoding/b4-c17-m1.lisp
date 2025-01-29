`((:header
   (:filename "b4-c17-m1")
   (:alt-name "m4.015")
   (:comment "q021_s159, rotation: 0.89, origin: 468")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-headings
    (s1 (:alt (:it "Essempio dei termini del Soprano.")
              (:de "Beispiel der Strukturen des Soprano")
              (:en "Example of the limits of the soprano")))
    ;; AS: Sollte auch nicht hier [Example of] vor den untenstehenden Exempeln sein?
    ;;
    ;; OPEN
    (s2 (:alt (:it "[Essempio dei] Termini del Contr'alto.")
              (:de "Strukturen des Alto")
              (:en "Limits of the alto")))
    (s3 (:alt (:it "[Essempio dei] Termini del Tenore.")
              (:de "Strukturen des Tenore")
              (:en "Limits of the tenor")))
    (s4 (:alt (:it "[Essempio dei] Termini del Basso.")
              (:de "Strukturen des Basso")
              (:en "Limits of the bass")))))
  (:preamble-lilypond
   (:clef-overrides
    (s2 v1 "treble_8")))
  (:data
   (:text 90 58
          (178 nil "Eſſempio de i ᴛermini del soprano.")
          (1351 nil "Termini del ᴄontrʼalto ."))
   (:music 2218
           (:voice v1)
           (:section s1) cclef1 b38 b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b38 b38
           (:section s2) cclef5 b38 b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b38)
   (:text 90 58
          (348 nil "Termini del ᴛenore.")
          (1412 nil "Termini del Baſſo."))
   (:music 2209
           (:section s3) (:newline) cclef7 b38 b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b38 b38
           (:section s4) (:f-clef) max7 fclef7 b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b38)))
