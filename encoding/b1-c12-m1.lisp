`((:header
   (:filename "b1-c12-m1")
   (:alt-name "m1.021")
   (:comment "q021_s033, origin: 409")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-captions
    (s1 (:alt (:it "per tutta")
              (:de "")
              (:en "for the whole")))
    (s2 (:alt (:it "per la metà\\dinanzi")
              ;; AS:
              ;; Für alle Ligaturen ist die Resolution gezeigt und nicht wie es angezeigt ist.
              ;; Ist das wirklich sinnvoll? Musste nicht entweder das Original stehen oder bedeides?
              ;; Es macht auf eine Art keinen Sinn nur die Auflösung zu zeigen.
              ;; JK:
              ;; Ja, ich finde das sinnvoll, weil hier ja das Phänomen der Ligaturen in heutiger
              ;; Notenschrift gezeigt werden soll. So erscheinen sie dann auch in den Übertragungen
              ;; (siehe «Madonna il poco dolce»). Für die originale Gestalt gibt es ja das Fake-
              ;; Simile, auf das man mit einem Klick umschalten kann. Ich würde das so lassen.
              ;; DONE
              (:de "")
              (:en "for the half\\in front")))
    (s3 (:alt (:it "per la metà\\doppo")
              (:de "")
              (:en "for the half\\in back ")))
    (s4 (:alt (:it "per tutta")
              (:de "")
              (:en "for the whole")))
    (s5 (:alt (:it "per la metà\\dinanzi")
              (:de "")
              (:en "for the half\\in front")))
    (s6 (:alt (:it "per la metà\\doppo")
              (:de "")
              (:en "for the half\\in back")))
    (s7 (:alt (:it "per tutta")
              (:de "")
              (:en "for the whole")))
    (s8 (:alt (:it "per la metà\\dinanzi")
              (:de "")
              (:en "for the half\\in front")))
    (s9 (:alt (:it "per la metà\\doppo")
              (:de "")
              (:en "for the half\\in back")))))
  (:data
   (:music 2168
           (:voice v1)
           (:section s1)
           cclef7 sh6 max6 bl
           (:section s2)
           b22 (:ligature-start :sharp nil nil nil) sh3 longa5 (:ligature-end) b38 b38 bl
           (:section s3)
           b38 b22 (:ligature-start nil :sharp nil nil) br4 sh2 (:ligature-end) b22 bl
           (:section s4)
           b22 fl6 b22 br6 b22 bl
           (:section s5)
           b38 b22 (:ligature-start :flat nil nil nil) fl4 br6 (:ligature-end) b38 bl
           (:section s6)
           b38 (:ligature-start nil :flat nil nil) br5 flrev4 (:ligature-end) b38 b38 bl
           (:section s7)
           b38 cclef7 fl6 (:key-signature nil nil nil nil nil nil :flat) b22 nat6 br6 b22 bl
           (:section s8)
           b38 (:ligature-start :natural :flat nil nil) nat4 br6 (:ligature-end) b38 bl
           (:section s9)
           b38 (:ligature-start :flat :natural nil nil) br6 nat4 (:ligature-end) b22 b38 bl)
   (:text 70 58
     (38 nil "per tutta")
     (263 nil "ꝑ la metà")
     (496 nil "ꝑ la metà")
     (734 nil "ꝑ tutta")
     (913 nil "ꝑ la metà")
     (1155 nil "ꝑ la metà")
     (1484 nil "per tutta")
     (1729 nil "ꝑ la metà")
     (1968 222 "ꝑ la metà"))
   (:text 70 58
     (271 nil "dinanzi")
     (532 nil "doppò")
     (941 nil "dinanzi")
     (1173 nil "doppò")
     (1735 nil "dinanzi")
     (1977 nil "doppò"))))
