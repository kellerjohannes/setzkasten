`((:header
   (:filename "b5-c8-m1")
   (:alt-name "m5.004")
   (:comment "q021_s211, origin: 500")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "[Del primo Alamire]")
   (:section-headings
    (s1 "Le quattro terze con\\le sue propinque")
    (s2 " \\Quinta")
    (s3 "Le quattro seste con\\le sue propinque")
    (s4 " \\Ottava")
    (s5 "Le quattro terze con\\le sue propinque")
    (s6 " \\Quinta")
    (s7 "Le quattro seste con\\le sue propinque")
    (s8 " \\Ottava"))
   (:section-captions
    (s1 "Terza minore / terza maggiore")
    (s3 "Sesta minore / sesta maggiore")
    (s5 "Terza minore / terza maggiore")
    (s7 "Sesta minore / sesta maggiore"))
   (:voice-labels
    (:all v1 "")
    (:all v2 ""))
   (:line-headings
    "[Tutte le consonanze discendenti di Alamire primo]"
    "[Tutte le consonanze ascendenti di Alamire primo]"))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:data
   (:text 70 58
          (12 nil "Le 4.3.di ſotto.")
          (471 nil "5.")
          (574 nil ".6.min.")
          (799 nil "6.mag.")
          (1038 nil "8.")
          (1151 nil "Le 4.3.diſopra.")
          (1580 nil "5.")
          (1676 nil "ʟe 4.ſorti di ſeſte.")
          (2171 nil "8."))
   (:music 2243
           (:voice v1)
           (:section s1) cclef7 b38 sb5 b22 (:divider :regular) sb5 b22 sb5 b22 sb5 b22 bl
           (:section s2) b22 sb5 b22 bl
           (:section s3) b22 sb5 b22 (:divider :regular) sb5 b22 bl b22 sb5 b22 sb5 b22 bl
           (:section s4) b22 sb5 b38
           (:section s5) (:newline) cclef3 sb3 (:divider :regular) sbd3 sh3 sb3 fl4 sb4 bl
           (:section s6) b38 sb5 b38 bl
           (:section s7) sb6 b38 (:divider :regular) sbd6 b22 bl b22 sh6 sb6 fl7 sb7 bl
           (:section s8) sb8 bl)
   (:text 90 58
          (5 nil "con le ſue propinque.")
          (550 nil "propinq.")
          (784 nil "propinq.")
          (1163 nil "cō le propinque.")
          ;; handschriftliche Notizen?
          (1674 nil "con le ſue propinque."))
   (:music 2236
           (:voice v2)
           (:section s1) (:f-clef) max7 fclef7 sh7 sb7 sbd7 sb7 sh6 sb6 bl
           (:section s2) b22 sb5 b22 bl
           (:section s3) sh4 sb4 sbd4 b22 bl sb4 sh3 sb3 bl
           (:section s4) b22 sb2 b38
           (:section s5) (:f-clef) max7 fclef7 b22 sb9 sb9 sb9 sb9 b22 bl
           (:section s6) b38 sb9 b38 bl
           (:section s7) sb9 b22 sb9 b22 bl b22 b22 sb9 b22 b22 sb9 b22 bl
           (:section s8) sb9 bl)))
