`((:header
   (:filename "b4-c07-m1")
   (:alt-name "m4.006")
   (:comment "q021_s151, rotation: , origin: 425")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio delle pause notate nel tempo perfetto,\\& nel imperfetto")
   (:section-captions
    ;; Setzung der captions gemäss Bibelgruppe
    ;; Positionierung der Überschriften in der idealisierten Fassung ev. anzupassen und zu ergänzen?
    (s1 "[Buono]")
    (s2 "[Buono]")
    (s3 "Non buono")
    (s4 "[Non buono]")
    (s5 "Non buono")
    (s6 "[Non buono]")))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:data
   (:text 70 58
          (351 1548 "Eſſempio delle pauſe nel tempo perfetto,& nel imperfetto."))
   (:text 90 58
          (1809 nil "non"))
   (:music 2222
           (:voice v1)
           (:section s1) cclef7 b38 met-perf-min b38 lrest24 b22 lrest24 b22 lrest46 b22 brrest8 b22 brrest6 b22 brrest4 b22 sbrest3 b22 sbrest3 b38 bl
           (:section s2) b38 met-imperf-min-dim b38 lrest24 b22 lrest24 b38 lrest46 b22 lrest46 b38 lrest68 b22 lrest68 b38 lrest46 b22 lrest46 b38 lrest24 b22 lrest24 b38 lrest46 b22 brrest6 b22 sbrest7 b38 bl
           (:section s3) b38 b38 met-imperf-min-dim b38 lrest46 b38 sbrest5 b38 sbrest7 b38 sbrest7 b22 mrest5 b22 mrest5 b38 bl b125)
   (:text 90 58
          (179 nil "buono")
          (680 nil "non")
          (1011 nil "buono"))
   (:music 2209
           (:section s4) cclef7 b38 sbrest7 b38 sbrest5 b38 mrest3 b38 mrest1 b38 sb6 b38 sbrest7 b38 lrest46 b38 bl
           (:section s5) b38 sbrest7 b38 lrest68 b38 brrest8 b38 b38 bl
           (:section s6) b38 lrest46 b38 brrest6 b38 sbrest7 b38 met-imperf-min b38 smrest3 b38 b38 bl b38 b118 b118 b118 b118 b118 b22 b22 b38 b118)))
