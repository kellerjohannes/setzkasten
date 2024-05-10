`((:header
   (:filename "b4-c25-m1")
   (:alt-name "m4.019")
   (:comment "q021_s167, rotation: 1.14, origin: 475")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-captions
    (s1 (:alt (:it "A tre voci")
              (:de "für drei Stimmen")
              (:en "In three voci")))
    (s2 (:alt (:it "A tre voci")
              (:de "für drei Stimmen")
              (:en "In three voci")))
    (s3 (:alt (:it "A tre voci")
              (:de "für drei Stimmen")
              (:en "In three voci"))))
   (:voice-labels
    (s1 v1 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenor")))
    (s1 v2 (:alt (:it "Alto")
                 (:de "Alto")
                 (:en "Alto")))
    (s1 v3 (:alt (:it "[Basso]")
                 (:de "[Basso]")
                 (:en "[Bass]")))

    (s2 v1 (:alt (:it "Alto")
                 (:de "Alto")
                 (:en "Alto")))
    (s2 v2 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenor")))
    (s2 v3 (:alt (:it "[Basso]")
                 (:de "[Basso]")
                 (:en "[Bass]")))

    (s3 v1 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenor")))
    (s3 v2 (:alt (:it "Alto")
                 (:de "Alto")
                 (:en "Alto")))
    (s3 v3 (:alt (:it "[Basso]")
                 (:de "[Basso]")
                 (:en "[Bass]"))))
   (:voice-order
    (s1 v2 v1 v3)
    (s2 v1 v2 v3)
    (s3 v2 v1 v3)))
  (:preamble-lilypond
   (:clef-overrides
    (s1 v2 "treble_8")))
  (:data
   (:text 90 58
          (225 nil "A tre")
          (532 nil "uoci.")
          (1055 nil "A tre")
          (1346 nil "uoci.")
          (1632 nil "A tre")
          (1923 nil "uoci."))
   (:music 2248
           (:section s1)
           (:voice v1) cclef7 b22 mrest7 m7 dot8 cr6 b22 cr5d b22 m6 b22 sb7 b22
           (:voice v2) cclef5 b22 sb3 dot4 sh1 m1 b22 sb2 b22
           (:section s2)
           (:voice v1) cclef5 b22 mrest5 sb8 b22 m7 b22 sb8 b22
           (:voice v2) cclef7 b22 sb5 sb4 sb5 b38
           (:section s3)
           (:voice v1) cclef7 b22 fl6 (:key-signature nil nil nil nil nil nil :flat) b22 sb5 b22 sb6 b22 sb5 b22
           (:voice v2) cclef5 fl4 (:key-signature nil nil nil nil nil nil :flat) sb5 m6 m2 sb5 b22 bl)
   (:text 90 58
          (184 nil "Tenore.")
          (650 nil "Alto.")
          (1039 nil "Alto.")
          (1295 nil "Tenore.")
          (1666 nil "Tenore.")
          (2002 nil "Alto."))
   (:music 2237
           (:section s1)
           (:voice v3) (:f-clef) max7 fclef7 (:key-signature nil nil nil nil nil nil nil) b22 m7 dot8 b22 sm6 b38 sb5 b38 sb4 bl
           b38 b118 b118 b38
           (:section s2) (:f-clef) max7 fclef7 b38 b38 sb7 b38 b38 sb4 b38 b38 sb7 b118
           (:section s3) (:f-clef) max7 fclef7 fl3 (:key-signature nil nil nil nil nil nil :flat) mrest7 b38 sb7 b22 m6 b22 sb7 b22 bl
           b38 b38 b22 b38 b38 b118)))
