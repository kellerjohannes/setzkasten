`((:header
   (:filename "b3-c55-m1")
   (:alt-name "m3.118")
   (:comment "q021_s140, origin: 959; q021_s141, rotation 1.04, origin 470 et al.")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Esempio del genere cromatico, e delle sue spetie a cinque voci")
                 (:de "")
                 (:en "")))
   (:voice-labels
    (s1 v1 (:alt (:it "[Soprano]")
                 (:de "")
                 (:en "")))
    (s1 v2 (:alt (:it "[Alto]")
                 (:de "")
                 (:en "")))
    (s1 v3 (:alt (:it "[Tenore]")
                 (:de "")
                 (:en "")))
    (s1 v4 (:alt (:it "Quinta parte")
                 (:de "")
                 (:en "")))
    (s1 v5 (:alt (:it "[Basso]")
                 (:de "")
                 (:en "")))))
  (:preamble-lilypond
   (:clef-overrides
    (s1 v2 "treble_8"))
   (:standalone-title "»Hierusalem«")
   (:standalone-subtitle (:alt (:c-standalone "Libro 3, Capitolo 55, fol. 70v-71r")
                               (:tatti "Libro 3, Capitolo 55, fol. 70v-71r, Export »I Tatti«")
                               (:transposition-tono-discendente
                                "Libro 3, Capitolo 55, fol. 70v-71r, einen Ganzton tiefer notiert")
                               (:transposition-quarta-discendente
                                "Libro 3, Capitolo 55, fol. 70v-71r, eine Quarte tiefer notiert")))
   (:lyrics
    (s1 v1 "Hie -- ru -- sa -- lem, [Hie -- ru -- sa -- lem,] Hie -- ru -- sa -- lem
            con -- ver -- te -- re, [con -- ver -- te -- re] ad do -- mi -- num, ad do -- mi -- num de -- um tu -- um.")
    (s1 v2 "Hie -- ru -- sa -- lem, [Hie -- ru -- sa -- lem,] con -- ver -- te -- re, [con -- ver -- te -- re, con -- ver -- te -- re] ad do -- mi -- num, ad do -- mi -- num, con -- ver -- te -- re ad do -- mi -- num de -- um tu -- um.")
    (s1 v3 "Hie -- ru -- sa -- lem, [Hie -- ru -- sa -- lem] con -- ver -- te -- re,
            con -- ver -- te -- re ad do -- mi -- num, [ad do -- mi -- num,] de -- um tu -- um, ad do -- mi -- num de -- um tu -- um.")
    (s1 v4 "Hie -- ru -- sa -- lem, [Hie -- ru -- sa -- lem] con -- ver -- te -- re, con -- ver -- te -- re ad co -- mi -- num, con -- ver -- te -- re ad do -- mi -- num de -- um tu -- um.")
    (s1 v5 "Hie -- ru -- sa -- lem, [Hie -- ru -- sa -- lem] con -- ver -- te -- re, [con -- ver -- te -- re] ad do -- mi -- num, ad do -- mi -- num de -- um tu -- um.")))
  (:data
   ;; soprano
   (:text 90 58
          (338 1546 "Eſſempio del ɢenere ᴄromatico,& delle ſue ſpetie à cinque uoci."))
   (:music 2216
           (:section s1)
           (:voice v1)
           cclef1 b38 met-imperf-min-dim b38 br6 b22 fl7 b22 sb7 b38 sb7 b38 br9 b22 br5 b38
           sb5 dot6 m5 b38 br5 b38 lrest24 b22 br3 b38 sb4 sh4 sb4 b38 br5 b38 sbrest5 b22 sb5 b38 sb8 dot8 m8 b38
           sb8 b38 br6 b22 fl7 b22 br7 b22 fl7 b22 sb7 b38 sb5 b22 custos4)
   (:text 90 58
          (182 nil "Hie")
          (327 nil "ru")
          (420 nil "ſalem")
          (596 nil "ij")
          (957 nil "ʜie")
          (1080 nil "ru")
          (1177 nil "ſalem")
          (1386 nil "con")
          (1514 nil "uer")
          (1628 nil "te")
          (1716 nil "re")
          (1875 nil "ij"))
   (:music 2207
           cclef1 b38 sbrest5 sb4 b38 fl7 b22 sb7 dot8 fl7 b22 m7 b22
           sb5 b38 sbrest7 b38 sb5 b22 sb8 dot8 m8 b38 sb6 b38 sb9 b38 sb6 b38 sbrest7 b38 br7
           b38 (:duration-override 1/2) longa7 (:duration-override 1) b38 blbl b38 b118 b118 b118 b118 b118 b118)
   (:text 90 58
          (130 nil "ad")
          (262 nil "do")
          (410 nil "minum")
          (648 nil "ad domi")
          (880 nil "num deum")
          (1217 nil "tuum"))
   ;; alto
   (:music 2227
           (:voice v2)
           cclef5 b38 met-imperf-min-dim b38 lrest68 b38 br9 b38 sb7 b22 fl7 b22 sb7 b22 br6 b22
           brrest4 b22 sbrest5 b22 sb6 b22 sb4 b22 fl4 b22 sb4 b38 br3 b22 brrest2 b22 fl4 b22
           sb4 b38 m2 b38 m5 b38 sb5 b22 sbrest7 b22 sb9 b38 sb9 dot10 m9 b38 sb5 b38 sb5 b38 sb8 dot8 m8 b22 custos4)
   (:text 90 58
          (250 nil "Hieru")
          (466 nil "ſalem")
          (742 nil "ij")
          (1178 nil "conuertere")
          (1605 nil "ij")
          (2026 nil "ij"))
   (:music 2232
           cclef5 b38 fl4 b22 sb4 b38 mrest3
           (:alt (:diplomatic b22)
                 (:critical fl4)
                 (:coord-barre "MZ4 N2")
                 (:coord-norm "St2 T17 N1")
                 (:comment "Original: B♮ (ohne ♭ notiert).")
                 (:flag :ready) (:id 1))
           m4 b38 sb8 dot8 m8 b38 sb8 b38 mrest7 b38 sb9 b22 m2 dot2 sm2 b38 m2 b38 smrest1 b38
           sm2 b22 m9 dot10 sm9 b38 m9 b38 m5 b22 m8 dot8 sm8 b38 m8 sh8 br8 sh8 sb8 sbrest9 sb4
           sh8 br8 b38 blbl b22 b22)
   (:text 90 58
          (295 nil "ad dominum")
          (717 nil "ad dominum")
          (1083 nil "conuertere")
          (1402 nil "ad")
          (1517 nil "dominum")
          (1788 nil "deum")
          (2011 nil "tuum."))
   (:music 2234
           (:voice v3)
           cclef7 b38 met-imperf-min-dim b38 lrest46 b22 brrest6 b38 br7 b38 sb6 b22 fl6 b22 sb6 b38 br4 b38 sb4 b38 sb4 b38 sb4 b38 sb4 b22 brrest4 b22 br8 b22 sb4 dot4 m4 b38 m2 b38 m2 b22 sb9 dot10 m9 b38 br9 b22 brrest2 b22 sb3 b22 fl6 b22 sb6 dot6 m4 b38 m4 b22 custos9)
   (:text 90 58
          (279 nil "Hieru")
          (549 nil "ſalem")
          (766 nil "ij")
          (1140 nil "conuer")
          (1347 ni "te")
          (1431 nil "re")
          (1522 nil "ij")
          (1809 nil "ad")
          (1945 nil "dominum"))
   (:music 2234
           cclef7 b38 fl9 b22 m9 b38 sb8 dot8 m8 b38 m8 b38 sb8 b38 m8 b38 sb6 b38 sb6 b38 sb9 b38 sb9 b38 sb5 b38 sb7 b22 sbrest7 b22 sb8 sh8 sb8 b38 br9 sh8 br8 b38 blbl b22 b22 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38)
   (:text 90 58
          (213 nil "ij")
          (495 nil "deum tuum")
          (838 nil "ad dominum")
          (1220 nil "deum")
          (1397 nil "tuum .")
          (1770 nil "Quinta ᴘarte ."))
   (:music 2247
           (:voice v4)
           cclef7 b38 met-imperf-min-dim b38 lrest46 b22 lrest46 b38
           br4 b38 sb2 b22 fl2 b22 sb2 b38 br1 b38 br8 sh7 sb7 b22 sb7 b38 br5 b22 sbrest3 b22 br0 br7 b22 sb7 b22 sb7 b38 sbrest7 b22 mrest5 b22 m5 b22 sb8 dot8 m8 b22 sb4 b22 fl6 b22 sb6 b22 fl6 b22 sb6 dot6 m3 b38 custos3)
   (:text 90 58
          (304 nil "Hieru")
          (516 nil "ſalem")
          (734 nil "ij")
          (1111 nil "conuertere")
          (1493 nil "conuertere")
          (1868 nil "ad")
          (2015 nil "domi⸗"))
   (:music 2243
           cclef7 b38 m3 b38 m1 b22 sb8 dot8 m8 b38 sb8 b38 sbrest7 b38 sb7 b38 sb7 dot8 m5 b38 m5 b38 sb5 b38 m5 b38 sbrest5 b38 sh4 br4 b38 br6 b38 blbl b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38)
   (:text 90 58
          (84 nil "num conuertere")
          (565 nil "ad")
          (659 nil "dominum")
          (923 nil "deum")
          (1225 nil "tuum ."))
   (:music 2246
           (:voice v5)
           (:f-clef) max7 fclef7 b38 met-imperf-min-dim b38
           lrest46 b22 lrest46 b22 brrest2 b22 br4 b22 sb3 b22 fl3 b22 sb3 b22 br1 b22 brrest4 b22 br5 b22 fl6 b22 sb6 b38 sb6 b38 sb8 b38 brrest6
           b38 br4 b38 sb7 dot8 m7 b22 fl3 b22 sb3 b22 fl3 b22 sb3 b22 fl6 b22 sb6 dot6 fl6 b22 m6 b22 fl3 b22 sb3 b22 custos3)
   (:text 90 58
          (377 nil "Hieru")
          (595 nil "ſalem")
          (813 nil "ij")
          (1238 nil "con")
          (1359 nil "uerte")
          (1561 nil "re")
          (1704 nil "ij"))
   (:music 2243
           (:f-clef) max7 fclef7 b38 fl3 b22 br3 b38 br1 b38 sb1 b38 sb4 b38 mrest3 b38 m4 b38
           sb7 dot8 m7 b38 sb5 b38 sb5 b38 sb3 b38 br6 b38 (:divider :double) br3 b38 blbl
           b38 b38 b38 b38 b38 b38 b38 b38
           (:alt (:diplomatic mrest7)
                 (:critical b38)
                 (:coord-barre "MZ10")
                 (:coord-norm "—")
                 (:comment "Original: Im leeren Abschnitt der Notenzeile nach dem Doppelstrich steht eine bedeutungslose Minima-Pause.")
                 (:flag :ready) (:id 2))
           b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38)
   (:text 90 58
          (213 nil "ad dominum")
          (638 nil "ad domin um")
          (993 nil "deum")
          (1167 nil "tuum ."))))
