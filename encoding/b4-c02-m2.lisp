`((:header
   (:filename "b4-c2-m2")
   (:alt-name "m2.002")
   (:comment "q021_s145, rotation: 1.8, origin: 529; q021_s146, rotation: -1.2, origin: 859")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Dimostratione delle chiavi dei soprani, che insegnano a leggere\\tutte l'altre sorti di chiavi per ♭ incitato et per ♭ molle,\\et per musica finta")
   (:line-headings
    "Primo ordine"
    "Secondo ordine"
    "Terzo ordine"
    "Quarto ordine"
    nil
    "Quinto ordine"
    "Sesto ordine"
    "Settimo ordine")
   (:voice-order
    ;; primo
    (s1 v1)
    (s3 v1)
    (s5 v1)
    ;; secondo
    (s2 v1)
    (s4 v1)
    (s6 v1)
    ;; terzo
    (s7 v1)
    (s9 v1)
    (s11 v1)
    ;; quarto
    (s8 v1)
    (s10 v1)
    (s12 v1)
    (s13 v1)
    (s4 v1)
    ;; quinto
    (s15 v1)
    (s17 v1)
    (s19 v1)
    (s21 v1)
    ;; sesto
    (s16 v1)
    (s18 v1)
    (s20 v1)
    (s22 v1)
    ;; settimo
    (s23 v1)
    (s24 v1)
    (s25 v1)))

  ;; Hier stellt sich die Frage, ob eine Normalisierung mit modernen Schlüsseln sinnvoll ist.
  ;; Ev. sollten hier die originalen Schlüssel verwendet werden, da es explizit um das Phänomen
  ;; der Schlüsselung geht.
  (:data
   (:text 70 58
          (10 2144 "Dimoſtratione delle chiaui de i Soprani , che inſegnano à leggere tutte lʼaltre ſorti di chiaui"))
   (:text 110 58
          (514 1227 "per ♭. incitato & per ♭. molle,& per muſica finta."))
   (:text 110 58
          (350 nil "Primo ordine.")
          (1378 nil "Secondo ordine."))
   (:music 2221
           (:voice v1)
           (:section s1) cclef1 b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b38 b38
           (:section s2) (:newline) cclef1 b22 fl07 (:key-signature nil nil nil nil nil nil :flat) b22 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b22 bl)
   (:vspace 90)
   (:music 2223
           (:section s3) cclef5 b38 fl4 (:key-signature nil nil nil nil nil nil :flat) b38 sb0 b38 sb1 b22 sb2 b22 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb7 b38 sb8 b38 sb9 b38 sb10 b38 b38
           (:section s4) (:f-clef) max7 fclef7 (:key-signature nil nil nil nil nil nil nil) b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b22 b22 bl)
   (:vspace 90)
   (:music 2206
           (:section s5) (:f-clef) max5 fclef5 b22 fl4 b22 fl18 (:key-signature nil nil :flat nil nil nil :flat) b22 sb0 b22 sb1 b22 sb2 b22 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb7 b22 sb8 b22 sb9 b38 sb10 b22
           (:section s6) cclef5 b22 fl4 b22 fl07 (:key-signature nil nil :flat nil nil nil :flat) b22 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b22 sb5 b38 sb6 b38 sb7 b22 sb8 b22 sb9 b22 sb10 b22 bl)
   (:text 90 58
          (346 nil "Terzo ordine.")
          (1501 nil "Quarto ordine."))
   (:music 2227
           (:section s7) (:newline) gclef3 (:key-signature nil nil nil nil nil nil nil) b22 b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b38
           (:section s8) (:newline) gclef3 b38 fl5 (:key-signature nil nil nil nil nil nil :flat) b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b22 sb9 b38 sb10 bl)
   (:vspace 90)
   (:music 2218
           (:section s9) cclef3 b22 fl29 (:key-signature nil nil nil nil nil nil :flat) b22 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b22 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b38
           (:section s10) cclef3 b22
           ;; Bibelgruppe
           ;; - > Korrektur! Der Fehler liegt in der ♭-Vorzeichnung, die nur as
           ;; B♭ und E♭ bestehen soll. Dann funktioniert der Schlüssel auf C2-Position,
           ;; die erste Note der Skala ist damit ein D.
           (:alt (:diplomatic fl6) (:idealised fl2)) b22 fl18 b22 fl5 (:key-signature nil nil :flat nil nil :flat :flat) b22 sb0 b22 sb1 b22 sb2 b22 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb7 b38 sb8 b22 sb9 b38 sb10 bl)
   (:vspace 90)
   (:music 2223
           (:section s11) (:f-clef) max9 fclef9 (:key-signature nil nil nil nil nil nil nil) b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b38
           (:section s12) cclef7 b22 fl6 b22 fl29 b22 fl5 (:key-signature nil nil :flat nil nil :flat :flat) b22 sb0 b22 sb1 b22 sb2 b22 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb7 b22 sb8 b22 sb9 b22 sb10 b22 bl)
   (:vspace 90)
   (:music 2216
           (:section s13) (:newline) s1080 (:f-clef) max5 fclef5 (:key-signature nil nil nil nil nil nil nil) b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b22 bl)
   (:vspace 90)
   (:music 2209
           (:section s14) s1080 (:f-clef) max9 fclef9 b22 fl5 (:key-signature nil nil nil nil nil nil :flat) b38 sb0 b22 sb1 b22 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 bl)
   (:text 90 58
          (336 nil "Quinto ordine.")
          (1504 nil "Seſto ordine."))
   (:music 2223
           (:section s15) (:newline) cclef3 (:key-signature nil nil nil nil nil nil nil) b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b38 b38
           (:section s16) (:newline) cclef5 b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b22 b22 b22 bl)
   (:vspace 90)
   (:music 2220
           (:section s17) cclef7 fl6 (:key-signature nil nil nil nil nil nil :flat) b22 sb0 b22 sb1 b22 sb2 b22 sb3 b22 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b38 b38
           (:section s18) (:f-clef) max5 fclef5 b38 fl18 (:key-signature nil nil nil nil nil nil :flat) b38 sb0 b38 sb1 b38 sb2 b22 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb7 b22 sb8 b38 sb9 b38 sb10 b38 bl)
   (:vspace 90)
   (:music 2214
           (:section s19) (:f-clef) max7 fclef7 b22 fl3 fl6 (:key-signature nil nil :flat nil nil nil :flat) b38 sb0 b38 sb1 b38 sb2 b22 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb7 b22 sb8 b22 sb9 b22 sb10 b38
           (:section s20) cclef3 b22 fl2 fl5 fl18 (:key-signature nil nil :flat nil nil :flat :flat) b22 sb0 b22 sb1 b22 sb2 b22 sb3 b22 sb4 b22 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b22 sb10 b22 bl)
   (:vspace 90)
   (:music 2210
           (:section s21)  cclef1 b22 fl07 fl3 fl6 (:key-signature nil nil :flat nil nil :flat :flat) b22 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b22 sb6 b22 sb7 b22 sb8 b22 sb9 b22 sb10 b22
           (:section s22)  gclef3 b22 fl18 fl5 (:key-signature nil nil :flat nil nil nil :flat) b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b22 sb6 b22 sb7 b38 sb8 b22 sb9 b22 sb10 bl)
   (:text 130 58
          (336 nil "Settimo ordine,")
          (1506 nil "Settimo ordine."))
   (:music 2216
           (:section s23) (:newline) cclef7 (:key-signature nil nil nil nil nil nil nil) b22 sb0 sb1 sb2 sb3 sb4 sb5 sb6 sb7 sb8 sb9 sb10 b22 b38
           (:section s24) (:f-clef) max7 fclef7 b38 fl310 (:key-signature nil nil nil nil nil nil :flat) b22 sb0 sb1 sb2 sb3 sb4 sb5 sb6 sb7 sb8 sb9 sb10 b38
           (:section s25) cclef1 b22 fl07 fl310 (:key-signature nil nil :flat nil nil nil :flat) b38 sb0 sb1 sb2 sb3 sb4 sb5 sb6 sb7 sb8 sb9 sb10 bl)))
