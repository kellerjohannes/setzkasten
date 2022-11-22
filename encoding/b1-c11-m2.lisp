`((:header
   (:filename "b1-c11-m2")
   (:alt-name "")
   (:comment "")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "")
   (:section-headings
    (s1 "tono diviso in 4 parti\\ascendenti")
    (s2 "tono diviso in 4 parti\\ascendenti"))
   (:section-captions
    (s1 "per ♮: ut-re-mi-fa-re")
    (s2 "per ♭: re-mi-fa-re-mi"))
   (:voice-labels
    (:all v1 "")))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:data
   (:text 90 58
         (36 691 "Tono diuiſo in 4. parti aſcen.")
         (754 650 "To.diuiſo in 4. parti aſcen."))
   (:music 1400
           (:voice v1)
           (:section s1)
          cclef7 b38 sb4 b38 sbd4 b22 sh4 b22 (:alt (:diplomatic sbd4)
                                                    (:idealised sb4)) sbd4 b38 fl5 b38 sbd5 b38 sb5 b38
           (:section s2)
          cclef7 (:alt (:diplomatic b38)
                       ;; Achtung, tonality definition muss ergänzt werden
                       (:idealised fl6)) sb4 b38 sbd4 b38 sh4 b22 sb4 b38 fl5 b38 sbd5 b38 sb5 bl)
   (:text 90 58
          ;; per bequadro / per bemolle ergänzen
          (:alt (:diplomatic)
                (:idealised (0 nil "ꝑ ♮.")))
         (113 nil "ut")
         (203 nil "re")
         (344 nil "mi")
         (517 nil "fa")
         (604 nil "re")
          (:alt (:diplomatic)
                (:idealised (700 nil "ꝑ ♭.")))
         (801 nil "re")
         (890 nil "mi")
         (1058 nil "fa")
         (1206 nil "re")
         (1295 nil "mi"))))
