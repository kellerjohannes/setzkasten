`((:header
   (:filename "b1-c13-m1")
   (:alt-name "m1.022")
   (:comment "q021_s034, origin: 1046")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-captions
    (s1 (:alt (:it "per tutta")
              (:de "für die ganze [sc. Note]")
              (:en "for the whole")))
    (s2 (:alt (:it "per la parte\\dinanzi")
              ;; Kommentar Anne: auch hier ist eine Resolution nicht eine Wiedergabe des
              ;; Originals. Ich glaube, beide sollten vorhanden sein.
              ;;
              ;; JK: Siehe Antwort in b1-c12-m1
              ;;
              ;; DONE
              (:de "für den vorderen\\Teil")
              (:en "for the first\\half")))
    (s3 (:alt (:it "per la parte\\doppo")
              (:de "für den hinteren\\Teil")
              (:en "for the second\\half")))
    (s4 (:alt (:it "per tutta")
              (:de "für die ganze [Note]")
              (:en "for the whole")))
    (s5 (:alt (:it "per la parte\\dinanzi")
              (:de "für den vorderen\\Teil")
              (:en "for the first\\half")))
    (s6 (:alt (:it "per la parte\\doppo")
              (:de "für den hinteren\\Teil")
              (:en "for the second\\half")))
    (s7 (:alt (:it "per la metà\\doppo")
              (:de "für die hintere\\Hälfte")
              (:en "for the second\\half")))
    (s8 (:alt (:it "per tutta")
              (:de "für die ganze [sc. Note]")
              (:en "for the whole")))
    (s9 (:alt (:it "per la metà dinanzi")
              (:de "für die vorder Hälfte")
              (:en "for the first half")))
    (s10 (:alt (:it "la prima metà\\enarmonico e la\\seconda cromatico")
               (:de "")
               (:en "the first half\\enharmonic\\and the\\ second chromatic")))
    (s11 (:alt (:it "la prima metà\\enarmonico e la\\metà seconda è\\cromatico e\\enarmonico")
               (:de "")
               (:en "the first half\\enharmonic\\and the second\\chromatic\\and enharmonic")))
    (s12 (:alt (:it "per tutta")
               (:de "")
               (:en "for the whole")))
    (s13 (:alt (:it "per la metà\\dinanzi")
               (:de "")
               (:en "for the first\\half")))
    (s14 (:alt (:it "per la metà\\doppo")
               (:de "")
               (:en "for the second\\half")))))
  (:data
   (:music 2218
           (:voice v1)
           (:section s1)
           cclef7 b22 brd4 b22 b38 bl
           (:section s2)
           b27 b27 b27 (:ligature-start nil nil :dot nil) brdl5 (:ligature-end) b27 b27 b27 bl
           (:section s3)
           b27 b27 b27 (:ligature-start nil nil nil :dot) brdr5 (:ligature-end) b22 b22 b22 bl
           (:section s4)
           b27 b27 b27 sbd5 b22 bl
           (:section s5)
           b27 b27 b27 (:ligature-start nil nil :dot nil) sbdl7 (:ligature-end) b22 b22 b22 bl
           (:section s6)
           b22 b22 (:ligature-start nil nil nil :dot) sbdr4 (:ligature-end) b22 b22 b22 bl
           (:section s7)
           cclef7 b22 fl6 (:key-signature nil nil nil nil nil nil :flat)
           b22
           (:alt (:diplomatic br5 b22 flrev4)
                 (:critical (:ligature-start nil :flat :dot :dot) brd5 b22 flrev4 (:ligature-end))
                 (:coord-barre "MZ1 N7")
                 (:coord-norm "G7")
                 (:comment "Original: A/A♭. Der enharmonische Punkt wurde für den gesamten Notenwert ergänzt. Ohne Punkt wäre diese Situation als chromatische Ligatur einzuordnen, was in b1-c12-m1 bereits gezeigt wurde.")
                 (:flag :ready) (:id 1))
           bl
           (:section s8)
           b22 fl4 b22 brd4 b22 bl
           (:section s9)
           (:newline)
           b38 b22 (:ligature-start :flat nil :dot :dot) fl3 b22 brd4 (:ligature-end) b38 bl)
   (:text 70 58
          (43 nil "ꝑ tutta")
          (218 nil "ꝑ la parte")
          (454 nil "ꝑ la parte")
          (691 nil "per tutta")
          (911 nil "ꝑ la parte")
          (1154 nil "ꝑ la parte")
          (1384 nil "per la metà")
          (1677 nil "ꝑ tutta")
          (1907 nil "per la metà"))
   (:text 90 58
          (234 nil "dinanzi")
          (455 nil "doppo")
          (910 nil "dinanzi")
          (1155 nil "doppò")
          (1391 nil "doppò")
          (1909 nil "dinanzi"))
   (:music 2200
           (:section s10)
           (:key-signature nil nil nil nil nil nil nil)
           cclef7 b27 b27 b27 (:ligature-start nil :flat :dot nil) brdl5 b22 flrev4 (:ligature-end)
           b27 b27 b27 bl
           (:section s11)
           b27 b27 b27 (:ligature-start nil :flat :dot :dot) sbd5 b22 flrev4 (:ligature-end) b22 b27 b27 bl
           (:section s12)
           b27 b27 b27 b27 md4 b22 b22 b27 bl
           (:section s13)
           b27 b27 b27 (:ligature-start nil nil :dot nil) mdl4 (:ligature-end) b27 b27 b27 b27 bl
           (:section s14)
           b27 b27 b27 b27 (:ligature-start nil nil nil :dot) smdr3 (:ligature-end) b27 b27 b27 bl b677)
   (:text 70 58
          (68 nil "la prima me")
          (362 nil "& la metà ſe")
          (682 nil "per tutta")
          (955 nil "ꝑ la metà")
          (1229 nil "ꝑ la metà"))
   (:text 70 58
          (66 nil "tà ᴇ.et la ſe")
          (362 nil "conda è ᴄ.ᴇ.")
          (957 nil "dinanzi")
          (1227 nil "doppò"))
   (:text 70 58
          (70 nil "conda C."))))
