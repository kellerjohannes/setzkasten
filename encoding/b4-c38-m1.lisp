`((:header
   (:filename "b4-c38-m1")
   (:alt-name "m4.033")
   (:comment "q021_s184, rotation: 0, origin: 962")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Compositione a quattro voci,\\soprano mutabile per ottava di sotto")
   ;; Bibelgruppe:
   ;; Dieses und das nächste Kapitel konnten bisher nicht befriedigend interpretiert werden. Das
   ;; betrifft auch die Musikbeispiele. Es liegt dazu eine Korrespondenz mit Elam Rotem, Laurie
   ;; Stras, Vicente Parilla, Johannes Menke, David Mesquita und Lisandro Abadie vor, ohne
   ;; eindeutigen Befund. Wie sich das auf die Normalisierung der Notenbeispiele (dieses und
   ;; b4-c39-m1) auswirkt ist zu diskutieren.
   ;; Es liegen Skizzen zu hypothetischen Beispielen von Anne vor.
   (:section-headings
    (s2 "Soprano convertito in tenore,\\all'ottava sotto"))
   (:voice-order
    (s1 v1 v2 v4 v3)
    (s2 v1))
   (:voice-labels
    (s1 v1 "Soprano")
    (s1 v2 "Alto")
    (s1 v3 "[Tenore]")
    (s1 v4 "[Basso]")))

  (:preamble-lilypond
   (:lyrics
    (s1 v1 "Co -- me d'o -- gni mio ben ri -- ma -- si pri -- vo.")
    (s1 v2 "Co -- me d'o -- gni mio ben ri -- ma -- si pri -- vo.")
    (s1 v3 "Co -- me d'o -- gni mio ben ri -- ma -- si pri -- vo.")
    (s1 v4 "Co -- me d'o -- gni mio ben ri -- ma -- si pri -- vo.")
    (s2 v1 "Co -- me d'o -- gni mio ben ri -- ma -- si pri -- vo.")
    ))
  (:data
   (:text 90 58
          (0 nil "Cōpoſitioe à 4. Voci.")
          (644 nil "Soprano mutabile ꝑ ottaua di ſotto.")
          (1728 nil "Alto."))
   (:music 2231
           (:voice v1)
           (:section s1) cclef1 b38 met-imperf-min-dim b38 m7 b38 sm7 b38 m8 b38 sm8 b38 sm6 b38 m6 b38 sm6 b38 m5 b38 sm5 b38 m3 sh2 sm2 b22 b22
           (:voice v2) cclef5 b38 met-imperf-min-dim b38 m9 b22 sm9 b22 m7 b22 sm7 b22 sm8 b22 m8 b22 sm8 b22 m6 b22 sm6 b22 m5 b22 sm4 b22 bl)
   (:text 90 58
          (165 nil "Come")
          (354 nil "dʼogni mio ben rima")
          (882 nil "ſi")
          (961 nil "pri")
          (1067 nil "uo.")
          (1316 846 "Come dʼogni mio ben rimaſi priuo."))
   (:music 2223
           (:voice v3) (:f-clef) max7 fclef7 b22 met-imperf-min-dim b38 m1 b38 sm1 b38 m4 b38 sm4 b38 sm5 b38 m7 b38 sm5d b38 m1 b38 sm1 b38 m2 b38 sm3 b38
           (:voice v4) cclef7 b22 met-imperf-min-dim b22 m8 b22 sm8 b22 m4 b22 sm4 b22 sm8 b22 m7 b22 sm8 b22 m6 b22 sm6 b22 m5 sh3 sm3 b22 bl)
   (:text 90 58
          (215 nil "Come")
          (400 nil "dʼogni mio ben rima")
          (925 nil "ſi")
          (1003 nil "priuo .")
          (1312 737 "Come dʼogni mio ben rimaſi pri")
          (2090 nil "uo."))
   (:vspace 100)
   (:text 70 58
          (0 637 "Soprano conuertito in ᴛe⸗"))
   (:text 90 58
          (90 460 "nore,allʼottaua ſotto."))
   (:music (2222 -200)
           (:section s2) (:voice v1) (:newline) s720 cclef7 b38 met-imperf-min-dim b38 b22 m6 b38 b22 sm6 b22 b38 m7 b38 b22 sm7 b38 b22 sm5 b38 b22 m5 b38 b22 sm5 b38 b22 m4 b38 b22 sm4 b38 b22 m2 b22 sh1 b22 sm1 b22 b22 bl)
   (:text 70 58
          (929 nil "Come")
          (1160 nil "dʼogni")
          (1369 nil "mio")
          (1477 nil "ben")
          (1624 nil "ri")
          (1705 nil "ma")
          (1819 nil "ſi")
          (1919 nil "pri")
          (2073 nil "uo."))))
