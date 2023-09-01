`((:header
   (:filename "b4-c39-m1")
   (:alt-name "m4.034")
   (:comment "q021_s185, rotation: 1.45, origin: 474")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-headings
    (s2 (:alt (:it "Tenore convertito in soprano\\per ottava più alto")
              (:de "")
              (:en "")
              (:comment "Es ist zu diskutieren, ob anstelle dieser Tenorstimme ein entsprechender vierstimmiger Satz angeboten werden soll.")
              (:flag :observe) (:id 1))))
   (:voice-labels
    (s1 v2 (:alt (:it "[Alto]")
                 (:de "")
                 (:en "")))
    (s1 v3 (:alt (:it "[Tenore]")
                 (:de "")
                 (:en "")))
    (s1 v3q (:alt (:it "[Tenore]")
                 (:de "")
                 (:en "")))
    (s1 v4 (:alt (:it "[Basso]")
                 (:de "")
                 (:en "")))
    (s2 v1 (:alt (:it "[Soprano]")
                 (:de "")
                 (:en "")))
    (s2 v2 (:alt (:it "[Alto]")
                 (:de "")
                 (:en "")))
    (s2 v3 (:alt (:it "[Tenore]")
                 (:de "")
                 (:en "")))
    (s2 v4 (:alt (:it "[Basso]")
                 (:de "")
                 (:en "")))
    )
   (:voice-order
    (s1 v2 v3 v3q v4)
    (s2 v1 v2 v3 v4)))
  (:preamble-lilypond
   (:lyrics
    (s1 v2 "O voi be -- a -- ta se si lar -- ghi do -- ni.")
    (s1 v3 "O voi be -- a -- ta se si lar -- ghi do -- ni.")
    (s1 v3q "O voi be -- a -- ta se si lar -- ghi do -- ni.")
    (s1 v4 "O voi be -- a -- ta se si lar -- ghi do -- ni.")
    (s2 v1 "O voi be -- a -- ta se si lar -- ghi do -- ni.")
    (s2 v2 "O voi be -- a -- ta se si lar -- ghi do -- ni.")
    (s2 v3 "O voi be -- a -- ta se si lar -- ghi do -- ni.")
    (s2 v4 "O voi be -- a -- ta se si lar -- ghi do -- ni.")))
  (:data
   (:music 2229
           (:section s1 s2)
           ;; alto
           (:voice v2) cclef5 b38 met-imperf-min-dim b38 sb7 b22 m7 b22 m7 sh9 sb9 b22 m10 b22 sb10 b22 m10 b22 sb8 b22 fl7 b22 m7 b22 sb6 sh5 sb5 b38 b38
           (:section s1 s2)
           ;; tenore I
           (:voice v3) cclef7 b22 sb7 sh7 m7 sh7 m7 b22 sb9 b22 m9 b22 sb9 b22 m10 b22 sb7 b22 m7 b22 sb5 b22 sb5 b22 bl b38)
   (:text 110 58
          (200 nil "O uoi be")
          (470 nil "a ta se ſi")
          (740 nil "larghi")
          (927 nil "do")
          (1025 nil "ni.")
          (1263 nil "O uoi")
          (1461 nil "be")
          (1562 nil "a")
          (1626 nil "ta")
          (1702 nil "se")
          (1782 nil "ſi larghi")
          (2008 nil "doni."))
   (:music 2228
           (:section s1 s2)
           ;; basso
           (:voice v4) (:f-clef) max7 fclef7 b38 met-imperf-min-dim b38 sb4 b22 m2 b22 m2 b22 sb6 b22 m9 b22 sb9 b22 m5 b22 sb7 b22 m4 b22 sb5 b22 sb2 b38 b38
           (:section s2)
           ;; soprano convertito
           (:voice v1) (:newline) cclef1 b38 met-imperf-min-dim b38 sb3 b22 m3 b22 m6 b22 sb7 b22 m8 b22 sh8 b22 sb8 b22 m9 b22 sb6 b22 m5 b22 sb4 b22 sb3 b22 bl)
   (:text 90 58
          (245 nil "O")
          (343 nil "uoi")
          (450 nil "beata se ſi larghi doni.")
          (1301 nil "O uoi")
          (1487 nil "beata")
          (1742 nil "se ſi larghi doni."))
   (:vspace 50)
   (:text 70 58
          (1418 815 "Tenore conuertito in soprano per"))
   (:text 70 58
          (1418 nil "ᴏttaua piu alto."))
   (:music (1371 -150)
           (:section s1)
           ;; tenore II ('quinto')
           (:voice v3q) cclef7 b38 met-imperf-min-dim b38 sb2 b38 m2 b38 m5 b38 sb6 b38 m7 b22 sh7 b22 sb7 b38 m8 b38 sb5 b38 m4 b38 sb3 b38 sb2 b38 bl b125)
   (:text 70 58
          (201 nil "O uoi be")
          (465 nil "a")
          (537 nil "ta")
          (698 nil "se")
          (799 nil "ſi")
          (857 nil "larghi")
          (1043 nil "doni."))))
