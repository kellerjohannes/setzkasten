`((:header
   (:filename "b2-c07-m1")
   (:alt-name "m2.009")
   (:comment "q021_s061, rotation: 0, origin: 491")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Essempio sopra il modo di comporre di quarta in quinta\\sincopata, et non sincopata, et di quinta in quarta.\\A tre voci")
                 ;; AS: David questions the placement of "A tre voci", mentioning that it does not
                 ;; belong to the overall caption, but actually to Example 1. I think that I agree
                 ;; with him there, and that the other examples are 2 voci within a larger,
                 ;; undefined constellation.
                 ;;
                 ;; LC: Ich bin mit David einverstanden: 'à tre uoci' gehört nicht zum Titel des
                 ;; Musikspiels. Es ist eine Information zur Besetzung der Musik (vgl. Kap. 8)
                 ;;
                 ;; GROUP !!
                 ;; OPEN
                 (:de "Beispiel der Art und Weise, von der quarta zur quinta,\\synkopiert und nicht synkopiert, und von der quinta zur quarta zu setzen,\\mit drei Stimmen")
                 (:en "Example of the method of composing from the quarta to the quinta,\\syncopata and not syncopata, and from the quinta to the quarta\\in three voci")))
   (:voice-labels
    (s1 v1 (:alt (:it "Soprano")
                 (:de "Soprano")
                 (:en "Soprano")))
    (s1 v2 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenore")))
    (s1 v3 (:alt (:it "Basso")
                 (:de "Basso")
                 (:en "Basso")))
    (s2 v2 (:alt (:it "Alto")
                 (:de "Alto")
                 (:en "Alto")
                 ;; Kommentar Anne: Without the music, this order makes no sense in connection with
                 ;; the original.
                 ;;
                 ;; JK: Meinst du ohne die nicht gedruckten Stimmen, die der Student selbst zu
                 ;; ergänzen hat? Ein Kommentar im Bericht ist hier vorgesehen, siehe folgende
                 ;; Zeile (29) im Code:
                 ;;
                 ;; Kommentar AS: Ich glaube, ich habe geschrieben ohne die Beispiele gesehen zu
                 ;; haben. Mit Kommentar wäre gut.
                 ;;
                 ;; Alter Kommentar: Die Reihenfolge der Stimmen und die Verteilung auf Sections ist
                 ;; zu disktutieren. Ev. braucht es hier einen Kommentar, dass diese Konstellationen
                 ;; eher in vielstimmigen Sätzen plausibel sind.
                 ;;
                 ;; JK: Ich habe einen Kapitelkommentar angelegt, in dem auf die Situation
                 ;; aufmerksam gemacht wird, dass diese Beispiele in einem nicht weiter definierten
                 ;; Kontext mit mehr als den gedruckten Stimmen zu verstehen sind.
                 ;;
                 ;; DONE
                 ))
    (s2 v1 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenore")))
    (s3 v1 (:alt (:it "Alto")
                 (:de "Alto")
                 (:en "Alto")))
    (s3 v2 (:alt (:it "Tenore")
                 (:de "Tenore")
                 (:en "Tenore")))
    (s4 v2 (:alt (:it "[Tenore]")
                 (:de "[Tenore]")
                 (:en "[Tenore"])))
    (s4 v1 (:alt (:it "[Tenore]")
                 (:de "[Tenore]")
                 (:en "[Tenore]")))))
  (:preamble-lilypond
   (:clef-overrides
    (s2 v2 "treble_8")
    (s3 v1 "treble_8")))
  (:data
   (:text 70 58
          (0 2227 "Eſſempio ſopra il modo di comporre di 4. in 5. ſincopata,et non ſincop.et di quinta in quarta."))
   (:text 90 58
          (332 nil "à")
          (878 nil "tre")
          (1450 nil "uoci"))
   (:music 2227
           (:section s1)
           (:voice v1) cclef5 b22 fl4 (:key-signature nil nil nil nil nil nil :flat) b38 sb7 b38 sb8 b38 sb9 b38 bl
           (:voice v2) b38 b22 b38 cclef7 b22 fl6 b22 mrest7 b22 sb7 b22 m6 b38 sb4 b38 bl
           (:voice v3) b38 b22 b38 (:f-clef) max7 fclef7 b22 fl3 b38 m9 dot10 b22 sm8 b38 m7 b38 m5d b22 fl6 b22 sb6 b38 bl b38 b22 b38 b38 b38 b38 b22 b38)
   (:vspace 30)
   (:text 90 58
          (171 nil "Soprano")
          (695 nil "Tenore")
          (1459 nil "Baſſo"))
   (:music 2220
           (:section s2)
           (:voice v1) cclef7 (:key-signature nil nil nil nil nil nil nil) b38 sb7 b38 sb5 b22 bl
           (:voice v2) b38 cclef5 b38 sb1 b38 sb0 b38 bl
           (:section s3)
           (:voice v1) b38 cclef5 b38 sb5 b38 sb4 bl
           (:voice v2) b38 cclef7 b38 sb4 b38 sb2 b38 bl
           (:section s4)
           (:voice v1) b38 cclef7 b38 sb1 b38 sb2 b38 bl
           (:voice v2) b38 cclef7 b38 sb4 b38 sb6 b38 bl b38 b38 b38 b38)
   (:text 70 58
          (100 nil "Tenore")
          (459 nil "ᴀlto")
          (802 nil "ᴀlto")
          (1139 nil "Tenore"))))
