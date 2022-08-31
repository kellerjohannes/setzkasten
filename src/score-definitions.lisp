(in-package :setzkasten)

(defparameter *score-margins* '(10 10 10 10)) ;

(defparameter *score-bg-color* "white")
(defparameter *font-height* 58)

(defparameter *scores*
  `((("m1.01" nil nil ,*score-bg-color*)
     ((text 70 58 (1253 875 "Dimoſtratione della Mano Diatonica."))
      (text 100 58
            (130 222 "A lamire")
            (504 220 "B fa ♭ mi")
            (860 225 "C ſolfaut")
            (1157 223 "D laſolre")
            (1457 151 "E lami")
            (1687 152 "F faut")
            (1917 218 "G ſolreut"))
      (music 2200
             b22 max7 fclef7 b38 sb2 b38 sb2 b38 sb2 b22 bl
             b22 fl3 b38 sb3 b38 nat3 b38 sb3 b22 bl
             b22 sb4 b38 sb4 b38 sb4 b22 bl
             b22 sb5 b38 sb5 b38 sb5 b22 bl
             b22 sb6 b38 sb6 b22 bl
             b22 sb7 b38 sb7 b22 bl
             b22 sb8 b38 sb8 b38 sb8 b38 bl)
      (text 70 58
            (167 nil "la") (263 nil "mi") (347 nil "re")
            (543 nil "fa") (713 nil "mi")
            (838 nil "ſol") (935 nil "fa") (1028 nil "ut")
            (1155 nil "la") (1232 nil "ſol") (1324 nil "re")
            (1478 nil "la") (1559 nil "mi")
            (1673 nil "fa") (1770 nil "ut")
            (1904 nil "ſol") (2001 nil "re") (2072 nil "ut"))
      (text 60 58
            (153 nil "per nat.")
            (834 nil "per ♭.")
            (1156 nil "per ♭.")
            (1481 nil "per ♮.")
            (1713 nil "per nat.")
            (1926 nil "per nat."))
      (text 60 58
            (153 nil "per ♭.")
            (511 nil "per ♭.")
            (835 nil "per ♮.")
            (1152 nil "per ♮.")
            (1471 nil "per nat.")
            (1701 nil "per ♭.")
            (1920 nil "per ♭."))
      (text 100 58
            (150 nil "per ♮.")
            (508 nil "per ♮.")
            (834 nil "per natura")
            (1148 nil "per natura")
            (1921 nil "per ♮."))))
    (("m1.02" nil nil ,*score-bg-color*)
     ((text 70 58
            (90 1974 "Dimoſtratione della mano Cromatica, aſcendente, con li Semitoni minore, e con l'eſſempio."))
      (text 100 58
            (41 nil "A lamire")
            (366 nil "B mi")
            (680 nil "C ſolfaut")
            (1002 nil "D laſolre")
            (1301 nil "E lami")
            (1613 nil "F faut")
            (1919 nil "G ſolreut"))
      (music 2193
             b22 max7 fclef7 b22 sb2 sh2 b22 sb2 b22 bl
             b22 sb3 b22 sh3 b22 sb3 b22 bl
             b22 sb4 b22 sh4 b22 sb4 b22 bl
             b22 sb5 b38 sh5 b38 sb5 b22 bl
             b22 sb6 b38 sh6 b38 sb6 b22 bl
             b22 sb7 b38 sh7 b38 sb7 b22 bl
             b22 sb8 b22 sh8 b22 sb8 b22 bl b38)
      (text 60 58
            (43 nil "la") (121 nil "mi") (206 nil "re")
            (345 nil "mi")
            (653 nil "ſol") (740 nil "fa") (835 nil "ut")
            (959 nil "la") (1044 nil "ſol") (1141 nil "re")
            (1279 nil "la") (1363 nil "mi")
            (1567 nil "fa") (1676 nil "ut")
            (1902 nil "ſol") (1999 nil "re") (2075 nil "ut"))
      (text 100 58
            (0 2194 "per nat. ꝑ ♭. ꝑ ♭. per ♮. per n. ꝑ ♭. ꝑ ♮ ꝑ ♭. ꝑ ♭. ꝑ n. ꝑ ♮. ꝑ nat. per nat. ꝑ ♭. ꝑ n. ꝑ ♭. ꝑ ♮."))))
    (("m1.03" nil nil ,*score-bg-color*)
     ((text 70 58 (231 1648 "Dimoſtratione della mano Cromatica con li ſemitoni maggiori aſcendenti."))
      (text 100 58
            (42 nil "A la mire")
            (287 nil "B fa ♭ mi")
            (622 nil "B et C")
            (866 nil "C ſol fa ut")
            (1202 nil "D la ſol re")
            (1527 nil "E la mi")
            (1778 nil "F fa ut"))
      (music 2200
             b38 max7 fclef7 b38 sb2 b38 bl
             fl3 b38 sb3 b38 nat3 b38 sbd3 bl
             b38 sb3 b38 sb4 b38 bl
             b38 sb4 b38 fl5 b38 sb5 b38 bl
             b38 sb5 b38 fl6 b38 sb6 b38 bl
             b38 sb6 b38 sb7 b38 bl
             b38 sb7 b38 fl8 b38 sb8 b38 bl b70)
      (text 70 58
            (43 nil "la") (126 nil "mi re")
            (288 nil "fa") (391 nil "mi")
            (619 nil "mi fa ſol")
            (872 nil "ſol fa ut")
            (1204 nil "la ſol re")
            (1541 nil "la mi fa")
            (1794 nil "fa ut re"))
      (text 70 58
            (43 nil "ut fa ſol")
            (295 nil "la ſol re ut")
            (635 nil "la reut")
            (883 nil "re mi la")
            (1195 nil "fa mi ut")
            (1542 nil "ut re ſol")
            (1799 nil "mi ſol la"))
      (text 70 58
            (5 309 "ꝑ n. ꝑ ♭.ꝑ ♮.")
	    (325 218 "ꝑ ♭. ꝑ ♮.")
	    (644 480 "per ♮.ꝑ n. ꝑ n. ꝑ ♭.")
	    (1198 220 "ꝑ n. ꝑ ♭.")
	    (1542 227 "ꝑ n. ꝑ ♮.")
	    (1807 213 "ꝑ n.ꝑ ♭."))))
    (("m1.04" nil nil ,*score-bg-color*)
     ((text 70 58 (86 2053 "Dimoſtratione della mano Enarmonica Diatonica, aſcendente con le ſette lettere della Mano."))
      (text 90 58
	    (43 nil "A la mi re")
	    (459 nil "B mi")
	    (622 nil "C ſol fa ut")
	    (983 nil "D la ſol re")
	    (1320 nil "E la mi")
	    (1565 nil "F fa ut")
	    (1809 nil "G ſol re ut"))
      (music 2214
	     b38 max7 fclef7 b22 sbd2 b38 sbd2 b38 sbd2 b38 bl
	     b38 sbd3 b38 bl
	     b38 sbd4 b38 sbd4 b38 sbd4 b38 bl
	     b38 sbd5 b38 sbd5 b38 sbd5 b38 bl
	     b22 sbd6 b38 sbd6 b22 bl
	     b22 sbd7 b38 sbd7 b38 bl
	     b22 sbd8 b38 sbd8 b38 sbd8 b38 bl b22)
      (text 70 58
	    (44 354 "ꝑ nat. ꝑ ♭. ꝑ ♮.")
	    (478 139 "per ♮.")
	    (646 307 "ꝑ ♭.ꝑ ♮. ꝑ n.")
	    (994 297 "ꝑ ♭.ꝑ ♮.ꝑ n.")
	    (1346 204 "ꝑ ♮. ꝑ n.")
	    (1594 209 "ꝑ n. ꝑ b.")
	    (1826 341 "per n.ꝑ ♭.ꝑ ♮."))
      (text 70 58
	    (169 nil "la mi re")
	    (556 nil "mi")
	    (695 nil "ſol fa ut")
	    (1045 nil "la ſol re")
	    (1386 nil "la mi")
	    (1642 nil "fa ut")
	    (1908 nil "ſol re ut"))))
    (("m1.05" nil nil ,*score-bg-color*)
     ((text 70 58 (115 1903 "Mano della diuiſione del tono in quattro Dieſis En. aſcendenti con lo ſemitono minore."))
      (text 100 58
	    (43 nil "da Alamire à B mi")
	    (620 nil "da B mi à C ſol fa ut")
	    (1156 nil "da B fa à C ſol fa ut")
	    (1673 nil "da C ſol fa ut à D laſol"))
      (music 2196
	     max7 fclef7 sb2 b22 sbd2 b22 sh2 b22 sb2 b22 fl3 b22 sbd3 b22 sb3 bl
	     sb3 b22 sbd3 b22 sh3 b22 sb3 b22 fl4 b22 sbd4 b22 sb4 bl
	     fl3 b22 sb3 b22 fl3 b22 sbd3 b22 nat3 b22 sb3 b22 sbd3 b22 sb4 bl
	     sb4 b22 sbd4 b22 sh4 b22 sb4 b22 fl5 b22 sbd5 b22 sb5)
      (text 70 58
	    (25 507 "ꝑ ♮. re. mi fa. re. mi.")
	    (593 530 "per ♮. mi. fa. re. mi. fa.")
	    (1123 514 "ꝑ b. fa. ſol. re. mi. fa.")
	    (1669 523 "per n. ut. re. mi. fa.re."))
      (text 90 58
	    (25 575 "per ♭. mi. fa. ſol. re. mi.")
	    (1669 500 "ſol & fa. diſcendono."))
      (text 110 58
	    (10 550 "da D la ſol re à E la mi")
	    (642 318 "da Elami a F .")
	    (1016 321 "da F faut à G.")
	    (1510 636 "da G ſol re ut à A la mi re."))
      (music 2190
	     max7 fclef7 b22 sb5 b22 sbd5 b22 sh5 b22 sb5 b22 fl6 b22 sbd6 b22 sbd6 b22 bl
	     b22 sb6 b22 sbd6 b22 sb7 b22 bl
	     b22 sb7 b22 sbd7 b22 sh7 b22 sb7 b22 fl8 b22 sbd8 b22 sb8 b22 bl
	     b22 sb8 b38 sbd8 b38 sh8 sb8 b22
	     fl9 b22 sbd9 b22 sb9 b22 bl b22)
      (text 80 58
	    (0 588 "per n. re. mi. fa. re. mi.")
	    (654 310 "ꝑ n.mi.mi.fa.")
	    (973 527 "per n. fa. re. mi. fa ſol.")
	    (1533 570 "per nat. ſol re. mi. fa re."))
      (text 80 58
	    (168 464 "la.& ſol diſcendono")
	    (664 243 "la diſcende")
	    (982 527 "per ♭.fa.re.mi.fa.re.")
	    (1529 557 "per ♭.re.mi.fa.re.mi."))
      (text 70 58
	    (1552 536 "per ♮.ut.re.mi.fa.re."))))
    (("m1.06" nil nil ,*score-bg-color*)
     ((text 70 58 (0 2210 "Mano Enarmonica diſcendente con i ſemitoni minori, nel principio del tono per le ſette lettere della"))
      (text 70 58 (0 1484 "Mano, con il tono diuiſo in quattro parti:& come ſi à da leggere."))
      (text 110 58
	    (162 nil "da A.")
	    (460 nil "à G.")
	    (734 nil "da G.")
	    (1036 nil "à F.")
	    (1320 nil "da F.")
	    (1524 nil "à E.")
	    (1738 nil "da E.")
	    (1960 nil "à D."))
      (music 2210
	     max7 fclef7 b38 sb9 b38 fl9 b38 sbd9 b38 fl9 b38 sb9 b38 sbd8 b38 sb8 bl
	     sb8 b38 fl8 b38 sbd8 b38 fl8 b38 sb8 b38 sbd7 b38 sb7 bl
	     b38 b22 sb7 b38 sbd6 b38 sb6 b38 b22 bl
	     sb6 b22 fl6 sbd6 b22 fl6 sb6 sbd5 b22 sb5 bl)
      (text 70 58
	    (10 nil "ꝑ n.")
	    (130 390 "la. ſol. fa. la. ſol.")
	    (724 530 "per n. ſol. fa. la. ſol. fa.")
	    (1302 412 "ꝑn.fa.mi.la.ꝑ diſ.")
	    (1742 454 "ꝑ♮. la.ſol.fa.mi.re."))
      (text 70 58
	    (150 490 "mi.& re. aſcendino")
	    (864 444 "re.& ut.aſcendeno")
	    (1374 258 "fa.mi.mi.")
	    (1842 350 "la.ſol.fa.la. ſol."))
      (text 70 58
	    (1382 218 "ꝑ aſcend.")
	    (1870 262 "mi aſcende,"))
      (text 100 58
	    (176 nil "da D.")
	    (500 nil "à C.")
	    (782 nil "da C.")
	    (986 nil "à B.")
	    (1198 nil "da B.")
	    (1502 nil "à A."))
      (music 2210
	     max7 fclef7 b38 sb5 b38 fl5 b38 sbd5 b38 fl5 b38 sb5 b38 sbd4 b38 sb4 b22 bl
	     b38 sb4 b38 sbd3 b38 sb3 b38 bl
	     b22 sb3 b38 fl3 b38 sbd3 b38 fl3 b38 sb3 b38 sbd2 b38 sb2 b38 bl
	     b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38)))))
