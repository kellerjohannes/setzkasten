(in-package :setzkasten)

(defparameter *scores*
  '((("glyph-catalog" 12000 1500 "white")
     ((music nil sm0 ba bb bc br0 br1 br2 br3 br4 br5 sb0 sb1 sb2 sb3 sb4 sb5 brb0 brb1 brb2 brb3 brb4 brb5 sbb0 sbb1 sbb2 sbb3 sbb4 sbb5 brd0 brd1 brd2 brd3 brd4 brd5 brd6 brd7 brd8 brd9 brd10 sbd0 sbd1 sbd2 sbd3 sbd4 sbd5 sbd6 sbd7 sbd8 sbd9 sbd10 m0 m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 cr1u scr1u)))
    (("minimal-test" 500 1500 "white")
     ((music nil m5)))
    (("test-melody" 3000 1500 "white")
     ((music nil bc br1 br5 sb2 sb3 sb2 br1 br1 ba)))
    (("flag-devel" 800 1500 "white")
     ((music nil scr1u scr1d cr1u cr1d)))
    (("multiline-test" 5000 3000 "white")
     ((music nil br0 br1 br2 br3 br4)
      (music nil sb0 sb1 sb2 sb4)
      (music nil m0 m1 m2 m3 m4)))
    (("padding-test" 6500 3000 "white")
     ((music nil sb4 ba m3 ba m2 ba m1 ba sb4 ba m3 ba m2 ba m1 ba m8 ba sb9 ba m8 ba m4 ba sb5 ba m4 ba sb7 bb sm6 ba sm4 ba sm5 ba m6 ba m3 ba m4 ba m5 bb sm4 ba m3 ba sb2 m1 sb4 br1 bb)
      (music nil bb sb5 bb sb8 bb m7 m6 ba sm5 ba m4 ba m3 ba sb2 ba sm1 ba sm2 ba sm3 ba sm4 ba sm1 ba m8 ba sm7 ba m9 ba m8 ba m7 bb sm6 ba m5 ba sb4 ba m3 ba br1 bb)
      (music nil m2 bb sm2 ba m3 ba sb2 ba sb5 ba m4 ba m5 ba sb2 ba sb9 ba m8 ba sb9 ba m8 ba m9 ba m6 ba m7 ba m5 ba m2 ba m9 ba m6 bb sm7 ba m8 ba sb5 ba m4 ba m4 ba m2 ba sb5 ba br2 bb)))
    (("rest-devel" 800 1500 "white")
     ((music nil bb rm5 rsm5 ba rmaxima3 rmaxima3 bb)))
    (("sharp-devel" nil nil "white")
     ((music nil bc)
      (music nil bb sh5 sb5 ba sh4 sb4 ba ssh5 sb5 ba ssh4 sb4 ba bb)))
    (("libro-5-test" nil nil "white")
     ((music nil bc sh1 sb1 sh2 sb2 sb3 sh4 sb4 ssh5 sb5 sb6 sh7 sb7 sh8 sb8 bb)))
    (("flat-devel" nil nil "white")
     ((music nil bc f5 bb f2-9 bb f5m bc)))
    (("clef-devel" nil nil "white")
     ((music nil ba maxima7 fclef7 bb cclef7 bc)))
    (("barline-devel" nil nil "white")
     ((music nil ba bl ba dbl ba bldd ba dbldd ba dbldl)))
    (("m1.38-devel" nil nil "white")
     ((music nil cclef7 ba sb1 ba sb2 ba sh3 sb3 bl
       sb2 ba sh4 ba sb4 bl
       sh3 ba sb3 ba sh5 ba sb5 bl
       f4 ba sb4 ba sb5 ba f6 ba sb6 bl
       sb8 ba sb7 ba f6 ba sb6 bl
       f5 ba sb5 ba sbd3 bl
       sh3 ba sb3 ba sb2 ba sb1 bl)))
    (("m3.101-devel" nil nil "white")
     ((music nil cclef5 sb0 sh2 ba sb2 f3 sbd3 sb3 ba sbd3 f6 ba sb6 ba f6 sbd6 sb6 sbd6 f7 ba sb7 ba f7 sbd7 sb7 bl
       sb1 ba sbd1 f2 ba sb2 f2 ba sbd2 f4 sbd4 ba sb4 sbd4 f7 ba sb7 ba f7 ba sbd7 ba sb7 ba sbd7 sb8 bl)))
    (("m2.33-devel" nil nil "white")
     ((music nil cclef7 ba sb4 ba sb3 ba ba bl
       ba sb4 ba sb3 ba bl
       ba sb4 ba sb3 ba bl
       ba sb4 ba sb3 ba bl
       ba sb4 ba sb3 ba bl
       ba sb4 ba sb3 ba bl
       ba sb4 ba sb3 ba bl
       ba sb8 ba sb7 ba bl
       ba sb8 ba sb7 ba bl)
      (music nil maxima7 fclef7 f3 ba sb6 ba sb7 bl
       ba sb4 ba sb7 ba bl
       ba sb6 ba sb5 ba bl
       f6 sb6 ba sb5 ba bl
       m3 m4 m2 m3 bl
       ba sb1 m2 m9 ba bl
       ba sb4 ba sb9 bl
       ba sb7 ba sb6 ba bl
       ba sb8 sb9 ba bl)))
    (("test vicentino21" nil nil "white")
     ((music nil bc sb5 sb4 m1 bl)))
    (("text implementation devel" nil nil "white")
     ((music nil bb m1 m2 m3 m4 m5)
      (text 100 80 (100 800 "text string"))
      (music nil bb sb1 sb2 sb3 sb4 sb5)))
    (("m1.47-devel" nil nil "white")
     ((text 200 150 (780 5300 "Eſſempio di più di Quinta imperfetta accidentale, compoſto & incompoﬆo."))
      (music nil maxima7 fclef7 sb3 sb4 sb5 sb6 sbd7
       cclef5 bb sb4 bb sbd8 bb
       cclef5 bb sh1 bb sb1 bb sbd5 bl
       sh2 sb2 sb3 sb4 sb5 sbd6 bl
       sb8 bb f4 bb sbd4 bb bl
       sb7 sb6 sb5 sb4 sbd3 bl
       bb sb6 bb sbd2 bb bl)
      (text 200 150
	(290 nil "più di quinta")
	(1300 nil "più di quin.")
	(2300 nil "più di quin.")
	(3200 nil "più di quinta")
	(4300 nil "più di quin.")
	(5150 nil "più di quinta")
	(6150 nil "più di quin."))
      (text 200 150
	(290 nil "imper. natur.")
	(1300 nil "imper. nat.")
	(2300 nil "imp. accid.")
	(3200 nil "imper.accid.")
	(4300 nil "imper.acci.")
	(5150 nil "imper. acci.")
	(6150 nil "impe. accid."))
      (text 200 150
	(290 nil "comp.")
	(1300 nil "incomp.")
	(2300 nil "incomp.")
	(3200 nil "comp.")
	(4300 nil "incomp.")
	(5150 nil "comp.")
       (6150 nil "incomp."))))
    (("m2.22-devel" nil nil "white")
     ((text 400 150 (800 nil "Eſſempio della Seſta minore, come in varÿ modi ſi può comporre."))
      (text 200 150
       (320 nil "à due  uoci")
       (1600 nil "à tre  uoci")
       (2800 nil "de ſalti")
       (5200 nil "à due uoci."))
      (music nil cclef7 bb sb7 sb8 ba
       cclef7 ba sb2 sb1 bb bl
       bb sb10 sb9 bl
       sb5 bb sb2 ba
       cclef7 bb sb7 ba sb9 bb
       maxima7 fclef7 ba sb6 sb2
       cclef7 ba rm7 sb7 ba m9 bb
       cclef7 bb sb3 sb2 bl
       rm7 m7 ba sm6 sb9 bl)))
    (("m1.21-devel" nil nil "white")
     ((music nil cclef7 sh6 supermaxima6 bl
       ba sh3 maxima5 bb bb bl
       bb br4 sh2 ba bl
       ba f6 br6 bl
       bb ba f4 br6 bb bl
       bb br5 f4m bb bb bl
       bb cclef7 f6 ba br6)))
    (("dot-test" nil nil "white")
     (ba sb5 dot6 ba sb6 dot6 ba))))
