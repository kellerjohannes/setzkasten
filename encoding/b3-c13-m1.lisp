`((:header
   (:filename "b3-c13-m1")
   (:alt-name "m3.012")
   (:comment "q021_s092, origin: 1038")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Esempio delle tre quarte diatoniche per ♭ molle,\\composte et incomposte")
                 (:de "")
                 (:en "Example of the three diatonic quarte in ♭ molle,\\composte and incomposte")))
   (:section-headings
    (s1 (:alt (:it "Prima quarta")
              (:de "")
              (:en "First quarta")))
    (s2 (:alt (:it "Seconda quarta")
              (:de "")
              (:en "Second quarta")))
    (s3 (:alt (:it "Terza quarta")
              (:de "")
              (:en "Third quarta"))))
   (:section-captions
    ;; Kommentar Anne: Again, do you really want Composta capitalized?
    ;;
    ;; OPEN
    (s1 (:alt (:it "Composta / incomposta")
              (:de "")
              (:en "composta / incomposta")))
    (s2 (:alt (:it "Composta / incomposta")
              (:de "")
              (:en "composta / incomposta")))
    (s3 (:alt (:it "Composta / incomposta")
              (:de "")
              (:en "composta / incomposta")))))
  (:preamble-lilypond
   (:clef-overrides
    (s1 v1 "treble_8")
    (s2 v1 "treble_8")
    (s3 v1 "treble_8")))
  (:data
   (:text 110 58
          (243 1721 "Eſſempio delle tre quarte Diatoniche,per ♭. molle, compoſte & incomp."))
   (:text 110 58
          (159 nil "Prima")
          (541 nil "quarta")
          (844 nil "Seconda")
          (1245 nil "quarta")
          (1557 nil "Terza")
          (1971 nil "Quarta"))
   (:music 2226
           (:voice v1)
           (:section s1) cclef5 b22 fl4 (:key-signature nil nil nil nil nil nil :flat)
           b38 sb2 b38 sb3 b38 sb4 b38 (:divider :regular) sb5 b38 bl
           b38 sb2 b38 sb5 b38 bl
           (:section s2) b38 sb3 b38 sb4 b38 sb5 b38 (:divider :regular) sb6 b38 bl
           b38 sb3 b38 sb6 b38 bl
           (:section s3) b22 sb4 b22 sb5 b22 sb6 b22 fl7 b22 (:divider :regular) sb7 b22 bl
           b38 sb4 b22 fl7 b22 sb7 b22 bl)
   (:text 70 58
          (155 nil "comp.")
          (555 nil "incomp.")
          (807 nil "comp.")
          (1228 nil "incomp.")
          (1501 nil "comp.")
          (1966 nil "incomp."))))
