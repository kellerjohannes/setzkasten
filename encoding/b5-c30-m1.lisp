`((:header
   (:filename "b5-c30-m1")
   (:alt-name "m5.026")
   (:comment "q021_s230, rotation: 0, origin: 964")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Queste sono tutte le consonanze, con le sue propinque\\e propinquissime di Dsolre [quinto] discendente,\\e similmente di Dsolre quinto ascendente")
   (:section-headings
    (s1 "Le quattro terze\\[discendenti]")
    (s2 " \\Quinta")
    (s3 "Le cinque seste\\[discendenti]")
    (s4 " \\Ottava")
    (s5 "Le quattro terze\\[ascendenti]")
    (s6 " \\Quinta")
    (s7 "Le quattro seste\\[ascendenti]")
    (s8 " \\Ottava"))
   (:section-captions
    (s1 "Terza minore / terza maggiore")
    (s3 "Sesta minore / sesta maggiore")
    (s5 "Terza minore / terza maggiore")
    (s7 "Sesta minore / sesta maggiore")))

  (:preamble-lilypond
   (:brackets
    (s4 0 12 -16 0 12 -16)
    (s8 0 12 -16 0 12 -16))
   (:clef-overrides
    (s5 v1 "treble_8")
    (s6 v1 "treble_8")
    (s7 v1 "treble_8")
    (s8 v1 "treble_8")))
  (:data
   (:text 70 58
     (81 2164 "Queſte sono tutte le conſonanze,con le ſue propinque & propinquiſſime di ᴅ la sol re"))
   (:text 90 58
     (0 1408 "diſcendente,& ſimilmente di ᴅ sol re quinto aſcendente."))
   (:text 110 58
     (0 nil "ʟe quattro terze.")
     (529 nil "5.")
     (677 nil "ʟe cinque Seſte.")
     (1147 nil "8.")
     (1308 nil "Le quattro terze.")
     (1763 nil "5.")
     (1883 nil "Le 4. seſte."))
   (:music 2245
           (:voice v1)
           (:section s1) cclef7 b22 fl8 sbd8 fl8 (:divider :regular) sbd8 bl
           fl8 sbd8 fl8 sbd8 bl
           (:section s2) fl8 sbd8 bl
           (:section s3) fl8 sbd8 fl8 sbd8 fl8 (:divider :regular) sbd8 bl
           fl8 sbd8 fl8 sbd8 bl
           (:section s4) fl8 sbd8 b22
           (:section s5) (:newline) cclef5 b22 (:alt (:diplomatic sh1) (:idealised sh0)) sb0 b22 (:divider :regular) sb1 bl
           b22 sbd1 sh1 sb1 bl
           (:section s6) fl3 sbd3 bl
           (:section s7) sh3 sb3 fl4 (:divider :regular) sb4 bl
           fl4 sbd4 sb4
           (:section s8) (:alt (:it (:bracketed) fl6 sbd6)))
   (:text 130 58
          (0 nil "3.mi.prop.")
          (290 nil "3.ma.pr.")
          (590 nil "6.mi.prop.")
          (872 nil "6.ma.pr.")
          (1231 nil "3.mi.prop.")
          (1520 nil "3.ma.pr.")
          (1748 nil "6.mi.propin.")
          (2079 nil "6.m.p."))
   (:music 2227
           (:voice v2)
           (:section s1) cclef7 fl6 sbd6 fl6 sb6 bl
           sh5 sb5 sbd5 bl
           (:section s2) fl4 sbd4 bl
           (:section s3) sbd3 b22 sb3 b22 sbc3 b38 bl
           sh2 sb2 sbd2 b22 bl
           (:section s4) fl1 sbd1
           (:section s5) cclef7 fl1 sbd1 fl1 sbd1 bl
           fl1 sbd1 fl1 sbd1 bl
           (:section s6) fl1 sbd1 bl
           (:section s7) b22 fl1 b22 sbd1 (:alt (:it fl1 sbd1)) bl
           fl1 sbd1 fl1 sbd1 bl
           (:section s8) (:alt (:it fl1 sbd1)))))
