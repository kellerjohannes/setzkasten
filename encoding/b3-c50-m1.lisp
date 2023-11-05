`((:header
   (:filename "b3-c50-m1")
   (:alt-name "m3.113")
   (:comment "q021_s132, origin: 975")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Cadentie a quattro voci")
                 (:de "")
                 (:en "")))
   (:voice-labels
    (s1 v1 (:alt (:it "Soprano")
                 (:de "")
                 (:en "")))
    (s1 v2 (:alt (:it "Alto")
                 (:de "")
                 (:en "")))
    (s1 v3 (:alt (:it "Tenore")
                 (:de "")
                 (:en "")))
    (s1 v4 (:alt (:it "Basso")
                 (:de "")
                 (:en ""))))
   (:voice-order
    (s1 v1 v2 v3 v4) (s2 v1 v2 v3 v4) (s3 v1 v2 v3 v4) (s4 v1 v2 v3 v4) (s5 v1 v2 v3 v4)))
  (:preamble-lilypond
   (:clef-overrides
    (s4 v1 "treble")
    (s4 v2 "treble_8")))
  (:data
   ;; Bibelgruppe:
   ;; - im zweiten, vierten und fünften Beispiel befinden sich Takte mit
   ;;   fünf Semibreven: Disskusionsbedarf
   ;;   - Notationsfehler (Notenwerte müssten dann korrigiert werden)
   ;;   - rhythmische Freiheit bzw. Unproportioniertheit (könnte sich
   ;;     auf die Tonhöhen-Unproportioniertheit enharmonischer
   ;;     Intervalle beziehen, als rhythmische Analogie)
   ;;   - Quintolen, Referenzmaterial könnten Traktate von Ganassi
   ;;     etc. sein, die im Rahmen von Diminutionsschulen ähnliche
   ;;     Situationen explizit beschreiben.

   ;; Im Moment wird hier keine Idealisierung vorgenommen, was der Absicht der Edition entspricht,
   ;; möglichst nur offensichtliche Fehler, aber keine interpretierende Lesarten anzubieten.
   ;;
   ;; JK: Soll im Bericht kommentiert werden.
   ;; OPEN
   (:text 70 58
     (667 nil "ᴄadentie à quattro uoci,")
     (1313 nil "Soprano."))
   (:music 2233
           (:voice v1)
           (:section s1) cclef1 mrest5 m6 b38 fl6 b38 sb6 b38 br6 bl
           (:section s2) b38 b22 sb8 b38 b22 sbd8 b38 b22 sb8 b38 bl
           (:section s3) b38 sb3 b38 sbd3 b38 sb3 b38 bl
           (:section s4) b38 b22 sb1 b38 b22 sbd1 b38 b22 sb1 b38 b22 bl
           (:section s5) b38 b22 mrest7 b38 m8 b38 b22 sbd7 b38 sb8 b38 b22 bl)
   (:text 70 58
          (660 nil "ᴄadentie à quattro uoci,")
          (1299 nil "ᴀlto."))
   (:music 2224
           (:voice v2)
           (:section s1) cclef5 b38 b22 sb7 b38 sbd7 b38 br7 b38 bl
           (:section s2) b38 mrest7 b38 m8 b38 sbd7 b38 sb8 b38 b22 bl
           (:section s3) b38 mrest5 b38 m5 b38 sbd4 b38 sb5 b38 bl
           (:section s4)
           (:alt (:diplomatic  )
                 (:critical  )
                 (:comment "Kommentar notwendig, da die rhythmische Verbindung zwischen den Stimmen unklar ist. Interpretierende Fassungen sollen im Rahmen eines Kommentars angeboten werden.")
                 (:flag :observe) (:id 1))
           (:duration-override 3/5) fl3 b22 sb3 sbd2 fl3 b22 sb3 b22 fl3 b22 sbd3 sb3 bl (:duration-override nil)
           (:section s5) b38 b22 sb9 b38 b22 sbd9 b38 b22 sb9 b38 b22 b38 bl)
   (:text 70 58
          (657 nil "ᴄadentie à quattro uoci,")
          (1296 nil "ᴛenore."))
   (:music 2220
           (:voice v3)
           (:section s1) cclef7 b22 sb7 b22 sbd6 b22 sb7 sh7 sb7 bl
           (:section s2)
           (:alt (:diplomatic  )
                 (:critical  )
                 (:comment "Kommentar notwendig, da die rhythmische Verbindung zwischen den Stimmen unklar ist. Interpretierende Fassungen sollen im Rahmen eines Kommentars angeboten werden.")
                 (:flag :observe) (:id 2))
           (:duration-override 3/5) fl5 sb5 sbd4 fl5 sb5 fl5 sbd5 sb5 bl (:duration-override nil)
           (:section s3) mrest7 b38 m7 b22 fl5 b22 sb5 sb5 bl
           (:section s4) b38 b38 sb3 b38 b38 sbd0 b38 b38 sb3 b38 b22 bl
           (:section s5)
           (:alt (:diplomatic  )
                 (:critical  )
                 (:comment "Kommentar notwendig, da die rhythmische Verbindung zwischen den Stimmen unklar ist. Interpretierende Fassungen sollen im Rahmen eines Kommentars angeboten werden.")
                 (:flag :observe) (:id 3))
           (:duration-override 3/5) fl9 b22 sb9 sbd8 b22 fl9 b22 sb9 b22 fl9 b38 sbd9 sb9 bl (:duration-override nil))
   (:text 70 58
          (654 nil "ᴄadentie à quattro uoci,")
          (1297 nil "Baſſo."))
   (:music 2217
           (:voice v4)
           (:section s1) (:f-clef) max7 fclef7 b38 sb2 b38 sbd6
           ;; Rhythmische Idealisierung eines offensichtlichen Druckfehlers.
           (:alt (:diplomatic br2 br4) (:critical br2 b38)
                 (:comment "Original: Unmittelbar nach der Brevis A steht eine weitere Brevis auf C.")
                 (:flag :draft) (:id 4))
           b38 bl
           (:section s2) b38 sb7 b22 b38 sbd4 b38 b22 sb7 b38 bl
           (:section s3) b38 sb2 b22 b38 sbd6 b38 sb2 b22 bl
           (:section s4) (:newline) b38 mrest7 b38 m7 b38 b22 sbd6 b38 b22 sb7 b38 bl
           (:section s5) b38 b22 sb4 b38 b22 sbd8 b38 b22 sb4 b38 b22 b38 bl)))
