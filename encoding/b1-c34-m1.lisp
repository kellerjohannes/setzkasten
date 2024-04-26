`((:header
   (:filename "b1-c34-m1")
   (:alt-name "m1.042")
   (:comment "q021_s046, origin: 970")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Essempio del salto più che di Quarta e de suoi gradi, incomposto & composto")
                 (:de "Beispiel des Sprungs più che di quarta und von ihren Tonschritten, incomposto und composto")
                 (:en "Example of the leap più di quarta and of its steps, incomposto and composto")))
   (:section-captions
    ;; JK: In den Textzeilen unter den Notenbeispielen gibt es zwei Eingriffe: Im ersten Abschnitt
    ;; korrigiere ich zu 'salto' und im dritten zu 'salti'. Aus meiner Sicht gibt es zwei
    ;; Möglichkeiten:
    ;;
    ;; 1. Alle Unterschriften beziehen sich auf 'salto', der teilweise implizit ergänzt werden muss
    ;; ("gradi [del salto] di più di quarta accidentale, composto"). In diesem Fall muss nur im
    ;; dritten Abschnitt ein plural gesetzt werden ("salti die più di quarta accidentale,
    ;; composti"), sonst sind alle '(in)composto' maskulin. Diese Variante nimmt die Schreibart in
    ;; der Überschrift des Beispiels auf.
    ;;
    ;; 2. Alle '(in)composty' beziehen sich stets auf die 'quarta', sind also immer feminin. Diese
    ;; Variante entspricht der Handhabung im vorhergehenden Beispiel (I.33).
    ;;
    ;; Ich habe die Codierung nicht angefasst und warte auf eine Präferenz eurerseits.
    ;;
    ;; AS: Ich ziehe die 2. Möglichkeit vor, und habe 'composta' im Bezug zur 'quarta' gewählt.
    ;;
    ;; JK: gut, ich habe das in den anderen Sprachen entsprechend deiner Präferenz angepasst. Diese
    ;; Anpassung geschah nach dem Lektorat der italienischen Texte durch Luigi, d.h. er muss das
    ;; nochmals final absegnen. Die Diskussion schliesse ist deshalb noch nicht.
    ;;
    ;; LUIGI
    ;; OPEN
    (s1 (:alt (:it "salto di più\\di quarta\\accidentale\\incomposta")
              (:de "Sprung di più\\di quarta\\accidentale\\incomposta")
              (:en "leap of più\\di quarta\\accidentale\\incomposta")))
    (s2 (:alt (:it "gradi di più\\di quarta\\accidentale\\composta")
              (:de "Tonschritte di più\\di quarta\\accidentale\\composta")
              (:en "steps of più\\di quarta\\accidentale\\composta")))
    (s3 (:alt (:it "salti di più\\di quarta\\accidentale\\incomposta")
              (:de "Sprünge di più\\di quarta\\accidentale\\incomposta")
              (:en "leaps of più\\di quarta\\accidentale\\incomposta")))
    (s4 (:alt (:it "gradi di più\\di quarta\\accidentale\\composta")
              (:de "Tonschritte di più\\di quarta\\accidentale\\composta")
              (:en "steps of più\\di quarta\\accidentale\\composta")))
    (s5 (:alt (:it "salto di più\\di quarta\\accidentale\\incomposta")
              (:de "Sprung di più\\di quarta\\accidentale\\incomposta")
              (:en "leap of più\\di quarta\\accidentale\\incomposta")))
    (s6 (:alt (:it "gradi di più\\di quarta\\accidentale\\incomposta")
              (:de "Tonschritte di più\\di quarta\\accidentale\\incomposta")
              (:en "steps of più\\di quarta\\accidentale\\composta")))
    (s7 (:alt (:it "salto di più\\di quarta\\accidentale\\incomposta")
              (:de "Sprung di più\\di quarta\\accidentale\\incomposta")
              (:en "leap of più\\di quarta\\accidentale\\incomposta")))))
  (:data
   (:text 150 58
          (181 1818 "ᴇſſempio del ſalto piùche di Ɋuarta,& de ſuoi gradi incompoſto & compoſto."))
   (:music 2218
           (:voice v1)
           (:section s1)
           cclef7 b38 sb1 b38 sbd4 b38 bl
           (:section s2)
           sb2 b22 sb3 b22 sb4 b22 sbd5 bl
           (:section s3)
           sb6 sbc9 sb5 b22 sbd8 bl
           (:section s4)
           sbd8 b22 sb7 b22 sb6 b22 sb5 bl
           (:section s5)
           b38 fl6 b27 sbd6 b38 sb3 bl
           (:section s6)
           fl5 b22 sbd5 sb4 sb3 b22 fl2 sb2 bl
           (:section s7)
           fl4 b38 sbd4 b38 fl1 b22 sb1 bl)
   (:text 80 58
          (35 nil
              (:alt (:diplomatic "ſalti di più")
                    (:critical "ſalto di più")
                    (:coord-barre "TZ2 TE1")
                    (:coord-norm "G1 US Z1")
                    (:comment "In allen Exemplaren: »ſalti«.")
                    (:flag :ready) (:id 1)))
          (325 nil "gradi di più")
          (613 nil
               (:alt (:diplomatic "ſalto di più")
                     (:critical "ſalti di più")
                     (:coord-barre "TZ2 TE3")
                     (:coord-norm "G3 US Z1")
                     (:comment "In allen Exemplaren: »ſalto«.")
                     (:flag :ready) (:id 2)))
          (896 nil "gradi di più")
          (1193 nil "ſalto  di più")
          (1503 nil "gradi di più di")
          (1880 nil "ſalto di più"))
   (:text 70 58
          (38 nil "di 4. acci.")
          (320 nil "di 4. accid.")
          (608 nil "di 4. acci.")
          (891 nil "di 4. accid.")
          (1190 nil "di 4. accid.")
          (1500 nil "quarta accid.")
          (1868 nil "di 4.accid."))
   (:text 70 58
          (37 nil "incomp.")
          (312 nil "comp.")
          (605 nil "incomp.")
          (882 nil "comp.")
          (1182 nil "incomp.")
          (1500 nil "comp.")
          (1867 nil "incomp."))))
