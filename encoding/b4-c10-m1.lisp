`((:header
   (:filename "b4-c10-m1")
   (:alt-name "m4.010")
   (:comment "q021_s153, rotation: 1.16, origin: 464. Von diesem Beispiel ist die Implementierung der Normalisierung noch nicht gemacht.")
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
   ;; OPEN
   (:section-headings
    (s1 (:alt (:it "Esempio delle note colorite nel canto fermo")
              (:de "Beispiel der farbigen Noten im canto fermo.")
              (:en "Example of colored notes in canto fermo")))
    (s2 (:alt (:it "Colorite nel tempo perfetto")
              (:de "farbige [Noten] im Tempus perfectus")
              (:en "Colored [notes] in perfect tempus")))
    (s3 (:alt (:it "Colorite nel tempo imperfetto")
              (:de "farbige [Noten] im Tempus imperfectus")
              (:en "Colored [notes] in imperfect tempus")))
    (s4 (:alt (:it "Colorite nell'emiolia maggiore")
              (:de "farbige [Noten] in Hemiola maior")
              (:en "Colored [notes] in emiolia maggiore")))
    (s5 (:alt (:it "Colorite nell'emiolia minore")
              (:de "farbige [Noten] in Hemiola minor")
              (:en "Colored [notes] in emiolia minore")))
    (s6 (:alt (:it "Cantar alla breve detto da prattici")
              (:de "von den Praktikern Singen alla breve genannt")
              (:en "Called singing alla breve by practical [musicians]")))))
  (:data
   (:text 90 58
          (163 1037 "Eſſempio delle note colorite nel canto fermo")
          (1615 587 "ᴄolorite nel tēpo perfetto"))
   (:music 2209
           (:voice v1)
           (:section s1) (:f-clef) max5 fclef5 b22 brbl3 b22 brbl5 b22 brbl4 b22 brbl3 b22 brbl7 b22 brbl5 b22 brbl6 b22 brbl7 b22 brbl9 b22 brbl8 b22 brbl7 b22 brbl10 b22 brbl9 brbl8 b22 brbl7 brbl6 brbl7 b22 brbl3 b22 brbl6 b22 brbl5 b22 brbl4 b22 brbl3 b22
           (:section s2) cclef7 b22
           (:alt (:diplomatic met-imperf-min-dim)
                 (:critical met-perf-min-dim)
                 (:coord-barre "MZ1 N23")
                 (:coord-norm "G2")
                 (:comment "Original: Taktsignatur ist ein gestrichenes C.")
                 (:flag :ready) (:id 1))
           met-3-2 b22 br0 sb1 brbl3 b22 brbl2 b22 brbl4 bl)
   (:text 90 58
          (168 691 "ᴄolorite nel tempo imperfetto")
          (1618 593 "ᴄolorite nellʼEmiolia mag."))
   (:music 2214
           (:section s3) cclef7 b22 met-imperf-min-dim b22 m1 dot2 sm2 b22 m3 b22 sb4 b22 m5 b22
           sbbl7
           ;; JK: Hier ist ausnahmsweise eine Abweichung zwischen Idealisierung und
           ;; Normalisierung beabsichtigt, denn die schwarze Notation wird hier als punktierte
           ;; Figur (siehe erste zwei Noten dieser Phrase) gelesen.
           ;;
           ;; OPEN
           b22 sm6 b22 m5 b22 m4 b22 sb5 b22
           brbl3 b22 sbbl2
           ;; JK: Hier ist ausnahmsweise eine Abweichung zwischen Idealisierung und
           ;; Normalisierung beabsichtigt, denn die schwarze Notation wird hier als punktierte
           ;; Figur (siehe erste zwei Noten dieser Phrase) gelesen.
           ;;
           ;; OPEN
           b22 m1 b22 b22 sb8 b22 m7 b38 br8 b38 bl
           (:section s4) (:newline) b38 brbl1 b22 sbbl2 b22 sbbl3 b22 sbbl4 b22 sbbl5 b22 brbl1 b22 brbl8 b22 brbl7 b22 br8 b38 bl)
   (:text 90 58
          (259 661 "ᴄolorite nellʼᴇmiolia minore")
          (1290 834 "ᴄantar alla breue detto da Prattici."))
   (:music 2206
           (:section s5) cclef7 b22 met-imperf-min-dim b22 met-3 sbbl1 b22 sm2 b22 sbbl3 b22 sm1 b22 sbbl8 b22 sm6 b22 sbbl7 b22 sm6 b22 sbbl5 b22 sm4 b22 br5 b22
           (:section s6) cclef7 b22 met-imperf-min b22 sm4 b22 sm5 b22 sm6 b22 sm7 b22 sm5 dot6 cr4 b22 cr3 b22 cr2 sm1 sm5 sm7 dot8 cr6 cr5d sm6 br7 bl)))
