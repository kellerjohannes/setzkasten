`((:header
   (:filename "b5-c64-m4")
   (:alt-name "m5.105")
   (:comment "q021_s291, rotation: -0.7, origin: 518")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio delli salti dell'ottave, ch'occorreno nelle compositioni\\sopra il nostro stromento.")
   (:section-captions
    (s1 "Naturale")
    (s2 "Accidentale")
    (s3 "Accidentale")
    (s4 "Accidentale\\et naturale")
    (s5 "Accidentale\\et naturale")
    (s6 "Accidentale")))

  (:data
   (:text 70 58
          (105 2047 "Eſſempio delli salti dellʼottaue,chʼoccorreno nelle compoſitioni sopra il noſtro ſtromento."))
   (:text 100 58
          (130 nil "nat.")
          (391 nil "acc.")
          (744 nil "acc.")
          (1124 nil "acc. & nat.")
          (1624 nil "acc. et nat.")
          (2007 nil "acc."))
   (:music 2340
           (:voice v1)
           (:section s1) cclef7 b38 sb1 b38 sb8 b38 bl
           (:section s2) b38 fl1 b38 sb1 b38 fl8 b38 sb8 bl
           (:section s3) b38 sh1 b22 sb1 b22 sh8 b38 sb8 b38
           (:section s4) (:newline) cclef3 b38 fl29 (:key-signature nil nil nil nil nil nil :flat) b38 nat2 b38 sb2 b38 nat9 b38 sb9 b38 bl
           (:section s5) b38 sbd2 b38 b22 sbd9 b38 b22 bl
           ;; eindeutiger Druckfehler, zu korrigieren
           (:section s6) b38 fl1 b38 sbd1 b38 fl9 b38 sbd9 b22 bl)))
