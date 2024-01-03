`((:header
   (:filename "b2-c21-m1")
   (:alt-name "m2.024")
   (:comment "q021_s072, rotation: 0, origin: 1076")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Esempio delle seste simili")
                 (:de "")
                 (:en "Example of similar seste")))
   (:section-headings
    (s1 (:alt (:it "A due voci")
              (:de "")
              (:en "in two voci")))
    (s2 (:alt (:it "A due voci")
              (:de "")
              (:en "in two voci")))
    (s3 (:alt (:it "A due voci")
              (:de "")
              (:en "in two voci")))
    (s4 (:alt (:it "A due voci")
              (:de "")
              (:en "in two voci"))))
   (:section-captions
    (s1 (:alt (:it "Simili\\maggiori")
              (:de "")
              (:en "similar\\maggiori")))
    (s2 (:alt (:it "Simili\\minori")
              (:de "")
              (:en "similar\\minori")))
    (s3 (:alt (:it "Differenti\\ ")
              (:de "")
              (:en "different\\ ")))
    ;; Kommentar Anne: if there is no noun afterwards, the backslashes are also not
    ;; necessary, also in the Italian
    ;; JK: Doch, aber nur weil mein System stur ist und eine leere Zeile benötigt, um die vertikalen
    ;; Abstände korrekt zu berechnen.
    ;;
    ;; DONE
    (s4 (:alt (:it "Simili\\maggiori")
              (:de "")
              (:en "similar\\maggiori")))))
  (:data
   (:text 110 58
          (756 631 "Eſſempio delle seſte ſimili."))
   (:text 90 58
          (171 nil "à")
          (245 nil "due")
          (388 nil "uoci")
          (606 nil "à")
          (675 nil "due")
          (808 nil "uoci")
          (1152 nil "à")
          (1225 nil "due")
          (1356 nil "uoci")
          (1620 nil "à")
          (1734 nil "due")
          (1913 nil "uoci"))
   (:music 2218
           (:section s1)
           (:voice v1) cclef7 b38 sb5 b38 sb6 b22 bl
           (:voice v2) b22 sb0 b38 sb1 b38 bl
           (:section s2)
           (:voice v1) b38 sb7 b22 fl6 b22 sb6 b22 bl
           (:voice v2) b22 sb2 b38 sb1 b22 bl
           (:section s3)
           (:voice v1) b22 sb6 b38 sb7 b38 sb8 bl
           (:voice v2) sb1 b22 sb2 b22 sb3 b22 bl
           (:section s4)
           (:voice v1) sb8 b22 sh7 b22 sb7 b22 sb6 b22 bl
           (:voice v2) b22 sb3 b22 sb2 b22 sb1 b22 bl)
   (:text 70 58
          (138 nil "ſimili magg.")
          (593 nil "ſimili mino.")
          (1041 nil "differenti")
          (1675 nil "ſimili magg."))))
