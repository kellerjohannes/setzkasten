`((:header
   (:filename "b3-c26-m1")
   (:alt-name "m3.057")
   (:comment "q021_s103, origin: 500; q021_s104, rotation: 0.94, origin: 878 et al.")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Essempio [della Musica Diatonica, à quattro uoci composta]")
                 (:de "Beispiel der diatonischen Musik, gesetzt in vier Stimmen.")
                 (:en "Example of diatonic music, composed with four voices")))
   ;; LUIGI: Es ist eine Bearbeitung des Originals: es muss zwischen [ ] sein. Ich würde auch den
   ;; Titel des Kapitels vollständig zitieren.
   ;;
   ;; JK: habe ich in den beiden Übersetzungen entsprechend angepasst.
   ;;
   ;; DONE
   (:voice-labels
    (s1 v1 (:alt (:it "Soprano diatonico")
                 (:de "diatonischer Soprano")
                 (:en "Diatonic soprano")))
    (s1 v2 (:alt (:it "Contr'alto diatonico")
                 (:de "diatonischer Contr'alto")
                 (:en "Diatonic alto")))
    (s1 v3 (:alt (:it "Tenore diatonico")
                 (:de "diatonischer Tenore")
                 (:en "Diatonic tenor")))
    (s1 v4 (:alt (:it "Basso diatonico")
                 (:de "diatonischer Basso")
                 (:en "Diatonic bass")))))
  (:preamble-lilypond
   (:alt (:transposition-quarta-discendente (:clef-overrides
                                             (s1 v2 "treble_8"))))
   (:standalone-title "Musica diatonica")
   (:standalone-subtitle (:alt (:c-standalone "Libro 3, Capitolo 26, fol. 52r-52v")
                               (:tatti "Libro 3, Capitolo 26, fol. 52r-52v, Export »I Tatti«")
                               (:transposition-quarta-discendente
                                "Libro 3, Capitolo 26, fol. 52r-52v, eine Quarte tiefer notiert")
                               (:transposition-quarta-discendente
                                "Libro 3, Capitolo 26, fol. 52r-52v, einen Ganzton tiefer notiert"))))
  (:data
   (:text 110 58
          (674 757 "Eſſempio del Soprano Diatonico."))
   (:music 2206
           (:voice v1)
           (:section s1)
           cclef1 b22 met-imperf-min-dim b38 lrest24 b22 brrest4 b22 mrest5 b38 sb5 b38 m5d b38 m6
           b38 m6 b38 sb7 b38 sb8 b38 sb9 mrest7 m6 dot6 sm6 b38 sb6 b38 m5d b38 m8 dot8 sm8 b38
           sb7 b38 sb6 b38 sb5 mrest5 m6 b38 m7 b38 m7 b38 m8 b38 sb4 b38 custos3)
   (:vspace 70)
   (:music 2201
           cclef1 b22 m3 b38 sb6 b38 m2 dot2 sm2 b38 m3 b38 sb3 b38 m4 sbrest5 sb6 b38 m7 b38 m7 b38 sb8 b38 m9 b38 m2 b38 m3 dot4 sm3 b38
           m4 b38 m5 b38 m6 b38 m7 dot8 sm7 b38 m8 mrest5 m6 b38 m3 dot4 sm3 b22 custos6)
   (:vspace 70)
   (:music 2228
           cclef1 b22 m6 b22 sb5 b22 m4 b22 m3 b22 m2 b22 m1 b22 m8 b22 m7 b22 m6 dot6 sm5 b22 m5 b22 m4 b22 m3 b22 m2 b22
           sb5 b22 m4 b22 m3 b22 sb8 b22 m7 b38 m6 b38 m5d b22 sb8 b22 m7 b22 m6 dot6 sm5 b22 sb5 b22
           m4 b22 (:divider :double) br5 b22 blbl)
   (:text 110 58
          (658 847 "Eſſempio del ᴄontrʼAlto. Diatonico"))
   (:music 2221
           (:voice v2)
           cclef5 b22 met-imperf-min-dim b22 lrest24 b22 brrest4 b22 sb5 b22 m6 b22 sb9 b22 m8 b22 m9 b22
           m9 b22 sb5 b22 m4 b22 sb8 b38 m8 b38 m7 b38 m7 dot8 sm7 b22 m7 b22 sb7 mrest7
           m9 b22 m5 b22 sb6 b22 m7 b38 m8 b22 m1 b22 m2 b22 m9 b22 m5 b22 m6 b22 custos9)
   (:vspace 70)
   (:music 2216
           cclef5 b22 sb9 b22 m8 b22 m5 dot6 cr4 b22 cr3 b22 m4 b22 m5 b22 sb5 b22 sb6 b22 sb7 b22
           m8 b22 m9 b22 sb9 b22 m5 dot6 cr4 b22 cr3 b22 m4 b22 sb5 mrest7 m7 b22 m8 b22 m1 b22
           m2 dot2 sm2 b22 m1 m8 b22 m9 dot10 sm9 b38 m8 custos9)
   (:vspace 70)
   (:music 2229
           cclef5 b22 m9 b38 sb6 b22 m5 b22 m8 b22 m7 b22 dot8 sm7 b22 m7 b22 m6 b22 sb7 mrest5 m5 b22 m4 b22 m7 b22
           m6 dot6 sm6 b22 m5 b22 m5 b22 sb9 b22 m8 b22 m7 dot8 sm7 b38 m3 b38 m6 b22 sb6 b22
           m5 b38 sb6 b38 br6 b22 blbl)
   (:text 110 58
          (654 735 "Eſſempio del Tenore ᴅiatonico."))
   (:music 2224
           (:voice v3)
           cclef7 b22 met-imperf-min-dim b22 sb4 b22 m4 b38 m4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b22
           sb6 mrest7 m8 dot8 sm8 b22 m8 b22 m5 dot6 sm5 b38 m4 b22 sb5 b22 sb8 b38 m7
           b38 sb6 b38 sb5 b38 sb4 mrest5 m5 b22 m6 b22 m6 b22 m7 b22 custos8)
   (:vspace 70)
   (:music 2222
           cclef7 b38 sb8 b38 m8 b38 sb5 mrest7 b22 m7 b38 sb7 mrest5 sb4 b38 m4 b38 sb5 b38 m6 dot6 sm6
           b38 sb7 b38 sb8 b38 m9 dot10 sm9 b38 sb8 b38 m5 b38 m9 b38 m8 b38 m4 mrest7
           sb8 b38 m9 b38 m8 b38 sb8 b38 m7 b22 b22 custos8)
   (:vspace 70)
   (:music 2215
           cclef7 b38 sb8 b38 m5 b38 sb5 b38 m5 b38 sb5 b38 m4 b38 m5 b38 sb6 b38 sb5 sbrest7 sb5 b38
           m5 b38 m5 b38 sb4 b38 m7 dot8 sm7 b38 m7 b38 m7 mrest5 m3 b38 sb4 b38 sb5 b38
           br4 b22 b22 blbl b125 b125)
   (:text 110 58
          (653 731 "Eſſempio del Baſſo Diatonico ."))
   (:music 2217
           (:voice v4)
           (:f-clef) max7 fclef7 b22 met-imperf-min-dim b38 sbrest5 b38 mrest3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 m8 b38
           sb4 b38 sb8 b38 sb5 b38 sb8 b38 sb7 mrest5 m5 dot6 sm5 b38 m5 b38 sb2 b38 sb6 b38 sb2 b38 m6 b38 m6 b38 sb7 b38
           m8 dot8 sm8 b38 custos7)
   (:vspace 70)
   (:music 2207
           (:f-clef) max7 fclef7 b38 sb7 mrest7 m1 b38 m2 b38 m5 b38 sb4 b38 m7 dot8 sm7 b38 sb8 b38 sb4
           mrest7 m7 b38 m8 b38 m8 b38 sb9 b38 sb8 b38 sb4 b38 sb8 mrest5 m4 b38 m5 b38 m6 b38
           sb5 b38 m1 b38 m4 b38 sb5 b22 sb6 b22 custos5)
   (:vspace 70)
   (:music 2205
           (:f-clef) max7 fclef7 b38 m5 b38 m1 b38 sb5 b38 m2 b38 m5 b38 sb2 b38 m6 b38 m7 b38 sb6 b38 sb2 b38
           m3 b38 m4 b38 sb5 b38 sb2 b38 sb6 b38 m7 b38 sb4 b38 m7 b38 m8 b38 m5 b38 sb6 b38 sb5 b38 br1 b38 blbl b38)))
