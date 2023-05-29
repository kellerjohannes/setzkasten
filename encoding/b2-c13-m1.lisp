`((:header
   (:filename "b2-c13-m1")
   (:alt-name "m2.016")
   (:comment "q021_s065, rotation: 0, origin: 454")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio della sincopa tutta buona, come in molti modi\\si può usare, a due voci, et a più")
   (:section-headings
    (s1 "A due voci")
    (s2 "A due voci")
    (s3 "A due voci"))
   (:section-captions
    (s3 "Non insieme con tutte le parti"))
   (:voice-labels
    (s1 v1 "Alto")
    (s1 v2 "Tenore")
    (s2 v1 "Alto")
    (s2 v2 "Tenore")
    (s3 v1 "[Alto]")
    (s3 v2 "[Tenore]")))

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
