`((:header
   (:filename "b3-c37-m2")
   (:alt-name "m3.080")
   (:comment "q021_s118, origin: 954")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-headings
    (s1 "Seconda quinta\\diatonica")
    (s2 "Seconda quinta\\cromatica")
    (s3 "Terza quinta\\diatonica")
    (s4 "Terza quinta\\cromatica")
    (s5 "Quarta quinta\\diatonica")
    (s6 "Quarta quinta\\cromatica")))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:data
   (:text 110 58
          (0 nil "Seconda quinta.")
          (459 nil "2. quinta.")
          (807 nil "Terza quinta.")
          (1233 nil "3.quinta.")
          (1545 nil "Qu arta quīta.")
          ;; Punkt ist hier nach unten verschoben, stillschweigend idealisiert.
          (1954 nil "4. quinta."))
   (:music 2225
           (:voice v1)
           (:section s1) cclef7 b22 sb2 sb3 sb4 sb5 sb6 b22 bl
           (:section s2) b22 sb2 sb4 fl5 sb5 sb5 fl6 sb6 sb6 bl
           (:section s3) (:newline) b22 sb3 sb4 sb5 sb6 sb7 bl
           (:section s4) sb3 fl4 sb4 sb4 fl6 sb6 sb6 sb7 bl
           (:section s5) (:newline) sb4 sb5 sb6 sb7 sb8 bl
           (:section s6) sb4 fl5 sb5 sb5 sb7 fl8 sb8 sb8)
   (:text 70 58
          (98 nil "Diatonica.")
          (462 nil "ᴄromatica.")
          (809 nil "ᴅiatonica.")
          (1152 nil "ᴄromatica.")
          (1543 nil "ᴅiatonica.")
          (1869 nil "ᴄromatica."))))
