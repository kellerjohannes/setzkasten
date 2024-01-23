`((:header
   (:filename "b2-c13-m1")
   (:alt-name "m2.016")
   (:comment "q021_s065, rotation: 0, origin: 454")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Esempio della sincopa tutta buona, come in molti modi\\si può usare, a due voci, et a più")
                 (:de "Beispiel der gänzlich guten [sc. konsonanten] Synkope, wie sie auf viele Arten und Weisen\\gebraucht werden kann, für zwei und mehr Stimmen. ")
                 (:en "Example of the wholly good sincopa: how it can\\be used in many ways in two and more voci")))
   (:section-headings
    (s1 (:alt (:it "A due voci")
              (:de "für zwei Stimmen")
              (:en "in two voci")))
    (s2 (:alt (:it "A due voci")
              (:de "für zwei Stimmen")
              (:en "in two voci")))
    (s3 (:alt (:it "A due voci")
              (:de "für zwei Stimmen")
              (:en "in two voci"))))
   (:section-captions
    (s3 (:alt (:it "Non insieme con tutte le parti")
              (:de "nicht mit allen Stimmen zusammen")
              (:en "not with all of the parts together"))))
   (:voice-labels
    (s1 v1 (:alt (:it "Alto")
                 (:de "Alto")
                 (:en "Alto")))
    (s1 v2 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenor")))
    (s2 v1 (:alt (:it "Alto")
                 (:de "Alto")
                 (:en "Alto")))
    (s2 v2 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenor")))
    (s3 v1 (:alt (:it "[Alto]")
                 (:de "[Alto]")
                 (:en "[Alto]")))
    (s3 v2 (:alt (:it "[Tenore]")
                 (:de "[Tenore]")
                 (:en "[Tenor]")))))
  (:preamble-lilypond
   (:clef-overrides
    (s1 v1 "treble_8")
    (s2 v1 "treble_8")
    (s3 v1 "treble_8")
    ))
  (:data
   (:text 110 58
     (87 1979 "Eſſempio della Sincopa tutta buona,come in molti modi ſi può uſare,à due uoci,& à più."))
   (:text 90 58
          (165 nil "à due")
          (532 nil "uoci")
          (945 nil "à due")
          (1356 nil "uoci")
          (1700 nil "à due")
          (2025 nil "uoci"))
   (:music 2205
           (:section s1)
           (:voice v1) cclef5 b38 sb2 sb5 sb3 fl4 sb4 sb2 b38
           (:voice v2) cclef7 mrest1 sb0 sb3 sb1 fl2 b22 sb2 m0 b38
           (:section s2)
           (:voice v1) cclef5 b22 fl4 (:key-signature nil nil nil nil nil nil :flat) mrest5 sb5 sb3 sb6 m8 b38
           (:voice v2) cclef7 fl6 sb3 b22 sb3 sb10 sb6 b38
           (:section s3)
           (:voice v1) (:key-signature nil nil nil nil nil nil nil) cclef5 mrest5 sb6 sb5 sb5 m4 b22
           (:voice v2) cclef7 mrest3 sb1 sb3 sb2 m4 bl)
   (:text 70 58
     (168 nil "Alto")
          (525 nil "Tenore")
          (936 nil "Alto")
          (1336 nil "Tenore")
          (1595 561 "nō inſieme cō tutte le ꝑti"))))
