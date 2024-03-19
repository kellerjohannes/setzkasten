`((:header
   (:filename "b4-c10-m1")
   (:alt-name "m4.010")
   (:comment "q021_s153, rotation: 1.16, origin: 464.")
   (:creator "Vicentino21 / Johannes Keller")
   ;; Bibelgruppe:
   ;; * 1 Cantus Firmus (erstes Beispiel)
   ;;     kann man diese Melodie identifizieren? - > Martin / Kelly: nicht
   ;;     identifizierbar
   ;; * 2 'colorite' im 'tempo perfetto'
   ;;     Schwarze Noten sind binär in ternärem Kontext
   ;; * 3 'colorite' im 'tempo imperfetto'
   ;;     Schwarze Noten erhalten den halbierten Wert
   ;; * 4 'colorite' als 'emiolia maggiore'
   ;;     Schwarze Noten erhalten den halbierten Wert
   ;; * 5 'colorite' als 'emiolia minore'
   ;;     könnte auch 'weiss' notiert sein ohne Unterschied
   ;; * 6 schwarze Notation
   ;;     Keine Unterscheidung zu alternativer Notation, nur schwarze Notenwerte
   ;;     werden verwendet für die Notation ('note nere' als rein deskriptive Form)
   ;;
   ;; Auflösung der schwarzen Notation in der Normalisierung noch nicht geklärt (inhaltlich unklar)
   ;; zu diskutieren: Wie ist die schwarze Notation in Lilypond darzustellen?
   ;; Anne: mit eckigen Klammerfragmenten (nicht identisch mit der Klammer, die für chromatisch
   ;; und enharmonische Ligaturen verwendet wird).
   ;;
   ;; Zu s3: Federico sieht entweder eine triolisierende Interpretation, oder (eher wahrscheinlich)
   ;; nach Willi Apel eine punktierte Interpretation, d.h. der erste Color entspricht der
   ;; rhythmischen Figur zu Beginn der Phrase.
   ;;
   ;; JK: Ich habe für alle sechs Beispiele konkrete Intepretationen vorgeschlagen. Bei den
   ;; Kapitelkommentaren habe ich vermerkt, dass man für dieses Kapitel ev. etwas formulieren muss,
   ;; um die Interpretationen zu begründen.
   ;;
   ;; DONE
   (:section-headings
    (s1 (:alt (:it "Esempio delle note colorite nel canto fermo")
              (:de "Beispiel der farbigen Noten im canto fermo")
              (:en "Example of colored notes in canto fermo")))
    ;; Anne: sollte nicht alle folgenden auch mit "Example of" beginnen?
    ;;
    ;; JK: Ja, finde ich gut, habe ich in allen Sprachen in eckigen Klammern ergänzt.
    ;;
    ;; DONE
    (s2 (:alt (:it "[Esempio delle note] colorite nel tempo perfetto")
              (:de "[Beispiel der] farbigen [Noten] im Tempus perfectus")
              (:en "[Example of] colored [notes] in perfect tempus")))
    (s3 (:alt (:it "[Esempio delle note] colorite nel tempo imperfetto")
              (:de "[Beispiel der] farbigen [Noten] im Tempus imperfectus")
              (:en "[Example of] colored [notes] in imperfect tempus")))
    (s4 (:alt (:it "[Esempio delle note] colorite nell'emiolia maggiore")
              (:de "[Beispiel der] farbigen [Noten] in Hemiola maior")
              (:en "[Example of] colored [notes] in emiolia maggiore")))
    (s5 (:alt (:it "[Esempio delle note] colorite nell'emiolia minore")
              (:de "[Beispiel der] farbigen [Noten] in Hemiola minor")
              (:en "[Example of] colored [notes] in emiolia minore")))
    (s6 (:alt (:it "Cantar alla breve detto da prattici")
              (:de "von den Praktikern Singen alla breve genannt")
              (:en "Called singing alla breve by practical [musicians]")))))
  (:data
   (:text 90 58
     (163 1037 "Eſſempio delle note colorite nel canto fermo")
     (1615 587 "ᴄolorite nel tēpo perfetto"))
   (:music 2209
           (:voice v1)
           (:section s1) (:f-clef) max5 fclef5
           (:alt (:diplomatic)
                 (:modern met-imperf-min)
                 (:coord-barre "")
                 (:coord-norm "G1")
                 (:comment "Die Taktsignatur wurde für die moderne Notenschrift ergänzt.")
                 (:flag :ready) (:id 1))
            b22 brbl3 b22 brbl5 b22 brbl4 b22 brbl3 b22 brbl7 b22 brbl5 b22 brbl6 b22 brbl7 b22 brbl9 b22 brbl8 b22 brbl7 b22 brbl10 b22 brbl9 brbl8 b22 brbl7 brbl6 brbl7 b22 brbl3 b22 brbl6 b22 brbl5 b22 brbl4 b22 brbl3 b22
           (:section s2) (:newline) cclef7 b22
           (:alt (:diplomatic met-imperf-min-dim)
                 (:critical met-perf-min-dim)
                 (:coord-barre "MZ1 N23")
                 (:coord-norm "G2")
                 (:comment "In allen Exemplaren: Taktsignatur ist ein gestrichenes C.")
                 (:flag :ready) (:id 2))
           met-3-2 b22 br0 sb1 (:color-start) brbl3 b22 brbl2 b22 (:color-stop) brbl4 bl)
   (:text 90 58
     (168 691 "ᴄolorite nel tempo imperfetto")
     (1618 593 "ᴄolorite nellʼEmiolia mag."))
   (:music 2214
           (:section s3) (:newline) cclef7 b22 met-imperf-min-dim b22 m1 dot2 sm2 b22 m3 b22 sb4 b22 m5 b22

           (:alt (:diplomatic sbbl7 b22 sm6)
                 (:modern (:color-start) m7 dot6 (:color-stop) sm6)
                 (:coord-barre "MZ2 N6-7")
                 (:coord-norm "G3 N6-7")
                 (:comment "Dieser Color wurde als punktierte Figur (punktierte Minima / Semiminima) in die moderne Notenschrift übertragen.")
                 (:flag :ready) (:id 3))
           ;; JK: Hier ist ausnahmsweise eine Abweichung zwischen Idealisierung und
           ;; Normalisierung beabsichtigt, denn die schwarze Notation wird hier als punktierte
           ;; Figur (siehe erste zwei Noten dieser Phrase) gelesen.
           ;;
           ;; DONE
           b22 m5 b22 m4 b22 sb5 b22

           (:alt (:diplomatic brbl3 b22 sbbl2)
                 (:modern (:color-start) sb3 dot2 (:color-stop) m2)
                 (:coord-barre "MZ2 N11-12")
                 (:coord-norm "G3 N11-12")
                 (:comment "Dieser Color wurde als punktierte Figure (punktierte Semibrevis / Minima) in die moderne Notenschrift übertragen.")
                 (:flag :ready) (:id 4))
           ;; JK: Hier ist ausnahmsweise eine Abweichung zwischen Idealisierung und
           ;; Normalisierung beabsichtigt, denn die schwarze Notation wird hier als punktierte
           ;; Figur (siehe erste zwei Noten dieser Phrase) gelesen.
           ;;
           ;; DONE
           b22 m1 b22 b22 sb8 b22 m7 b38 br8 b38 bl
           (:section s4) (:newline)
           (:alt (:diplomatic b38 brbl1 b22 sbbl2 b22 sbbl3 b22 sbbl4 b22 sbbl5 b22 brbl1 b22 brbl8 b22 brbl7 b22 br8 b38 bl)
                 (:modern (:duration-override 2/3)
                          (:color-start) br1 (:color-stop) sb2
                          (:color-start) sb3  sb4 (:color-stop) sb5
                          (:color-start) br1 br8 (:color-stop) br7
                          (:duration-override 1) br8)
                 (:coord-barre "")
                 (:coord-norm "")
                 (:comment "") (:flag :draft) (:id 0)))
   (:text 90 58
          (259 661 "ᴄolorite nellʼᴇmiolia minore")
          (1290 834 "ᴄantar alla breue detto da Prattici."))
   (:music 2206
           (:section s5) (:newline) cclef7 b22 met-imperf-min-dim b22 met-3

           (:alt (:diplomatic sbbl1 b22 sm2 b22 sbbl3 b22 sm1 b22 sbbl8 b22 sm6 b22 sbbl7 b22 sm6 b22 sbbl5 b22 sm4 b22 br5 b22)
                 (:modern (:duration-override 2/3)
                          (:color-start) m1 (:color-stop) sm2
                          (:color-start) m3 (:color-stop) sm1
                          (:color-start) m8 (:color-stop) sm6
                          (:color-start) m7 (:color-stop) sm6
                          (:color-start) m5 (:color-stop) sm4 br5
                          (:duration-override 1))
                 (:coord-barre "")
                 (:coord-norm "")
                 (:comment "") (:flag :draft) (:id 0))

           (:section s6) (:newline) cclef7 b22 met-imperf-min b22 sm4 b22 sm5 b22 sm6 b22 sm7 b22 sm5 dot6 cr4 b22 cr3 b22 cr2 sm1 sm5 sm7 dot8
           (:alt (:diplomatic cr6 cr5d)
                 (:critical scr6 scr5d)
                 (:coord-barre "MZ3 N23-24")
                 (:coord-norm "G6 N12-13")
                 (:comment "In allen Exemplaren: beide Noten als Crome gedruckt.")
                 (:flag :ready) (:id 5))
           sm6 br7 bl)))
