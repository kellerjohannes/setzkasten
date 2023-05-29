`((:header
   (:filename "b1-c11-m3")
   (:alt-name "m1.020")
   (:comment "")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-headings
    (s1 ""))
   (:section-captions
    (s1 "per ♮ incitato:\\la-sol-fa-la-sol")
    (s2 "per ♭ molle:\\la-sol-fa-mi-re")
    (s3 "per natura:\\sol-fa-la-sol-fa-mi-mi"))
   (:voice-labels
    (:all v1 "")))

  (:data
   (:music 2200
           (:voice v1)
           (:section s1)
           cclef7 b38 sb5 b38 fl5 b38 sbd5 b22 sh4 b22 sb4 b38 sbd4 b38 sb4 b38
           ;; Bibelgruppe:
           ;; Im mittleren Takt stellt sich die Frage nach der Solmisation, die
           ;; Maniates hier von "la sol fa mi re" (gedruckt) nach "la sol fa la sol"
           ;; korrigiert. Möglicherweise beruht die Korrektur auf einem Vergleich
           ;; mit den enharmonischen 'mani'.
           ;; Das braucht weitere Diskussion.
           (:section s2)
           cclef7 b38 fl6 (:key-signature nil nil nil nil nil nil :flat)
           b38 sb5 b38 fl5 b38 sbd5 b38 fl5 b38 sb5 b22 sbd4 b38 sb4 b22 bl
           (:section s3)
           (:key-signature nil nil nil nil nil nil nil)
           b22 sb4 b38 fl4 b38 sbd4 b22 fl4 b22 sb4 b38 sbd3 b38 sb3 b38 sbd2 b22 sb2)
   (:text 70 58
          (120 nil "la")
          (263 nil "ſol")
          (400 nil "fa")
          (493 nil "la")
          (572 nil "ſol")
          (858 nil "la")
          (1022 nil "ſol")
          (1188 nil "fa")
          (1281 nil "mi")
          (1365 nil "re")
          (1506 nil "ſol")
          (1670 nil "fa")
          (1813 nil "la")
          (1899 nil "ſol")
          (1990 nil "fa")
          (2064 nil "mi")
          (2135 nil "mi"))
   (:text 70 58
          (116 nil "per ♮. incitato")
          (850 nil "per ♭. molle")
          (1502 nil "per natura"))))
