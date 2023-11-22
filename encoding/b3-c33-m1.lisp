`((:header
   (:filename "b3-c33-m1")
   (:alt-name "m3.071")
   (:comment "q021_s114, rotation: 0, origin: 927")
   (:creator "Vicentino21 / Johannes Keller")
   (:voice-labels
    (s1 v1 (:alt (:it "Cadentia del soprano")
                 (:de "")
                 (:en "")))
    (s2 v1 (:alt (:it "Cadentia dell'alto")
                 (:de "")
                 (:en "")))
    (s3 v1 (:alt (:it "Cadentia dell'alto")
                 (:de "")
                 (:en "")))
    (s4 v1 (:alt (:it "Cadentia del tenore")
                 (:de "")
                 (:en "")))
    (s5 v1 (:alt (:it "Cadentia del soprano")
                 (:de "")
                 (:en "")))
    (s6 v1 (:alt (:it "Cadentia del soprano")
                 (:de "")
                 (:en "")))
    (s7 v1 (:alt (:it "Cadentia del soprano")
                 (:de "")
                 (:en "")))
    (s8 v1 (:alt (:it "Cadentia del soprano")
                 (:de "")
                 (:en "")))
    (s9 v1 (:alt (:it "Cadentia del soprano")
                 (:de "")
                 (:en "")))

    (s1 v2 (:alt (:it "Cadentia dell'alto")
                 (:de "")
                 (:en "")))
    (s2 v2 (:alt (:it "Cadentia del soprano")
                 (:de "")
                 (:en "")))
    (s3 v2 (:alt (:it "Cadentia del tenore")
                 (:de "")
                 (:en "")))
    (s4 v2 (:alt (:it "Cadentia dell'alto")
                 (:de "")
                 (:en "")))
    (s5 v2 (:alt (:it "Cadentia dell'alto")
                 (:de "")
                 (:en "")))
    (s6 v2 (:alt (:it "Cadentia dell'alto")
                 (:de "")
                 (:en "")))
    (s7 v2 (:alt (:it "Cadentia dell'alto")
                 (:de "")
                 (:en "")))
    (s8 v2 (:alt (:it "Cadentia dell'alto")
                 (:de "")
                 (:en "")))
    (s9 v2 (:alt (:it "Cadentia dell'alto")
                 (:de "")
                 (:en "")))

    (s1 v3 (:alt (:it "Cadentia dell tenore")
                 (:de "")
                 (:en "")))
    (s2 v3 (:alt (:it "Cadentia del tenore")
                 (:de "")
                 (:en "")))
    (s3 v3 (:alt (:it "Cadentia del soprano")
                 (:de "")
                 (:en "")))
    (s4 v3 (:alt (:it "Cadentia del basso")
                 (:de "")
                 (:en "")))
    (s5 v3 (:alt (:it "Cadentia del tenore")
                 (:de "")
                 (:en "")))
    (s6 v3 (:alt (:it "Cadentia del tenore")
                 (:de "")
                 (:en "")))
    (s7 v3 (:alt (:it "Cadentia del tenore")
                 (:de "")
                 (:en "")))
    (s8 v3 (:alt (:it "Cadentia del tenore")
                 (:de "")
                 (:en "")))
    (s9 v3 (:alt (:it "Cadentia del tenore")
                 (:de "")
                 (:en "")))
    ;; Hier könnte "Cadentia del basso" für alle übrigen sections ergänzt werden. Zu diskutieren.
    ;;
    ;; OPEN
    (s4 v4 (:alt (:it "Cadentia del soprano")
                 (:de "")
                 (:en "")))))

  (:data
   (:text 90 58
          (0 nil "ᴄad.del ſop.")
          (310 nil "c.đl ᴀl.")
          (510 nil "c.đl ᴀ.")
          (693 nil "c.del ᴛ.")
          (909 nil "c.del sop.")
          (1155 nil "ca.del sop.")
          (1432 nil "c.del sop.")
          (1687 nil "c.del ſop.")
          (1946 nil "ca.del ſop."))
   (:music 2237
           (:voice v1)
           ;; Bibelgruppe: Offene Frage nach Ficta: sh4 vor m4?
           ;; - Argument für F: es ist der einzige und deshalb gewollte Unterschied
           ;;   zum fünften Takt, um keine Redundanz zu erzeugen.
           ;; - Argument für F: es gab kein Platz für das ♯-Symbol in der Zeile
           ;; - Argument für F♯: es geht hier nicht um eine Gegenüberstellung von
           ;;   diatonischem und chromatischem Material, deshalb ist es naheliegend,
           ;;   hier ein fis zu ergänzen
           ;;
           ;; OPEN
           (:section s1) cclef1 mrest5 sb5
           (:alt (:diplomatic)
                 (:critical)
                 (:coord-barre "MZ1 N2")
                 (:coord-norm "G1 St1 N2")
                 ;; JK: Entscheidung oder Kommentar notwendig.
                 ;;
                 ;; OPEN
                 (:comment "Hier kann die Ergänzung eines ♯ diskutiert werden. Argumente für beide Varianten liegen vor.")
                 (:flag :observe) (:id 1))
           m4 sb5 bl
           (:section s2) sb2 b22 sb2 b22 sb2 bl
           (:section s3) (:newline) sb9 sb9 sb7 bl
           (:section s4) sb7 sb6 sb5 bl
           (:section s5) (:newline) mrest5 sb5 sh4 m4 sb5 bl
           (:section s6) mrest5 sb5 sh4 m4 sb5 bl
           (:section s7) (:newline) mrest5 sb5 sh4 m4 sb5 bl
           (:section s8) mrest5 sb5 sh4 m4 sb5 bl
           (:section s9) (:newline) mrest5 sb5 sh4 m4 sb5 bl)
   (:text 110 58
          (49 nil "ca.dellʼᴀl.")
          (315 nil "ca.del sop.")
          (609 nil "c.del ᴛ.")
          (802 nil "c.dellʼᴀl.")
          (1034 nil "c.dellʼᴀl.")
          (1279 nil "c.dellʼᴀl.")
          (1524 nil "c.dellʼᴀl.")
          (1763 nil "c.dellʼᴀ.")
          (2015 nil "c.dellʼᴀl."))
   (:music 2247
           (:voice v2)
           (:section s1) cclef5 sb6 sb6 sb6 bl
           (:section s2) mrest7 sb9 sh8 m8 sb9 bl
           (:section s3) sb4 sb3 sb6 bl
           (:section s4) sb6 sb6 sb4 bl
           (:section s5) sb6 b22 sb6 b22 sb6 bl
           (:section s6) fl7 sb7 sb6 sb4 b38 bl
           (:section s7) b22 sb4 sb6 b22 sb6 b22 bl
           (:section s8) sb6 b22 sb6 b22 sb6 bl
           (:section s9) sb6 b22 sb6 b22 sb6 b38 bl)
   (:text 110 58
          (52 nil "cad.del ᴛe.")
          (352 nil "c.del ᴛ.")
          (593 nil "ca.del sop.")
          (852 nil "c.del ʙaſ.")
          (1106 nil "c.del ᴛe.")
          (1367 nil "cad.del ᴛ.")
          (1631 nil "c.del ᴛ.")
          (1836 nil "c.del ᴛ.")
          (2038 nil "c.del ᴛ."))
   (:music 2236
           (:voice v3)
           (:section s1) cclef7 sb6 sb5 sb4 b22 bl
           (:section s2) sb6 b22 sb5 b22 sb4 bl
           (:section s3) mrest5 sb4 sh3 m3 sb4 bl
           (:section s4) sb4 sb1 sb8 bl
           (:section s5) sb6 sb5 sb4 bl
           (:section s6) m7 dot8 sm6 sb5 sb4 bl
           (:section s7) b22 sb4 sb5 sb6 bl
           (:section s8) b22 sb6 sb5 sb4 b22 bl
           (:section s9) b22 sb6 sb5 sb6 b22 b22 bl)
   (:text 110 58
          (860 nil "cad.del sop."))
   (:music 2242
           (:voice v4)
           (:section s1) (:f-clef) max7 fclef7 sb1 sb5 sb1 bl
           (:section s2) b22 sb1 sb5 sb1 b22 bl
           (:section s3) sb1 sb5 sb1 bl
           (:section s4) mrest7 sb8 sh7 m7 sb8 bl
           (:section s5) sb1 sb5 sb1 bl
           (:section s6) b22 sb4 b22 sb5 sb1 b22 bl
           (:section s7) sb6 b22 sb5 sb1 b22 bl
           (:section s8) sb3 sb5 sb1 b38 bl
           (:section s9) b22 sb8 b22 sb5 b22 sb8 b22 bl)))
