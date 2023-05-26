`((:header
   (:filename "b1-c23-m1")
   (:alt-name "m1.031")
   (:comment "")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Essempio d'alcuni toni e semitoni accidentali")
   (:section-headings
    (s1 ""))
   (:section-captions
    (s1 "tono accidentale\\composto")
    (s2 "tono accidentale\\incomposto")
    (s3 "tono accidentale\\composto")
    (s4 "tono accidentale\\incomposto")
    (s5 "tono accidentale\\composto")
    (s6 "tono accidentale\\incomposto")
    (s7 "tono accidentale\\composto")
    (s8 "tono accidentale\\incomposto")
    (s9 "tono accidentale\\incomposto"))
   (:voice-labels
    (:all v1 "")))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:data
   (:text 100 58
          (525 1098 "ᴇſſempio dʼalcuni ᴛoni,et ſemitoni accidentali."))
   (:music 2197
           (:voice v1)
           (:section s1)
           cclef7 b38 sh1 b38 sb1 b38 sb2 b38 sh2 b38 sb2 b22 bl
           (:section s2)
           b22 sb2 b38 sh3 b38 sb3 b22 bl
           (:section s3)
           b22 sh3 b22 sb3 b13 sb4 b13 sh4 b13 sb4 bl
           (:section s4)
           fl5 b13 sb5 b13 fl6 b13 sb6 bl
           (:section s5)
           fl6 b13 sb6 b13 sb6 b13 sb7 bl
           (:section s6)
           (:newline)
           b38 sb7 b38 fl6 b38 sb6 b38 bl)
   (:text 70 58
          (92 nil "tono acci.comp.")
          (543 nil "tono accid.")
          (875 nil "tono acci.comp.")
          (1256 nil "tono accid.")
          (1547 nil "tono accid.")
          (1845 nil "tono accid."))
   (:text 70 58
          (545 nil "incomp.")
          (1262 nil "incomp.")
          (1543 nil "comp.")
          (1852 nil "incomp."))
   (:music 2202
           (:section s7)
           ;; Idealisierung, weil die originale Teilung A♯-G-G♯ keine sinnvolle Tonhöhenreihenfolge
           ;; ergibt.
           cclef7 b38 sh5 b22 sb5 b22 (:alt (:diplomatic sb4)
                                            (:idealised sb5))
           b22 sh4 b22 sb4 b38 bl
           (:section s8)
           b38 sh4 b22 sb4 b22 sh3 b22 sb3 b38 bl
           (:section s9)
           b38 fl5 b22 sb5 b38 fl4 b38 sb4 b38 bl
           b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38)
   (:text 70 58
          (85 nil "tono accid.comp.")
          (521 nil "tono acci.incom.")
          (911 nil "tono.acc. incom."))))
