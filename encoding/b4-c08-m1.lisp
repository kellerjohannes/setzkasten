`((:header
   (:filename "b4-c08-m1")
   (:alt-name "m4.008")
   (:comment "q021_s151, rotation: 0, origin: 414")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-headings
    (s1 (:alt (:it "Esempio di batter alla breve")
              (:de "Beispiel alla breve zu schlagen")
              (:en "Example of beating alla breve")))
    (s2 (:alt (:it "Alla breve")
              (:de "alla breve")
              ;; Kommentar AS: wäre es nicht besser, wenn alle Teile (d.i. auch s2, s3 und s4) mit "Essempio di batter", bzw. "Beispiel ... zu schlagen" und "Example of beating" beginnen würden?
              (:en "Alla breve")))
    (s3 (:alt (:it "Alla semibreve")
              (:de "alla semibreve")
              (:en "Alla semibreve")))
    (s4 (:alt (:it "Di proportione sesqualtera")
              (:de "in der proportione sesqualtera")
              (:en "Of the proportion sesquialtera")))))
  (:data
   (:text 90 58
          (184 nil "Eſſempio di batter alla breue")
          (1516 nil "Alla breue"))
   (:music 2215
           (:voice v1)
           (:section s1) cclef7 b38 b22
           (:alt (:diplomatic met-imperf-min-dim)
                 (:critical met-imperf-min-dim)
                 (:coord-barre "MZ1 N1")
                 (:coord-norm "G1")
                 ;; JK: Diskussion notwendig.
                 ;;
                 ;; OPEN
                 (:comment "Es muss diskutiert werden, ob diese Signatur auch ternär verstanden werden könnte, siehe im Text »à imitatione del numero ternario«.")
                 (:flag :observe) (:id 1))
           b38 b22 br4 b38 b22 br5 b38 b22 br6 b38 b22 br7 b38 b22 sb6 b22 b38 sb5 b22 b38 br4 b22 b22 bl
           (:section s2) b38 b38 cclef7 b38 met-imperf-min b38 sb4 b38 b22 m2 b38 b22 m3 b38 b22 sm1 b38 b22 sm3 b38 b22 sm4 b38 b22 sm5 b22 b22 br5 b38 bl)
   (:text 90 58
          (263 nil "Alla ſemibreue")
          (1118 nil "Di proportione ſeſqualtera"))
   (:music 2202
           (:section s3) (:newline) cclef7 b38 met-imperf-min b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb6 b38 sb5 b38 br4 b38 bl
           (:section s4) b38 b22 cclef7 b22 met-perf-min-dim b22 met-3-2 b22 br4 b22 sb5 b22 br6 b22 sb7 b38 (:divider :regular) br8 b38 bl
           b38 met-imperf-min-dim b38 br0 b38 sb4 b38 sb2 b38 sb3 b38 sb1 b38 bl)))
