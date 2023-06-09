`((:header
   (:filename "b1-c10-m2")
   (:alt-name "m1.017")
   (:comment "")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-headings
    (s1 ""))
   (:section-captions
    (s1 "spetie cromatica\\semitono cromatico")
    (s2 "spetie cromatica\\tono cromatico")
    (s3 "spetie cromatica\\semitono cromatico")
    (s4 "spetie cromatica\\semitono cromatico")
    (s5 "spetie cromatica\\semitono cromatico")
    (s6 "spetie cromatica\\tono cromatico")
    (s7 "spetie cromatica\\semitono cromatico")
    (s8 "spetie cromatica\\semitono cromatico")
    (s9 "spetie cromatica\\tono cromatico"))
   (:voice-labels
    (:all v1 "")))

  (:data
   (:music 2214
           (:voice v1)
           (:section s1)
           cclef7 b22 sb1 b38 fl2 b22 sb2 bl
           (:section s2)
           sb2 b22 sh3 b22 sb3 bl
           (:section s3)
           sb3 b22 fl4 b22 sb4 bl
           (:section s4)
           sb4 b22 fl5 b22 sb5 bl
           (:section s5)
           ;; Idealisierung Notentext, weil sonst eine Redundanz zum übernächsten Takt entsteht
           (:alt (:diplomatic sb5 b22 sh4 b22 sb4)
                 (:idealised sb5 b22 fl6 b22 sb6)) bl
           (:section s6)
           (:newline)
           b22 sb7 b22 fl6 b22 sb6 bl
           (:section s7)
           sb5 b22 sh4 b22 sb4 bl
           (:section s8)
           sb4 b22 sh3 b22 sb3 bl
           (:section s9)
           sb3 b22 fl2 b22 sb2 bl)
   (:text 70 58
          (30 nil "ſpetie cro.")
          (300 nil "ſpet. cro.")
          (542 nil "ſpet.cro.")
          (746 nil "ſpet. cro.")
          (986 nil "ſpet.cro.")
          (1224 nil "ſpet. cro.")
          (1468 nil "ſpet. cro.")
          (1700 nil "ſpet. cro.")
          (1950 nil "ſpet.cro."))
   (:text 70 58
          ;; Eingriff Text, zu bestätigen, Achtung: Normalisierung prüfen, siehe oben!
          (44 nil (:alt (:diplomatic "tono cro.")
                        (:idealised "ſe.tono cro.")))
          (316 nil "to. crom.")
          (550 nil "ſem.cro.")
          (750 nil "ſem. cro.")
          (998 nil "ſem.cro.")
          (1228 nil "tono cro.")
          (1468 nil "ſem. cro.")
          (1704 nil "ſem. cro.")
          (1956 nil "tono cro."))))
