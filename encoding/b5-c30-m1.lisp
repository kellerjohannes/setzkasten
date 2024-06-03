`((:header
   (:filename "b5-c30-m1")
   (:alt-name "m5.026")
   (:comment "q021_s230, rotation: 0, origin: 964")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Queste sono tutte le consonanze, con le sue propinque\\e propinquissime di Dsolre [quinto] discendente,\\e similmente di Dsolre quinto ascendente")
                 (:de "Dies sind alle die Konsonanzen mit ihren propinque\\und propinquissime von Dsolre [quinto] absteigend\\und desgleichen von Dsolre quinto aufsteigend.")
                 (:en "These are all the consonances, with their propinque\\and propinquissime of Dsolre [quinto] descending,\\and likewise of Dsolre quinto ascending")))
   (:section-headings
    (s1 (:alt (:it "Le quattro terze\\[discendenti]")
              (:de "die vier [absteigenden]\\terze")
              (:en "The four [descending]\\terze")))
    (s2 (:alt (:it " \\Quinta")
              (:de " \\quinta")
              (:en " \\Quinta")))
    (s3 (:alt (:it "Le cinque seste\\[discendenti]")
              (:de "die fünf [absteigenden]\\seste")
              (:en "The five [descending]\\seste")))
    (s4 (:alt (:it " \\Ottava")
              (:de " \\ottava")
              (:en " \\Ottava")))
    (s5 (:alt (:it "Le quattro terze\\[ascendenti]")
              (:de "die vier [aufsteigenden]\\terze")
              (:en "The four [ascending]\\terze")))
    (s6 (:alt (:it " \\Quinta")
              (:de " \\quinta")
              (:en " \\Quinta")))
    (s7 (:alt (:it "Le quattro seste\\[ascendenti]")
              (:de "die vier [aufsteigenden]\\seste")
              (:en "The four [ascending] seste"))))
   (:section-captions
    (s1 (:alt (:it "Terza minore / terza maggiore")
              (:de "terza minore / terza maggiore")
              (:en "Terza minore / terza maggiore")))
    (s3 (:alt (:it "Sesta minore / sesta maggiore")
              (:de "sesta minore / sesta maggiore")
              (:en "Sesta minore / sesta maggiore")))
    (s5 (:alt (:it "Terza minore / terza maggiore")
              (:de "terza minore / terza maggiore")
              (:en "Terza minore / terza maggiore")))
    (s7 (:alt (:it "Sesta minore / sesta maggiore")
              (:de "sesta minore / sesta maggiore")
              (:en "Sesta minore / sesta maggiore")))))
  (:preamble-lilypond
   (:clef-overrides
    (s5 v1 "treble_8")
    (s6 v1 "treble_8")
    (s7 v1 "treble_8")))
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
           (:section s5) (:newline) cclef5 b22
           (:alt (:diplomatic sh1)
                 (:critical sh0)
                 (:coord-barre "MZ1 N12")
                 (:coord-norm "G5 St1 N1")
                 (:comment "In allen Exemplaren: Das ♯ steht eine Position höher.")
                 (:flag :ready) (:id 1))
           sb0 b22 (:divider :regular) sb1 bl
           b22 sbd1 sh1 sb1 bl
           (:section s6) fl3 sbd3 bl
           (:section s7) sh3 sb3 fl4 (:divider :regular) sb4 bl
           fl4 sbd4 sb4)
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
           fl1 sbd1 fl1 sbd1 bl)))
