`((:header
   (:filename "b4-c24-m1")
   (:alt-name "m4.018")
   ;; JK: Frage an Luigi: ist dies in allen Exemplaren der Fall (Fehler in der Kapitelnummerierung)?
   ;;
   ;; LC: Hier ist auch die Seite falsch foliert. In Exemplaren q010 wurde sie handschriftlich
   ;; korrigiert.
   ;;
   ;; JK: Habe ich in den internen Metadaten (:comment) ergänzt, wird aber nicht öffentlich sichtbar
   ;; sein.
   ;;
   ;; DONE
   (:comment "q021_s167, rotation: 1.14, origin: 514. Kapitel im Original falsch nummeriert: XXIII, korrekt wäre XXIIII. In einigen Exemplaren handschriftlich korrigiert.")
   (:creator "Vicentino21 / Johannes Keller")
   ;; JK: Titel ergänzt, muss übersetzt werden.
   ;;
   ;; TRANSLATION
   ;; OPEN
   (:title (:alt (:it "[Essempi del Modo di comporre à due uoci.]")
                 (:de "")
                 (:en "")))
   ;; JK: Es ist zu diskutieren, ob Sections 1 und 2 als eine zusammengehörende Section
   ;; dargestellt werden soll. In dieser Form ist die Aufteilung in Bezug auf die Überschrift
   ;; nicht schlüssig.
   ;;
   ;; AS: I am now sure, after much discussion with David, that "Decima maggiore all'ottava" is for
   ;; section, "nei Fini" is for section 2, and "et nel basso, ne gl'alti" is for section 3, and
   ;; would be happy to explain to you why.
   ;;
   ;; JK & LC: Finden wir sehr gut, ist genauso übernommen.
   ;;
   ;; DONE
   (:section-headings
    (s1 (:alt (:it "Decima maggiore all'ottaua")
              (:de "")
              (:en "")))
    (s2 (:alt (:it "nei fini")
              (:de "")
              (:en "")))
    (s3 (:alt (:it "& nel Basso, negl'Alti")
              (:de "")
              (:en "")))
    (s4 (:alt (:it "quinta [imperfetta]")
              (:de "")
              (:en "")))
    (s5 (:alt (:it "[quinta] imperfetta")
              (:de "")
              (:en ""))))
   (:section-captions
    (s1 (:alt (:it "Buona")
              (:de "gut")
              (:en "Good")))
    (s2 (:alt (:it "Buona")
              (:de "gut")
              (:en "Good")))
    (s3 (:alt (:it "Buona")
              (:de "gut")
              (:en "Good")))
    (s4 (:alt (:it "Buona")
              (:de "gut")
              (:en "Good")))
    (s5 (:alt (:it "Buona")
              (:de "gut")
              (:en "Good")))))
  (:data
   (:text 90 58
          (181 nil "Buona.")
          (684 nil "Buona.")
          (1181 nil "Buona.")
          (1675 nil "Buona.")
          (2011 nil "ʙuona.")
          )
   (:music 2227
           (:voice v1)
           (:section s1) cclef7 b22 sm9 b22 sm8 b22 sm7 b22 sm6 b22 m5d b22 m5d b38 bl
           (:section s2) b22 mrest5 b22 sb7 b22 m6 b22 sb7 b38 bl
           (:section s3) b22 cclef1 b22 b22 mrest1 b22 b22 sb4 b22 m3 b22 b22 sb4 b22 b38 b38
           (:section s4) (:newline) cclef1 b22 b38 sb5 b38 sb4 b38 sb3 b38 b38 bl
           (:section s5) b22 sb3 b22 sb4 b22 sb3 bl)
   (:text 130 98
          (0 nil "Decima mag.allʼottaua.")
          (666 nil "ne i Fini,& nel ʙaſſo ,")
          (1208 nil "ne glʼ ᴀlti.")
          (1630 nil "quinta")
          ;; der Punkt nach 'imperfetta' liegt markant zu hoch, wurde stillschweigend idealisiert
          ;;
          ;; JK: soll im Bericht erscheinen
          ;;
          ;; OPEN
          (1948 nil "imperfetta."))
   (:music 2245
           (:voice v2)
           (:section s1) (:f-clef) max7 fclef7 b22 sm4 b22 sm5d b22 sm6 b22 sm8 b22 m7 m5d b22 bl
           (:section s2) b22 m6 dot6 sm7 sb5 b22 sb4 b22 bl
           (:section s3) b22 cclef7 b22 sb8 b22 m7 dot8 sm7 b22 m5d b22 fl6 b22 m6 b22
           (:section s4) cclef7 b22 mrest3 b22 m4 b22 m5 b22 m6 b22 sb7 b38 bl
           (:section s5) mrest7 sb7 b22 m6 b22 sb7 bl)))
