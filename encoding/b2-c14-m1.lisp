`((:header
   (:filename "b2-c14-m1")
   (:alt-name "m2.017")
   (:comment "q021_s066, rotation: -0.4, origin: 1011")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Essempio de i molti modi, che si può accompagnare la Terza minore.")
                 (:de "Beispiel von vielen Arten und Weisen, wie man die terza minore begleiten kann")
                 (:en "Example of the many ways one can accompany the terza minore")))
   (:section-headings
    (s1 (:alt (:it "grado molle\\e consonante")
              (:de "molle und\\konsonanter Tonschritt")
              (:en "molle and\\consonant step")))
    (s2 (:alt (:it "grado incitato\\[e] molle")
              (:de "incitato\\und molle")
              (:en "incitato and\\molle step")))
    ;; AS: Kommentar David: Captions to Nos. 3–8: personally I don't think it's necessary to add
    ;; "step[s]" in square brackets – it's obvious from Nos. 1 and 2 that this is also meant for
    ;; Nos. 3–8.
    ;;
    ;; kir: sehe ich auch so (und vermute generell, dass wir/ich an einigen Stellen 'kürzer'
    ;; übersetzen sollte ...)
    ;;
    ;; JK: in der deutschen Übersetzung fehlen 'schritte' bzw. 'gradi' prinzipiell. So lassen?
    ;;
    ;; MARTIN
    ;; OPEN
    (s3 (:alt (:it "[grado] incitato\\e molle")
              (:de "incitato\\und molle")
              (:en "incitato and\\molle [step]")))
    (s4 (:alt (:it "[gradi] incitati\\ ")
              ;; Kommentar Anne: willst du noch etwas hinzufügen?
              ;; JK: Meinst du wegen der leeren Zeile? Die ist nötig, damit die vertikalen
              ;; Abstände bei allen sections dieses Beispiels gleich berechnet werden. Keine
              ;; inhaltliche Bedeutung.
              ;;
              ;; AS: OK ich habe verstanden.
              ;;
              ;; DONE
              (:de "incitati")
              (:en "incitati [steps]")))
    (s5 (:alt (:it "[grado] incitato\\e molle")
              (:de "incitato\\und molle")
              (:en "incitato and\\molle [step]")))
    (s6 (:alt (:it "[grado] incitato\\e molle")
              (:de "incitato\\und molle")
              (:en "incitato and\\molle [step]")))
    (s7 (:alt (:it "[gradi] incitati\\ ")
              ;; Kommentar Anne: willst du noch etwas hinzufügen?
              ;; JK: Siehe Kommentar oben.
              ;;
              ;; AS: Auch hier verstanden
              ;;
              ;; DONE
              (:de "incitati\\")
              (:en "incitati [steps]\\")))
    (s8 (:alt (:it "[grado] molle\\et incitato")
              (:de "molle\\und incitato")
              (:en "molle and\\incitato [step]")))))
  (:data
   (:text 90 58
          (330 1555 "Eſſempio de i molti modi,che ſi può accompagnare la Terza minore."))
   (:music 2216
           (:voice v1)
           (:section s1) cclef7 b38 sb2 b38 b38 sb5 b38 b38 bl
           (:section s2) b38 sb7 b38 b38 sb6 b38 b38 bl
           (:section s3) b38 sb7 b38 sb6 b38 bl
           (:section s4) sb7 b38 sb5 b22 bl
           (:section s5) (:newline) b38 sb7 b38 sb5 b38 bl
           (:section s6) b38 sb7 b38 sb8 b38 bl
           (:section s7) b38 sb7 b38 sb6 b22 bl
           (:section s8) b38 sb7 b38 sb5 b38 bl b38)
   (:text 90 58
          (0 nil "gra.mol.e cōſo.")
          (365 nil "gra.incit.mol.")
          (702 nil "inci.e mol.")
          (966 nil "incitati")
          (1163 nil "inc. e mol.")
          (1412 nil "inc.e mol.")
          (1663 nil "incitati")
          (1914 nil "mol.et incit."))
   (:music 2210
           (:voice v2)
           (:section s1) cclef7 b38 sb6 b38 b38 sb7 b38 b22 bl
           (:section s2) b38 sb5 b38 b38 sb2 b38 b38 bl
           (:section s3) b38 sb5 b38 sb1 b38 bl
           (:section s4) b38 sb5 b38 sb9 bl
           (:section s5) b38 sb5 b38 sb1 b38 bl
           (:section s6) sb5 b38 sb4 b38 bl
           (:section s7) b38 sb5 b38 sb9 b38 bl
           (:section s8) b38 sb5 b22 sb5 b38 b38 bl)))
