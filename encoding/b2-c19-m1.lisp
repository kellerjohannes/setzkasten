`((:header
   (:filename "b2-c19-m1")
   (:alt-name "m2.022")
   (:comment "q021_s070, rotation: -0.61, origin: 973")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Esempio della sesta minore, come in vari modi si può comporre")
                 (:de "Beispiel, wie die sesta minori auf unterschiedliche Arten und Weisen gesetzt werden kann")
                 (:en "Example of the sesta minore: how it can be composed in various ways")))
   (:section-headings
    (s1 (:alt (:it "A due voci")
              (:de "mit zwei Stimmen")
              (:en "in two voci")))
    (s2 (:alt (:it "A tre voci")
              (:de "mit drei Stimmen")
              (:en "in three voci")))
    (s3 (:alt (:it "[A due voci]")
              (:de "[mit zwei Stimmen]")
              (:en "[in two voci]")))
    (s4 (:alt (:it "A due voci")
              (:de "mit zwei Stimmen")
              (:en "in two voci"))))
   (:section-captions
    (s2 (:alt (:it "De salti")
              (:de "mit Sprüngen")
              (:en "with leaps"))))
   (:voice-order
    (s1 v1 v2)
    (s2 v1 v2 v3)
    (s3 v2 v1)
    (s4 v1 v2)))
  (:data
   (:text 110 58
     (353 1487 "Eſſempio della Seſta minore,come in uarij modi ſi può comporre."))
   (:text 90 58
     (125 nil "à due")
     (284 nil "uoci")
     (532 nil "à tre")
     (685 nil "uoci")
     (942 nil "de ſalti")
     (1800 nil "à due uoci."))
   (:music 2218
           (:section s1)
           (:voice v1) cclef7 b38 sb7 sb8 b38
           (:voice v2) cclef7 b22 sb2 sb1 b38 bl
           (:section s2)
           (:voice v1) b38 sb10 sb9 bl
           (:voice v2) sb5 b38 sb2 b38
           (:voice v3) cclef7 b38 sb7 b38 sb9 b38
           (:section s3)
           (:voice v1) (:f-clef) max7 fclef7 b38 sb6 sb2 b38
           (:voice v2) cclef7 b22 mrest7 sb7 b38 m9 b38
           (:section s4)
           (:voice v1) cclef7 b38 sb3 sb2 bl
           (:voice v2) mrest7 m7 dot8 sm6
           (:alt (:diplomatic sb9)
                 (:critical m9)
                 (:coord-barre "N19")
                 (:coord-norm "G4 St2 N3")
                 (:comment "In allen Exemplaren wurde diese Note als Semibrevis gedruckt. Im Exemplar q067 wurde sie von einem Leser mit Bleistift zu einer Minima korrigiert.")
                 (:flag :ready) (:id 1))
                 ;; Kommentar Anne Ich würde den Punkt nicht ergänzen.
                 ;;
                 ;; JK: Dann geht das Beispiel aber nicht auf, was für die moderne Notenschrift
                 ;; ein Problem ist. Kannst du damit leben, dass der Punkt ergänzt ist?
                 ;; Alternativ müsste ich schauen, ob ich ihn einpflegen, aber unsichtbar machen
                 ;; kann.
                 ;;
                 ;; AS: Kommentar David: No. 4: by comparison with other music examples, and because
                 ;; it retains the overall single breve duration, I think it's much more likely that
                 ;; the voice durations should be matched by ending the leaping voice with a minim
                 ;; (instead of ending the other voice with a dotted semibreve, as Johannes has
                 ;; done).
                 ;;
                 ;; JK: Luigi bestätigt, dass diese Korrektur in einer Quelle handschriftlich
                 ;; gemacht wurde (nicht in-house, sondern von einem Leser). Ich habe den Notentext
                 ;; entsprechend angepasst.
                 ;;
                 ;; DONE
           bl)))
