`((:header
   (:filename "b5-c51-m1")
   (:alt-name "m5.054")
   (:comment "q021_s252, rotation: 0.82, origin: 685; q021_s251, rotation: , origin: ")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-headings
    (s1 "Tono cromatico\\accidentale\\[ascendente]")
    (s2 "Semitono cromatico\\accidentale\\[ascendente]")
    (s3 "Tono cromatico\\accidentale\\[ascendente]")
    (s4 "Tono cromatico\\accidentale\\[ascendente]")

    (s5 "Semitono cromatico\\accidentale\\[ascendente]")
    (s6 "Tono cromatico\\accidentale\\[ascendente]")
    (s7 "Tono cromatico\\accidentale\\[ascendente]")

    (s8 "Tono cromatico\\accidentale\\[discendente]")
    (s9 "Tono cromatico\\accidentale\\[discendente]")
    (s10 "Semitono cromatico\\accidentale\\[discendente]")

    (s11 "Tono cromatico\\accidentale\\[discendente]")
    (s12 "Tono cromatico\\accidentale\\[discendente]")
    (s13 "Semitono cromatico\\accidentale\\[discendente]")
    (s14 "Tono cromatico\\accidentale\\[discendente]")
    )
   (:section-captions
    ;; erste diesis sollte maggiore sein?
    (s1 "Semitono maggiore:\\diesis minore – diesis minore\\Semitono minore:\\diesis minore – diesis minore")
    (s2 "Semitono minore /\\semitono maggiore:\\diesis minore – diesis minore – diesis minore")
    (s3 "Semitono maggiore:\\diesis minore – diesis maggiore\\Semitono minore:\\diesis minore – diesis minore")
    (s4 "Semitono minore:\\diesis minore – diesis maggiore\\Semitono maggiore:\\diesis minore – diesis minore")

    (s5 "Semitono minore /\\semitono maggiore:\\diesis minore – diesis minore – diesis minore")
    (s6 "Semitono maggiore:\\diesis minore – diesis maggiore\\Semitono minore:\\diesis minore – diesis minore")
    (s7 "Semitono maggiore:\\diesis minore – diesis maggiore\\Semitono minore:\\diesis minore – diesis minore")
    (s8 "Semitono maggiore:\\diesis maggiore – diesis minore\\Semitono minore:\\diesis minore – diesis minore")

    (s9 "Semitono maggiore:\\diesis maggiore – diesis minore\\Semitono minore:\\diesis minore – diesis minore")
    (s10 "Semitono minore /\\semitono maggiore:\\diesis minore – diesis minore – diesis minore")
    (s11 "Semitono maggiore:\\diesis minore – diesis maggiore\\Semitono minore:\\diesis minore – diesis minore")
    (s12 "Semitono maggiore:\\diesis maggiore – diesis minore\\Semitono minore:\\diesis minore – diesis minore")
    (s13 "Semitono minore /\\semitono maggiore:\\diesis minore – diesis minore – diesis minore")
    (s14 "Semitono maggiore:\\diesis maggiore – diesis minore\\Semitono minore:\\diesis minore – diesis minore")
    ))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:data
   (:text 90 58
     (134 nil "se.mag.")
     (416 nil "se. min.")
     (736 nil "se.mi.se.mag.")
     (1175 nil "se.mag.")
     (1409 nil "se.min,")
     (1723 nil "se.mi.")
     (1923 nil "se.mag.")
     )
   (:music 2225
           (:voice v1)
           (:section s1) (:f-clef) max7 fclef7 b22 fl2 b22 sb2 b22 fl2 b22 sbd2 b22 sbd2 b22 sh2 b22 sb2 fl3 b22 sb3 bl
           (:section s2) fl3 b22 sb3 b22 fl3 b22 sbd3 b22 sb3 b22 sbd3 bl
           (:section s3) sbd3 b22 sh3 b22 sb3 sbd4 b22 sh4 b22 sb4 b22 fl5 sb5 bl
           (:section s4) b22 fl5 sb5 fl5 sbd5 sbd5 sh5 sb5 fl6 sb6 bl
           )
   (:text 70 58
     (75 nil "di.mi. di.ma.d.mi. d.mi.")
     (734 nil "de mi. d.mi.d.mi.")
     (1159 nil "d.mi.d.ma.d.mi.d.mi.")
     (1684 nil "d.mi.d.ma.d.mi.di.mi.")
     )
   (:text 110 58
     (102  nil "tono Cromatico accid.")
     (774 nil "se.ᴄrom.acc.")
     (1193 nil "tono Crom. accid.")
     (1702 nil "tono Crom. accid.")
     )
   (:text 110 58
     (100 nil "se.mi.&mag.")
     (532 nil "se.mag. se. mi.")
     (1089 nil "se.mag.")
     (1330 nil "se.min.")
     (1686 nil "se.mag.")
     (1973 nil "se.min.")
     )
   (:music 2222
           (:section s5) (:newline) (:f-clef) max7 fclef7 b22 fl6 b22 sb6 fl6 b22 sbd6 b22 sb6 sbd6 bl
           (:section s6) sbd6 b22 sh6 b22 sb6 sbd7 sh7 sb7 fl8 sb8 bl
           (:section s7) fl8 b22 sb8 b22 fl8 b22 sbd8 b22 sbd8 b22 sh8 b22 sb8 fl9 b22 sb9 bl
           (:section s8) (:newline) fl9 sb9 b22 sbd8 b22 sb8 b22 fl8 b22 sbd8 b22 fl8 b22 sb8 bl
           )
   (:text 90 58
     ;; eine diesis streichen?
     (0 nil "d.mi.d.mi.d.mi.d.mi.")
     (521 nil "d.mi.d.ma.d.mi.d.mi.")
     (1045 nil "di.mi.di.ma.di.mi. di.mi.")
     (1680 nil "d.ma.di.mi.di.mi.d.mi.")
     )
   (:text 110 58
     (73 nil "se . acc. ᴄro.")
     (609 nil "tono Cro. accid.")
     (1162 nil "tono ᴄro. accid.")
     (1739 nil "tono ᴄro. accid.")
     )
   (:text 110 58
     (137 nil "se.mag.")
     (432 nil "se. min.")
     (755 nil "se.mi. et mag.")
     (1189 nil "se.mag.")
     (1430 nil "se.min.")
     (1743 nil "se. mag.")
     (1982 nil "se. mi.")
     )
   (:music 2225
           (:section s9) (:f-clef) max7 fclef7 b22 fl8 b22 sb8 b22 sbd7 b22 sb7 b22 sh6 b22 sb6 b22 sbd6 bl
           (:section s10) sbd6 b22 sb6 b22 fl6 b22 sbd6 b22 fl6 b22 sb6 bl
           (:section s11) fl6 b22 sb6 b22 sbd5 b22 sb5 b22 fl5 b22 sb5 b22 fl5 b22 sb5 bl
           (:section s12) (:newline) fl5 b22 sb5 b22 sbd4 b22 sb4 b22 sh3 b22 sb3 sbd3 bl
           )
   (:text 100 58
     (75 nil "di.ma. di.mi.d.mi. d. mi.")
     ;; eine diese streichen?
     (673 nil "di.mi.d.mi.d.mi.d.mi.")
     (1180 nil "d.ma.di.mi.d.mi.d.mi.")
     (1709 nil "d.ma.di.mi.di.mi.d.mi.")
     )
   (:text 120 58
     (92 nil "tono Cromatico accid.")
     (737 nil "se. ᴄrom. acc.")
     (1204 nil "tono Crom. accid.")
     (1711 nil "tono Crom. accid.")
     )
   (:text 100 58
     (141 nil "se. min. & mag.")
     (759 nil "sem. mag.")
     (1066 nil "se.min.")
     )
   (:music 1223
           (:section s13) (:f-clef) max7 fclef7 b22 sbd3 b22 sb3 b22 fl3 b22 sbd3 b22 fl3 b22 sb3 b38 bl
           (:section s14) b38 fl3 b22 sb3 sbd2 b22 sb2 b22 fl2 b22 sbd2 b22 fl2 b22 sb2 b22 b22 bl
           )
   (:text 90 58
     (104 nil "di. mi. di. mi.di. mi.")
     (702 nil "di.ma.d.mi.d.mi.d.mi.")
     )
   (:text 70 58
     (102 nil "sem. ᴄro. acc.")
     (696 nil "tono ᴄro. acc.")
     )
   ))
