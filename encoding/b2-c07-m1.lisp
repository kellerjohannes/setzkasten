`((:header
   (:filename "b2-c7-m1")
   (:alt-name "m2.009")
   (:comment "q021_s061, rotation: 0, origin: 491")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio sopra il modo di comporre di quarta in quinta\\sincopata et non sincopata, et di quinta in quarta\\A tre voci")
   ;; Reihenfolge der Stimmen zu überlegen, insbesondere in s2 und s3 -> siehe Kommentar unten
   (:voice-labels
    (s1 v1 "Soprano")
    (s1 v2 "Tenore")
    (s1 v3 "Basso")
    (s2 v1 "Tenore")
    (s2 v2 "Alto")
    (s3 v1 "Alto")
    (s3 v2 "Tenore")
    (s4 v1 "[Tenore]")
    (s4 v2 "[Tenore]")))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
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
           ;; hier stimmt etwas überhaupt nicht, ist das die korrekte :section-Zuweisung?

           ;; Frage nach der Partiturgliederung, Befund Anne:
           ;; Ich glaube es gibt
           ;; keine 3-stimmige Lösungen, sondern nur 2-stimmigen. Er schreibt gerade
           ;; vor dem Beispiel, dass wenn man von der Quarte zur Quinta geht, hat
           ;; man einen Semitono entweder im oberen oder in der unteren Stimme, wie
           ;; man es im Beispiel steht. Dann müsste paarweise gegliedert sein,
           ;; Tenore-Alt mit dem Halbton unten, Alt-Tenor, mit dem Halbton oben, und
           ;; dann die nicht bezeichneten, wo der Semitono in der unteren
           ;; Stimme. Die Klangfolgen finde ich merkwürdig, aber vielleicht sind sie
           ;; gedacht in einem grösseren Satz verborgen zu sein.

           ;; Johannes: die Normalisierung habe ich entsprechend eingerichtet, ist aber noch
           ;; zu diskutieren.
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
