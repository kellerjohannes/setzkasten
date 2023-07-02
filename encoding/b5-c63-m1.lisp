`((:header
   (:filename "b5-c63-m1")
   (:alt-name "m5.101")
   (:comment "q021_s290, rotation: -1.2, origin: 1013. Kapitelnummerierung in der Quelle falsch: LIIII, idealisiert: LXIII")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-captions
    (s1 (:alt (:it "Quarta\\naturale")
              (:de "")
              (:en "")))
    (s2 (:alt (:it "Quarta\\accidentale")
              (:de "")
              (:en "")))
    (s3 (:alt (:it "Quarta\\accidentale")
              (:de "")
              (:en "")))
    (s4 (:alt (:it "Quarta\\accidentale")
              (:de "")
              (:en "")))
    (s5 (:alt (:it "Quarta\\accidentale")
              (:de "")
              (:en "")))
    (s6 (:alt (:it "Quarta\\accidentale")
              (:de "")
              (:en "")))
    (s7 (:alt (:it "Quarta\\accidentale")
              (:de "")
              (:en "")))
    (s8 (:alt (:it "Quarta\\accidentale")
              (:de "")
              (:en "")))))
  (:preamble-lilypond
   (:clef-overrides
    (s1 v1 "treble_8")
    (s2 v1 "treble_8")
    (s3 v1 "treble_8")
    (s4 v1 "treble_8")))
  (:data
   (:text 90 58
          (90 nil "4.nat.")
          (297 nil "4.accid.")
          (597 nil "4.accid.")
          (856 nil "4.accid.")
          (1128 nil "4.accid.")
          (1383 nil "4.accid.")
          (1686 nil "4.accid.")
          (1991 nil "4.accid."))
   (:music 2244
           (:voice v1)
           (:section s1) cclef5 b22 sb4 b22 sb7 b22 bl
           (:section s2) b22 sh4 sb4 sh7 sb7 b22 bl
           (:section s3) b22 fl2 sb2 fl5 b22 sb5 b22 bl
           (:section s4) b22 sbd4 b22 sbd7 b22
           (:section s5) (:newline) cclef7 fl6 (:key-signature nil nil nil nil nil nil :flat) b22 nat6 sb6 sb9 bl
           (:section s6) b22 fl2 sbd2 fl5 b22 sbd5 b22 bl
           (:section s7) b22 nat6 sbd6 sbd9 b22
           (:section s8) cclef5 (:key-signature nil nil nil nil nil nil nil) b22 fl6 sbd6 fl9 sbd9 b38 bl)))
