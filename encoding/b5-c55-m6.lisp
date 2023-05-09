`((:header
   (:filename "b5-c55-m6")
   (:alt-name "m5.077")
   (:comment "q021_s261, rotation: -0.44, origin: 496; q021_s262, rotation: 0.68, origin: 957")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Regola di ritrovare le sette ottave sopra Ffaut secondo,\\con li sottoscritti esempi")
   (:section-headings
    (s1 "Prima ottava")
    (s2 "Seconda ottava")
    (s3 "Terza ottava")
    (s4 "Quarta ottava")
    (s5 "Quinta ottava")
    (s6 "Sesta ottava")
    (s7 "Settima ottava")
    ))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:preamble-lilypond
   (:clef-overrides
    (s1 v1 "treble_8")
    (s2 v1 "treble_8")
    (s3 v1 "treble_8")
    (s4 v1 "treble_8")
    (s5 v1 "treble_8")
    (s6 v1 "treble_8")
    (s7 v1 "treble_8")
    ))
  (:data
   (:text 90 58
          (84 2002 "Regola di ritrouare le sette ᴏttaue sopra ꜰ fa ut ſecondo,con li sottoſcritti eſſempi."))
   (:text 90 58
          (214 nil "Prima")
          (467 nil "ottaua.")
          (1175 nil "Seconda")
          (1464 nil "ottaua.")
          (1978 nil "Terza")
          )
   (:music 2228
           (:voice v1)
           (:section s1) cclef7 b22 sh2 sb2 b22 fl4 b22 sbd4 sh4 sb4 sh5 sb5 sh6 sb6 sh7 sb7 sh8 sb8 sh9 sb9 b22 bl
           (:section s2) b22 sh2 sb2 b22 sh3 sb3 b22 sh4 sb4 b22 sh5 sb5 sb6 sh7 sb7 sh8 sb8 sh9 sb9 b38 bl
           (:section s3) b22 sh2 sb2 fl4 sbd4 fl5 sbd5 custos5
           )
   (:text 90 58
          (168 nil "ottaua .")
          (736 nil "quarta")
          (999 nil "ottaua .")
          (1541 nil "Quinta")
          (1831 nil "ottaua.")
          )
   (:music 2223
           (:alt (:diplomatic cclef5) (:idealised cclef7)) sh5 sb5 sh6 sb6 fl8 sbd8 fl9 sbd9 sh9 sb9 bl
           (:section s4) sh2 sb2 fl4 sbd4 sh4 sb4 sh5 sb5 sh6 sb6 fl8 sbd8 sh8 sb8 sh9 sb9 bl
           (:section s5) (:newline) sh2 sb2 sh3 sb3 sh4 sb4 (:alt (:diplomatic sh3) (:idealised sh5)) sb5 sh6 sb6 sh7 sb7 sh8 sb8 sh9 sb9 b22
           )
   (:text 70 58
          (377 nil "Seſta")
          (588 nil "ottaua.")
          (1336 nil "settima")
          (1614 nil "ottaua.")
          )
   (:music 2223
           (:section s6) cclef7 b38 sh2 b22 sb2 b22 fl4 b22 sbd4 b22 fl5 b22 sbd5 b22 fl6 b22 sbd6 b22 sh6 b22 sb6 b22 fl8 b22 sbd8 b22 fl9 b22 sbd9 sh9 b22 sb9 b22 bl
           (:section s7) b22 sh2 sb2 fl4 sbd4 b22 fl5 sbd5 sh5 sb5 sh6 sb6 fl8 b22 sbd8 b22 sh8 b22 sb8 sh9 sb9 b22 bl
           )))
