`((:header
   (:filename "b3-c24-m2")
   (:alt-name "m3.054")
   (:comment "q021_s102, rotation: -0.81, origin: 974")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Esempio delle cadentie minori di semibreve,\\e di minima, diminuite e non")
                 (:de "Beispiel der Kadenzen minori mit Semibreven\\und mit Minima, diminiert und nicht.")
                 (:en "Example of the minor cadences of a semibreve,\\and of a minima, diminished and not [diminished]"))))
  (:preamble-lilypond
   (:clef-overrides
    (s1 v1 "treble_8")
    (s2 v1 "treble_8")
    (s3 v1 "treble_8")
    (s4 v1 "treble_8")
    (s5 v1 "treble_8")))
  (:data
   (:text 110 58
          (181 1853 "Eſſempio delle cadentie minori di ſemibreue,& di minima,diminuite & non."))
   (:music 2224
           (:voice v1)
           (:section s1) cclef5 b22 m2 sb5 b22 m4 b22 sb5 bl
           (:section s2) m2 b22 m5 dot6 cr4 b22 cr3 b22 m4 b22 sb5 bl
           (:section s3) m2 b22 sm3 m5 b22 cr4 b22 cr3 b22 m4 b22 sb5 bl
           (:section s4) (:newline) m2 m5 dot6 sm4 b22 sm4 b22 cr3 b22 cr4 b22 sb5 bl
           (:section s5) m2 b38 m5 dot6
           (:alt (:diplomatic cr4)
                 (:critical sm4)
                 (:coord-barre "N27")
                 (:coord-norm "G5 N3")
                 (:comment "Original: Croma.")
                 (:flag :ready) (:id 1))
           m4 sb5 bl)))
