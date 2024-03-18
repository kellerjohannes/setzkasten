;; JK: Die Reihenfolge der Nummerierung habe ich neu eingerichtet und geprüft.
;;
;; DONE

;; JK: Für dieses Beispiel war ursprünglich keine Normalisierung vorgesehen, nun habe ich sie aber dennoch eingerichtet. Das ist noch zu entscheiden. Im TEI-file scheinen alle Fassungen vorgesehen zu sein, falls keine moderne Notenschrift angeboten werden soll, muss das Rolf kommuniziert werden.
;;
;; OPEN

`((:header
   (:filename "b4-c02-m2")
   (:alt-name "m2.002")
   (:comment "q021_s145, rotation: 1.8, origin: 529; q021_s146, rotation: -1.2, origin: 859. Für dieses Beispiel wird keine normalisierte Version angeboten. Alternativ könnte eine Normalisierung in originalen Schlüsseln hergestellt werden.")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Dimostratione delle chiavi dei soprani, che insegnano a leggere\\tutte l'altre sorti di chiavi per ♭ incitato et per ♭ molle,\\et per musica finta")
                 (:de "Darstellung der Schlüssel der Soprani, die lehren,\\alle anderen Arten von Schlüsseln zu lesen, per ♭ incitato und per ♭ molle\\und für musica finta")
                 (:en "Illustration of the chiavi of the sopranos which give instruction for reading\\all other kinds of chiavi in ♭ incitato and in ♭ molle\\and in musica finta")))
   ;; Kommentar Anne: die dritte Skala vom secondo Ordine und die erste vom sesto Ordine im G
   ;; Schlüssel sind unangenehm tief zum Lesen - eventuell im einem oktavierten G Schlüssel?
   ;;
   ;; JK: Ich habe alle Schlüssel überprüft und so angepasst, dass nie mehr als 2 Hilfslinien
   ;; entstehen, entsprechend den Editionsrichtlinien.
   ;;
   ;; OPEN
   (:line-headings
    (:alt (:it "Primo ordine")
          (:de "erste Ordnung")
          (:en "First order"))
    (:alt (:it "Secondo ordine")
          (:de "zweite Ordnung")
          (:en "Second order"))
    (:alt (:it "Terzo ordine")
          (:de "dritte Ordnung")
          (:en "Third order"))
    (:alt (:it "Quarto ordine")
          (:de "vierte Ordnung")
          (:en "Fourth order"))
    nil
    (:alt (:it "Quinto ordine")
          (:de "fünfte Ordnung")
          (:en "Fifth order"))
    (:alt (:it "Sesto ordine")
          (:de "sechste Ordnung")
          (:en "Sixth order"))
    (:alt (:it "Settimo ordine")
          (:de "siebte Ordnung")
          (:en "Seventh order")))
   (:voice-order
    ;; primo
    (s1 v1)
    (s2 v1)
    (s3 v1)
    ;; secondo
    (s4 v1)
    (s5 v1)
    (s6 v1)
    ;; terzo
    (s7 v1)
    (s8 v1)
    (s9 v1)
    ;; quarto
    (s10 v1)
    (s11 v1)
    (s12 v1)
    (s13 v1)
    (s14 v1)
    ;; quinto
    (s15 v1)
    (s16 v1)
    (s17 v1)
    (s18 v1)
    ;; sesto
    (s19 v1)
    (s20 v1)
    (s21 v1)
    (s22 v1)
    ;; settimo
    (s23 v1)
    (s24 v1)
    (s25 v1))
   )
  (:preamble-lilypond
   (:clef-overrides
    (s2 v1 "treble_8")
    (s6 v1 "treble_8")
    (s19 v1 "treble_8")))
  (:data
   (:text 70 58
     (10 2144 "Dimoſtratione delle chiaui de i Soprani , che inſegnano à leggere tutte lʼaltre ſorti di chiaui"))
   (:text 110 58
     (514 1227 "per ♭. incitato & per ♭. molle,& per muſica finta."))
   (:text 110 58
     (350 nil "Primo ordine.")
     (1378 nil "Secondo ordine."))
   ;; music line 1
   (:music 2221
           (:voice v1)
           (:section s1) cclef1 b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b38 b38
           (:section s4) (:newline) cclef1 b22 fl07 (:key-signature nil nil nil nil nil nil :flat) b22 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b22 bl)
   (:vspace 90)
   ;; music line 2
   (:music 2223
           (:section s2) cclef5 b38 fl4 (:key-signature nil nil nil nil nil nil :flat) b38 sb0 b38 sb1 b22 sb2 b22 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb7 b38 sb8 b38 sb9 b38 sb10 b38 b38
           (:section s5) (:f-clef) max7 fclef7 (:key-signature nil nil nil nil nil nil nil) b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b22 b22 bl)
   (:vspace 90)
   ;; music line 3
   (:music 2206
           (:section s3) (:f-clef) max5 fclef5 b22 fl4 b22 fl18 (:key-signature nil nil :flat nil nil nil :flat) b22 sb0 b22 sb1 b22 sb2 b22 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb7 b22 sb8 b22 sb9 b38 sb10 b22
           (:section s6) cclef5 b22 fl4 b22 fl07 (:key-signature nil nil :flat nil nil nil :flat) b22 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b22 sb5 b38 sb6 b38 sb7 b22 sb8 b22 sb9 b22 sb10 b22 bl)
   (:text 90 58
     (346 nil "Terzo ordine.")
     (1501 nil "Quarto ordine."))
   ;; music line 4
   (:music 2227
           (:section s7) (:newline) gclef3 (:key-signature nil nil nil nil nil nil nil) b22 b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b38
           (:section s10) (:newline) gclef3 b38 fl5 (:key-signature nil nil nil nil nil nil :flat) b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b22 sb9 b38 sb10 bl)
   (:vspace 90)
   ;; music line 5
   (:music 2218
           (:section s8) cclef3 b22 fl29 (:key-signature nil nil nil nil nil nil :flat) b22 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b22 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b38
           (:section s11) cclef3 b22
           (:alt (:diplomatic fl6 b22 fl18)
                 (:critical b22 fl29 b22)
                 (:coord-barre "MZ5 N12")
                 (:coord-norm "—")
                 (:comment "In allen Exemplaren: Die Vorzeichnung besteht aus F♭, A♭ und E♭.")
                 (:flag :ready) (:id 1))
           b22 fl5 (:key-signature nil nil :flat nil nil :flat :flat) b22 sb0 b22 sb1 b22 sb2 b22 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb7 b38 sb8 b22 sb9 b38 sb10 bl)
   (:vspace 90)
   ;; music line 6
   (:music 2223
           (:section s9) (:f-clef) max9 fclef9 (:key-signature nil nil nil nil nil nil nil) b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b38
           (:section s12) cclef7 b22 fl6 b22 fl29 b22 fl5 (:key-signature nil nil :flat nil nil :flat :flat) b22 sb0 b22 sb1 b22 sb2 b22 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb7 b22 sb8 b22 sb9 b22 sb10 b22 bl)
   (:vspace 90)
   ;; music line 7
   (:music 2216
           (:section s13) (:newline) s1080 (:f-clef) max5 fclef5 (:key-signature nil nil nil nil nil nil nil) b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b22 bl)
   (:vspace 90)
   ;; music line 8
   (:music 2209
           (:section s14) s1080 (:f-clef) max9 fclef9 b22 fl5 (:key-signature nil nil nil nil nil nil :flat) b38 sb0 b22 sb1 b22 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 bl)
   (:text 90 58
     (336 nil "Quinto ordine.")
     (1504 nil "Seſto ordine."))
   ;; music line 9
   (:music 2223
           (:section s15) (:newline) cclef3 (:key-signature nil nil nil nil nil nil nil) b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b38 b38
           (:section s19) (:newline) cclef5 b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b22 b22 b22 bl)
   (:vspace 90)
   ;; music line 10
   (:music 2220
           (:section s16) cclef7 fl6 (:key-signature nil nil nil nil nil nil :flat) b22 sb0 b22 sb1 b22 sb2 b22 sb3 b22 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b38 sb10 b38 b38
           (:section s20) (:f-clef) max5 fclef5 b38 fl18 (:key-signature nil nil nil nil nil nil :flat) b38 sb0 b38 sb1 b38 sb2 b22 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb7 b22 sb8 b38 sb9 b38 sb10 b38 bl)
   (:vspace 90)
   ;; music line 11
   (:music 2214
           (:section s17) (:f-clef) max7 fclef7 b22 fl3 fl6 (:key-signature nil nil :flat nil nil nil :flat) b38 sb0 b38 sb1 b38 sb2 b22 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb7 b22 sb8 b22 sb9 b22 sb10 b38
           (:section s21) cclef3 b22 fl2 fl5 fl18 (:key-signature nil nil :flat nil nil :flat :flat) b22 sb0 b22 sb1 b22 sb2 b22 sb3 b22 sb4 b22 sb5 b38 sb6 b38 sb7 b38 sb8 b38 sb9 b22 sb10 b22 bl)
   (:vspace 90)
   ;; music line 12
   (:music 2210
           (:section s18) cclef1 b22 fl07 fl3 fl6 (:key-signature nil nil :flat nil nil :flat :flat) b22 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b22 sb6 b22 sb7 b22 sb8 b22 sb9 b22 sb10 b22
           (:section s22)  gclef3 b22 fl18 fl5 (:key-signature nil nil :flat nil nil nil :flat) b38 sb0 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b22 sb6 b22 sb7 b38 sb8 b22 sb9 b22 sb10 bl)
   (:text 130 58
     (336 nil "Settimo ordine,")
     (1506 nil "Settimo ordine."))
   ;; music line 13
   (:music 2216
           (:section s23) (:newline) cclef7 (:key-signature nil nil nil nil nil nil nil) b22 sb0 sb1 sb2 sb3 sb4 sb5 sb6 sb7 sb8 sb9 sb10 b22 b38
           (:section s24) (:f-clef) max7 fclef7 b38 fl310 (:key-signature nil nil nil nil nil nil :flat) b22 sb0 sb1 sb2 sb3 sb4 sb5 sb6 sb7 sb8 sb9 sb10 b38
           (:section s25) cclef1 b22 fl07 fl310 (:key-signature nil nil :flat nil nil nil :flat) b38 sb0 sb1 sb2 sb3 sb4 sb5 sb6 sb7 sb8 sb9 sb10 bl)))
