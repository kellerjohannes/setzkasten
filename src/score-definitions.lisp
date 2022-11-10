(in-package :setzkasten)

(defparameter *score-margins* '(10 10 10 10))

(defparameter *score-bg-color* "white")
(defparameter *font-height* 58)

(defparameter *scores*
  `(
    ;; m1.04
    (("b1-c5-m1" nil nil ,*score-bg-color*)
     ((text 70 58 (1253 875 "ᴅimoſtratione della ᴍano ᴅiatonica."))
      (text 100 58
            (130 222 "ᴀ lamire")
            (504 220 "ʙ fa ♭ mi")
            (860 225 "ᴄ ſolfaut")
            (1157 223 "ᴅ laſolre")
            (1457 151 "ᴇ lami")
            (1687 152 "ꜰ faut")
            (1917 218 "ɢ ſolreut"))
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
    ;; m1.05
    (("b1-c5-m2" nil nil ,*score-bg-color*)
     ((text 70 58
            (90 1974 "ᴅimoſtratione della ᴍano ᴄromatica, aſcendente, con li ꜱemitoni minore, e con l'eſſempio."))
      (text 100 58
            (41 nil "ᴀ lamire")
            (366 nil "ʙ mi")
            (680 nil "ᴄ ſolfaut")
            (1002 nil "ᴅ laſolre")
            (1301 nil "ᴇ lami")
            (1613 nil "ꜰ faut")
            (1919 nil "ɢ ſolreut"))
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
    ;; m1.06
    (("b1-c5-m3" nil nil ,*score-bg-color*)
     ((text 70 58 (231 1648 "ᴅimoſtratione della ᴍano ᴄromatica con li ſemitoni maggiori aſcendenti."))
      (text 100 58
            (42 nil "ᴀ la mire")
            (287 nil "ʙ fa ♭ mi")
            (622 nil "ʙ et ᴄ")
            (866 nil "ᴄ ſol fa ut")
            (1202 nil "ᴅ la ſol re")
            (1527 nil "ᴇ la mi")
            (1778 nil "ꜰ fa ut"))
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
    ;; m1.07
    (("b1-c5-m4" nil nil ,*score-bg-color*)
     ((text 70 58 (86 2053 "ᴅimoſtratione della mano ᴇnarmonica ᴅiatonica, aſcendente con le ſette lettere della ᴍano."))
      (text 90 58
        (43 nil "ᴀ la mi re")
        (459 nil "ʙ mi")
        (622 nil "ᴄ ſol fa ut")
        (983 nil "ᴅ la ſol re")
        (1320 nil "ᴇ la mi")
        (1565 nil "ꜰ fa ut")
        (1809 nil "ɢ ſol re ut"))
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
    ;; m1.08
    (("b1-c5-m5" nil nil ,*score-bg-color*)
     ((text 70 58 (115 1903 "ᴍano della diuiſione del tono in quattro ᴅieſis ᴇn. aſcendenti con lo ſemitono minore."))
      (text 100 58
        (43 nil "da ᴀlamire à ʙ mi")
        (620 nil "da ʙ mi à ᴄ ſol fa ut")
        (1156 nil "da ʙ fa à ᴄ ſol fa ut")
        (1673 nil "da ᴄ ſol fa ut à ᴅ laſol"))
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
        (10 550 "da ᴅ la ſol re à ᴇ la mi")
        (642 318 "da ᴇlami a ꜰ .")
        (1016 321 "da ꜰ faut à ɢ.")
        (1510 636 "da ɢ ſol re ut à ᴀ la mi re."))
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
    (("b1-c5-m6" nil nil ,*score-bg-color*)
     ((text 70 58 (0 2210 "ᴍano ᴇnarmonica diſcendente con i ſemitoni minori, nel principio del tono per le ſette lettere della"))
      (text 70 58 (0 1484 "ᴍano, con il tono diuiſo in quattro parti:& come ſi à da leggere."))
      (text 110 58
        (162 nil "da ᴀ.")
        (460 nil "à ɢ.")
        (734 nil "da ɢ.")
        (1036 nil "à ꜰ.")
        (1320 nil "da ꜰ.")
        (1524 nil "à ᴇ.")
        (1738 nil "da ᴇ.")
        (1960 nil "à ᴅ."))
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
        (176 nil "da ᴅ.")
        (500 nil "à ᴄ.")
        (782 nil "da ᴄ.")
        (986 nil "à ʙ.")
        (1198 nil "da ʙ.")
        (1502 nil "à ᴀ."))
      (music 2210
         max7 fclef7 b38 sb5 b38 fl5 b38 sbd5 b38 fl5 b38 sb5 b38 sbd4 b38 sb4 b22 bl
         b38 sb4 b38 sbd3 b38 sb3 b38 bl
         b22 sb3 b38 fl3 b38 sbd3 b38 fl3 b38 sb3 b38 sbd2 b38 sb2 b38 bl
         b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38)
      (text 70 58
        (10 nil "ꝑ ♭.")
        (156 468 "la. ſol. fa. la. ſol.")
        (744 358 "ꝑ ♮.fa.mi.mi.")
        (1142 580 "ꝑ ♮.mi. mi. fa. mi. re."))
      (text 70 58
        (10 nil "ꝑ ♮.")
        (144 480 "ſol. fa. la. ſol. fa.")
        (1124 nil "ꝑ ♭.")
        (1452 446 "fa.mi.la.ꝑ diſcend."))))
    ;; m1.09
    (("b1-c5-m7" nil nil ,*score-bg-color*)
     ((text 70 58 (0 2212 "ᴍano ᴇnarmonica aſcendente , con i ſemitomi maggiori, & con il tono diuiſo in quattro parti,&"))
      (text 90 58 (10 1262 "delle ſette lettere della ᴍano : come ſi hanno da leggere."))
      (text 100 58
        (140 nil "da ᴀ.")
        (374 nil "à ʙ.")
        (586 nil "da ♭ fa ʙ mi.")
        (972 nil "à ᴄ.")
        (1172 nil "da ᴄ.")
        (1454 nil "à ᴅ.")
        (1756 nil "da ᴅ.")
        (2012 nil "à ᴇ."))
      (music 2202
            ;; achtung, siehe Maniates S. 65, ev. Korrekturen nötig
         max7 fclef7 sb2 b22 sbd2 b22 fl3 b22 sb3 b22 fl3 b22 sbd3 b22 sb3 bl
         b22 fl3 b22 sb3 b22 fl3 b22 sbd3 bl
         sb3 b22 sbd3 b22 sb4 bl
         sb4 b22 sbd4 b22 fl5 b22 sb5 b22 fl5 b22 sbd5 b22 sb5 bl
         sb5 b22 sbd5 b22 fl6 b22 sb6 b22 fl6 b22 sbd6 b22 sb6 bl)
      (text 70 58
        (0 564 "ꝑ ♭. mi. fa. ſol. re. mi.")
        (616 nil "fa.")
        (760 nil "re.")
        (902 216 "mi.mi.fa.")
        (1146 480 "ꝑ ♭. ſol.re.mi.fa.re.")
        (1668 500 "ꝑ n.re.mi.fa.re.mi."))
      (text 70 58
        (0 538 "ꝑ ♮. re. mi. fa. re. mi.")
        (592 nil "ꝑ ♭.")
        (898 nil "per ♮.")
        (1142 488 "per n. ut.re.mi.fa.re.")
        (1660 490 "la.& ſol per diſcend."))
      (text 70 58
        (110 nil "la per diſcendere.")
        (1144 494 "ꝑ ♮.fa.re.mi.fa.re."))
      (text 110 58
        (138 nil "da ᴇ. à ꜰ.")
        (546 nil "da ꜰ.")
        (776 nil "à ɢ.")
        (1114 nil "da ɢ.")
        (1412 nil "à ᴀ."))
      (music 2188
         max7 fclef7 b38 sb6 b38 sbd6 b38 sb7 bl
         sb7 b38 sbd7 b38 fl8 b38 sbd8 b38 fl8 b38 sbd8 b38 sb8 bl
         sb8 b38 sbd9 b38 fl9 b38 sb9 b38 fl9 b38 sbd9 b38 sb9 bl
         b38 b38 b38 b22 b430)
      (text 70 58
        (10 396 "per n. mi. mi. fa.")
        (412 502 "ꝑ n. fa. re. mi. fa. ſol.")
        (1010 508 "ꝑ n. ſol. re. mi. fa. re."))
      (text 70 58
        (148 218 "la ꝑ diſc.")
        (418 488 "ꝑ ♭. ut. re. mi. fa. re.")
        (1004 516 "ꝑ ♭. re. mi. fa. re. mi."))
      (text 70 58
            (1008 504 "ꝑ ♮. ut. re. mi. fa. re."))))
    ;; m1.10
    (("b1-c5-m8" nil nil ,*score-bg-color*)
     ((text 70 58 (10 2198 "ᴍano ᴇnarmonica , con ſemitoni maggiori diſcendenti nel principio del tono,con il tono, in quattro"))
      (text 70 58 (10 976 "parti diuiſo , per leſette lettere della ᴍano."))
      (text 110 58
            (130 nil "da ᴀ.")
            (364 nil "à ɢ.")
            (516 nil "da ꜰ.")
            (660 nil "à ᴇ.")
            (794 nil "da ᴇ.")
            (1010 nil "à ᴅ.")
            (1234 nil "da ᴅ.")
            (1478 nil "à ᴄ.")
            (1630 234 "da ᴄ. à ʙ.")
            (1916 238 "da ʙ. à ᴀ."))
      (music 2188
             max7 fclef7 b22 sb9 fl9 sbd9 sh8 sb8 b22 sbd8 b22 sb8 bl
             sb7 b22 sbd6 b22 sb6 bl
             sb6 fl6 sbd6 sh5 sb5 b22 sbd5 b22 sb5 bl
             sb5 fl5 sbd5 sh4 b22 sbd4 b22 sb4 bl
             sb4 b22 sbd3 b22 sb3 bl
             fl3 sb3 b22 sbd2 b22 sb2 b22 bl)
      (text 70 58
            (10 440 "ꝑ n. la.ſol.fa.la.ſol.")
            (494 284 "ꝑ n.fa.mi.la.")
            (782 430 "ꝑ ♮.la.ſol.fa.mi.re.")
            (1220 374 "ꝑ ♭.laſolfalaſol.")
            (1600 288 "ꝑ n.fami.mi.")
            (1886 300 "ꝑ ♭.fa.mi.la."))
      (text 70 58
            (90 370 "mi.et re.ꝑ aſcen.")
            (524 218 "fa.mi.mi.")
            (824 340 "la.ſol.fa.la.ſol.")
            (1172 434 "ꝑ ♮.ſol.fa.la.ſol.fa.")
            (1972 218 "fa.mi.mi."))
      (text 70 58
            (838 336 "mi. per aſcend.")
            (1264 294 "re. ꝑ aſcend."))))
    ;; m1.11
    (("b1-c6-m1" nil nil ,*score-bg-color*)
     ((music nil ;462
             max7 fclef7 b22 sb3 b22 sb4 b22 sb5 b22 sb6 bl)))
    ;; m1.12
    (("b1-c7-m1" nil nil ,*score-bg-color*)
     ((music nil
             max7 fclef7 b38 sb3 b38 sb4 b38 sh4 b38 sb4 b38 sb6 b38 b38 bl)))
    ;; m1.13
    (("b1-c8-m1" nil nil ,*score-bg-color*)
     ((music nil
             max7 fclef7 b38 sb3 b38 sbd3 b38 sb4 b38 sb6 b38 bl)))
    ;; m1.14
    (("b1-c8-m2" nil nil ,*score-bg-color*)
     ((music nil
             max7 fclef7 b22 fl3 b38 sb5 b38 sb7 b38 fl6 b38 sb6 b38 sb5 b38 bl)))
    ;; m1.15
    (("b1-c9-m1" nil nil ,*score-bg-color*)
     ((music nil
             max7 fclef7 b22 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb5 b22 sb4 b22 sb3 b38 bl)))
    ;; m1.16
    (("b1-c10-m1" nil nil ,*score-bg-color*)
     ((music nil
             max7 fclef7 b38 sb3 b22 sb4 b38 sh4 b38 sb4 b38 sb6 b22)))
    ;; m1.17
    (("b1-c10-m2" nil nil ,*score-bg-color*)
     ((music 2214
             cclef7 b22 sb1 b38 fl2 b22 sb2 bl
             sb2 b22 sh3 b22 sb3 bl
             sb3 b22 fl4 b22 sb4 bl
             sb4 b22 fl5 b22 sb5 bl
             sb5 b22 sh4 b22 sb4 bl
             b22 sb7 b22 fl6 b22 sb6 bl
             sb5 b22 sh4 b22 sb4 bl
             sb4 b22 sh3 b22 sb3 bl
             sb3 b22 fl2 b22 sb2 bl)
      (text 70 58
            (30 nil "ſpetie cro.")
            (300 nil "ſpet. cro.")
            (542 nil "ſpet.cro.")
            (746 nil "ſpet. cro.")
            (986 nil "ſpet.cro.")
            (1224 nil "ſpet. cro.")
            (1468 nil "ſpet. cro.")
            (1700 nil "ſpet. cro.")
            (1950 nil "ſpet.cro."))
      (text 70 58
            (44 nil "tono cro.")
            (316 nil "to. crom.")
            (550 nil "ſem.cro.")
            (750 nil "ſem. cro.")
            (998 nil "ſem.cro.")
            (1228 nil "tono cro.")
            (1468 nil "ſem. cro.")
            (1704 nil "ſem. cro.")
            (1956 nil "tono cro."))))
    ;; m1.18
    (("b1-c11-m1" nil nil ,*score-bg-color*)
     ((text 90 58
            (54 720 "ᴛono diuiſo in 4. parti aſcend.")
            (812 686 "ᴛono diuiſo in 4. par.aſcend."))
      (music 1498
             cclef7 b38 sb4 b38 sbd4 b38 fl5 b38 sb5 b38 fl5 b38 sbd5 b38 sb5 b38 b38
             cclef7 b22 fl6 b38 sb4 b38 sbd4 b38 fl5 b38 sb5 b38 fl5 b38 sbd5 b38 sb5 bl)
      (text 70 58
            (10 nil "ꝑ ♮.")
            (114 nil "ut")
            (204 nil "re")
            (360 nil "mi")
            (504 nil "fa")
            (606 nil "re")
            (754 nil "ꝑ ♭.")
            (910 nil "re")
            (998 nil "mi")
            (1136 nil "fa")
            (1306 nil "re")
            (1396 nil "mi"))))
    ;; m1.19
    (("b1-c11-m2" nil nil ,*score-bg-color*)
     ((text 90 58
            (36 691 "Tono diuiſo in 4. parti aſcen.")
            (754 650 "To.diuiſo in 4. parti aſcen."))
      (music 1400
             cclef7 b38 sb4 b38 sbd4 b22 sh4 b22 sbd4 b38 fl5 b38 sbd5 b38 sb5 b38
             cclef7 b38 sb4 b38 sbd4 b38 sh4 b22 sb4 b38 fl5 b38 sbd5 b38 sb5 bl)
      (text 90 58
            (113 nil "ut")
            (203 nil "re")
            (344 nil "mi")
            (517 nil "fa")
            (604 nil "re")
            (801 nil "re")
            (890 nil "mi")
            (1058 nil "fa")
            (1206 nil "re")
            (1295 nil "mi"))))
    ;; attention, sharp-dot is doubtful
    ;; m1.20
    (("b1-c11-m3" nil nil ,*score-bg-color*)
     ((music nil
             cclef7 b38 sb5 b38 fl5 b38 sbd5 b22 sh4 b22 sb4 b38 sbd4 b38 sb4 b38
             cclef7 b38 fl6 b38 sb5 b38 fl5 b38 sbd5 b38 fl5 b38 sb5 b22 sbd4 b38 sb4 b22 bl
             b22 sb4 b38 fl4 b38 sbd4 b22 fl4 b22 sb4 b38 sbd3 b38 sb3 b38 sbd2 b22 b56)
      (text 70 58
            (120 nil "la")
            (263 nil "ſol")
            (400 nil "fa")
            (493 nil "la")
            (572 nil "ſol")
            (858 nil "la")
            (1022 nil "ſol")
            (1188 nil "fa")
            (1281 nil "mi")
            (1365 nil "re")
            (1506 nil "ſol")
            (1670 nil "fa")
            (1813 nil "la")
            (1899 nil "ſol")
            (1990 nil "fa")
            (2064 nil "mi")
            (2135 nil "mi"))
      (text 70 58
            (116 nil "per ♮. incitato")
            (850 nil "per ♭. molle")
            (1502 nil "per natura"))))
    ;; m1.21
    (("b1-c12-m1" nil nil ,*score-bg-color*)
     ((music 2168
             cclef7 sh6 max6 bl
             b22 sh3 longa5 b38 b38 bl
             b38 b22 br4 sh2 b22 bl
             b22 fl6 b22 br6 b22 bl
             b38 b22 fl4 br6 b38 bl
             b38 br5 flrev4 b38 b38 bl
             b38 cclef7 fl6 b22 nat6 br6 b22 bl
             b38 nat4 br6 b38 bl
             b38 br6 nat4 b22 b38 bl)
      (text 70 58
            (38 nil "per tutta")
            (263 nil "ꝑ la metà")
            (496 nil "ꝑ la metà")
            (734 nil "ꝑ tutta")
            (913 nil "ꝑ la metà")
            (1155 nil "ꝑ la metà")
            (1484 nil "per tutta")
            (1729 nil "ꝑla metà")
            (1968 222 "ꝑ la metà"))
      (text 70 58
            (271 nil "dinanzi")
            (532 nil "doppò")
            (941 nil "dinanzi")
            (1173 nil "doppò")
            (1735 nil "dinanzi")
            (1977 nil "doppò"))))
    ;; (("special-early-music-performer" nil nil ,*score-bg-color*)
    ;;  ((music nil
    ;;          b22 cclef7 b38 sb4 b38 sbd4 b38 fl5 b38 sb5 b38 fl5 b38 sbd5 b38 sb5 b38 b38)))

    ;; m1.22
    (("b1-c13-m1" nil nil ,*score-bg-color*)
     ((music 2218
             cclef7 b22 brd4 b22 b38 bl
             b27 b27 b27 brdl5 b27 b27 b27 bl
             b27 b27 b27 brdr5 b22 b22 b22 bl
             b27 b27 b27 sbd5 b22 bl
             b27 b27 b27 sbdl7 b22 b22 b22 bl
             b22 b22 sbdr4 b22 b22 b22 bl
             cclef7 b22 fl6 b22 br5 b22 flrev4 bl
             b22 fl4 b22 brd4 b22 bl
             b38 b22 fl3 b22 brd4 b38 bl)
      (text 70 58
            (43 nil "ꝑ tutta")
            (218 nil "ꝑ la parte")
            (454 nil "ꝑ la parte")
            (691 nil "per tutta")
            (911 nil "ꝑ la parte")
            (1154 nil "ꝑ la parte")
            (1384 nil "per la metà")
            (1677 nil "ꝑ tutta")
            (1907 nil "per la metà"))
      (text 90 58
            (234 nil "dinanzi")
            (455 nil "doppo")
            (910 nil "dinanzi")
            (1155 nil "doppò")
            (1391 nil "doppò")
            (1909 nil "dinanzi"))
      (music 2200
             cclef7 b27 b27 b27 brdl5 b22 flrev4 b27 b27 b27 bl
             b27 b27 b27 sbd5 b22 flrev4 b22 b27 b27 bl
             b27 b27 b27 b27 md4 b22 b22 b27 bl
             b27 b27 b27 mdl4 b27 b27 b27 b27 bl
             b27 b27 b27 b27 smdr3 b27 b27 b27 bl b677)
      (text 70 58
            (68 nil "la prima me")
            (362 nil "& la metà ſe")
            (682 nil "per tutta")
            (955 nil "ꝑ la metà")
            (1229 nil "ꝑ la metà"))
      (text 70 58
            (66 nil "tà ᴇ.et la ſe")
            (362 nil "conda è ᴄ.ᴇ.")
            (957 nil "dinanzi")
            (1227 nil "doppò"))
      (text 70 58
            (70 nil "conda c."))))
    ;; m1.23
    (("b1-c15-m1" nil nil ,*score-bg-color*)
     ((text 90 58
            (212 1795 "ᴇſſempio delli gradi,delli ᴅieſis minori ᴇnarmonici, aſcendenti & diſcendenti."))
      (music 2207
             cclef7 b38 sb4 b27 b38 b27 sbd4 b38 b27 b22 bl
             b38 sb6 b38 sbd6 b22 b22 bl
             b38 sb7 b38 sbd7 b38 bl
             b38 sb8 b38 sbd8 b38 bl
             b38 sb5 b38 sbd5 b38 bl
             b38 b22 sb4 b38 sbd4 b38 bl
             b38 sb3 b38 sbd3 b22 bl
             b22 sb2 b38 sbd2 b38 bl)
      (text 70 58
            (46 nil "ᴅieſis minore")
            (412 nil "ᴅi.min.")
            (664 nil "ᴅi.min.")
            (916 nil "ᴅi. min.")
            (1171 nil "ᴅi. min.")
            (1421 nil "ᴅi. min.")
            (1703 nil "ᴅi. min.")
            (1943 nil "ᴅi.min."))))
    ;; m1.24
    (("b1-c16-m1" nil nil ,*score-bg-color*)
     ((text 90 58
            (166 1861 "ᴇſſempio delli gradi,delli ᴅieſis maggiori ᴇnarmonici,aſcendenti & diſcendenti."))
      (music 2202
             cclef7 b22 sbd2 b27 sb3 b22 bl
             sbd4 b27 fl5 b38 sb5 b22 bl
             b38 sbd6 b38 sb7 b38 bl
             b38 sbd8 b38 fl9 b27 sb9 b38 bl
             b38 fl9 b27 sb9 b27 sbd8 b38 bl
             b38 fl8 b38 sb8 b27 sbd7 bl
             b27 sb7 b27 sbd6 bl
             sbd5 b38 fl5 b27 sb5 bl)
      (text 70 58
            (0 nil "ᴅieſis mag.")
            (290 nil "ᴅies.mag.")
            (550 nil "ᴅies.mag.")
            (806 nil "ᴅies.mag.")
            (1100 nil "ᴅies.mag.")
            (1411 nil "ᴅies.mag.")
            (1700 nil "ᴅies.ma.")
            (1929 nil "ᴅies. mag."))))
    ;; m1.25
    (("b1-c17-m1" nil nil ,*score-bg-color*)
     ((music 2214
             cclef7 b38 sb2 b22 sbd2 b22 sb3 b22 bl
             b22 b27 sb3 b38 sbd3 b38 fl4 b38 sb4 b38 fl4 b38 sbd4 b27 sb4 b27 bl
             b22 sb4 b22 sbd4 b22 sh4 b22 sb4 b22 b22 fl5 b22 sbd5 b22 sb5 b22 bl
             b27 sb8 b22 fl8 b22 sbd8 b22 fl8 b22 sb8 b22 sbd7 b38 sb7 b38 bl)
      (text 70 58
            (0 325 "due ᴅieſis in.")
            (339 631 "4. ᴅieſis in un tono aſcen.")
            (972 580 "4. ᴅieſis in un tono aſc.")
            (1588 617 "4.ᴅieſis in un tono diſc."))
      (text 70 58
            (0 nil "un ſemitono"))))
    ;; m1.26
    (("b1-c18-m1" nil nil ,*score-bg-color*)
     ((music 2206
             cclef7 fl1 b22 sb1 b22 fl1 b22 sbd1 b22 sb1 bl
             fl2 b22 sb2 b22 fl2 b22 sbd2 b22 sb2 bl
             fl4 b22 sb4 b22 fl4 b22 sbd4 b22 sb4 bl
             sb4 b22 sh4 b22 sb4 bl
             sb5 b22 sh5 b22 sb5 bl
             sb9 b22 fl8 b22 sb8 bl
             sb7 b22 sbd6 bl
             sb6 fl6 sb6 bl)
      (text 70 58
            (36 nil "ſemit.mi.comp.")
            (414 nil "ſe.mi.comp.")
            (777 nil "ſem.mi.comp.")
            (1118 nil "ſe.mi.incō.")
            (1375 nil "ſe.mi.inc.")
            (1607 nil "ſem.min.")
            (1834 nil "di.mag.")
            (2046 nil "ſe.min."))
      (text 70 58
            (1620 nil "incomp.")
            (1829 nil "ꝑ ſe.mi.ī")
            (2045 nil "ᴇn.inc."))))
    ;; m1.27
    (("b1-c19-m1" nil nil ,*score-bg-color*)
     ((music 2205
             cclef7 b22 sb2 b22 sbd2 b22 sb3 b22 bl
             b22 sb3 b38 fl4 b38 sb4 b22 bl
             sb4 b22 sbd4 b22 fl5 b22 sb5 bl
             b38 sb5 b22 fl6 b22 sb6 bl
             sb6 b22 sbd6 b22 sb7 bl
             b38 sb7 b27 sb6 b38 bl
             sb5 b27 sh4 b22 sb4 bl
             b38 sb3 b38 sb2 b38 bl)
      (text 70 58
            (38 nil "ſemit.mag.")
            (330 nil "ſemit.mag.")
            (640 nil "ſemit.mag.")
            (951 nil "ſemit.mag.")
            (1215 nil "ſem.mag.")
            (1457 nil "ſem.mag.")
            (1702 nil "ſem.mag.")
            (1948 nil "ſemi.mag."))
      (text 70 58
            (54 nil "naturale")
            (339 nil "accident.")
            (630 nil "accidentale")
            (947 nil "accident.")
            (1223 nil "naturale")
            (1475 nil "naturale")
            (1714 nil "accident.")
            (1939 nil "naturale."))
      (text 70 58
            (46 nil "comp.")
            (360 nil "incom.")
            (647 nil "comp.")
            (953 nil "incomp.")
            (1234 nil "comp.")
            (1483 nil "incomp.")
            (1716 nil "incomp.")
            (1942 nil "incomp."))))
    ;; m1.28
    (("b1-c20-m1" nil nil ,*score-bg-color*)
     ((text 90 58
            (0 2234 "ᴇſſempio di più ꜱemitoni mag.et minori,aſcendenti,et diſcendenti, comp.et incomp.nat.et acci"))
      (music 2220
             cclef7 b38 sb2 b38 sbd2 b38 sb3 bl
             sh3 b27 sb3 fl4 b27 sbd4 b27 sb4 bl
             sb4 b38 sh4 b38 sb4 bl
             sb5 b38 fl6 b38 sb6 bl
             fl6 b38 sb6 b27 fl6 b38 sbd6 b27 sb6 bl
             sb6 b27 sbd6 b27 sb7 bl
             sb7 b38 sh7 b27 sb7 bl)
      (text 70 58
            (26 nil "ſemit.mag.")
            (344 nil "ſemit.magg.")
            (695 nil "ſemit. mi.")
            (964 nil "ſemit. ma.")
            (1229 nil "ſemit.minore")
            (1664 nil "ſemit.mag.")
            (1955 nil "ſemit.mino."))
      (text 120 58
            (24 nil "nat.comp.")
            (327 nil "accid. compo.")
            (683 nil "acci.inco.")
            (939 nil "ac.imcomp.")
            (1208 nil "accid.comp.")
            (1650 nil "nat.comp.")
            (1941 nil "acc. incom."))
      (music 2225
             cclef7 sb9 b22 sh8 b38 sb8 b38 fl8 b38 sbd8 bl
             sbd7 b38 sb7 b38 sbd6 b38 bl
             b38 fl6 b38 sb6 b38 sb5 b38 bl
             fl5 b38 sb5 b38 sb4 b38 fl4 b38 sb4 b38 sbd4 bl
             sb3 b38 sbd2 b38 fl2 b38 sb2 bl
             b38 b38 b38 b38 b38 b38)
      (text 70 58
            (26 nil "ſemit.maggiori")
            (467 nil "ſem.ma.acc.")
            (775 nil "ſemit.magg.")
            (1105 nil "ſemit.magg. et min.")
            (1622 nil "ſe.min.et mag."))
      (text 70 58
            (39 nil "accid.incomp.")
            (475 nil "comp.")
            (778 nil "accid.incom.")
            (1099 nil "accid.incomp.")
            (1618 nil "accid.incomp."))))
    ;; m1.29
    (("b1-c21-m1" nil nil ,*score-bg-color*)
     ((text 110 58
            (372 1464 "ᴇſſempio del ɢrado del tono minore compoſto et non compoſto."))
      (music 2210
             cclef7 b38 sb3 fl4 b38 sbd4 bl
             sb4 b22 sbd4 b38 fl5 b22 sbd5 bl
             sb5 b27 fl6 b22 sb6 b22 fl6 b22 sbd6 bl
             fl6 b38 sb6 b27 sh6 b38 sb6 bl
             sh6 b22 sb6 b27 sb6 b22 fl6 b38 sb6 bl
             b38 sh5 b27 sb5 b22 b22 fl5 b38 sb5 b38 bl b38)
      (text 70 58
            (43 nil "to.mi.aſc.")
            (295 nil "to.min.aſcen.")
            (632 nil "tono min.aſcen.")
            (999 nil "to.mi. aſcen.")
            (1333 nil "tono min.diſcen.")
            (1726 nil "tono min.diſcend.")
            )
      (text 70 58
            (45 nil "incomp.")
            (295 nil "comp.")
            (629 nil "compo.")
            (993 nil "incomp.")
            (1330 nil "comp.")
            (1722 nil "incompoſto"))))
    ;; m1.30
    (("b1-c22-m1" nil nil ,*score-bg-color*)
     ((text 90 58
            (429 991 "ᴇſſempio delli ᴛoni, & ꜱemitoni naturali."))
      (music 2198
             cclef7 b38 sb0 b38 sb1 b38 bl
             b38 sb2 b38 sb3 b38 bl
             b38 sb4 b38 sb5 b38 bl
             b38 sb6 b38 sb7 b38 bl
             b38 sb7 b38 sb6 b38 bl
             b38 sb5 b38 sb4 b38 bl
             sb3 b38 sb2 b38 bl
             b38 sb1 b38 sb0 b38 bl
             b38 b38 b38 b38)
      (text 70 58
            (101 nil "tono")
            (355 nil "ſemit.")
            (598 nil "tono")
            (855 nil "ſemit.")
            (1126 nil "ſemit.")
            (1367 nil "tono")
            (1589 nil "ſemit.")
            (1832 nil "tono."))))
    ;; m1.31
    (("b1-c23-m1" nil nil ,*score-bg-color*)
     ((text 100 58
            (525 1098 "ᴇſſempio dʼalcuni ᴛoni,et ſemitoni accidentali."))
      (music 2197
             cclef7 b38 sh1 b38 sb1 b38 sb2 b38 sh2 b38 sb2 b22 bl
             b22 sb2 b38 sh3 b38 sb3 b22 bl
             b22 sh3 b22 sb3 b13 sb4 b13 sh4 b13 sb4 bl
             fl5 b13 sb5 b13 fl6 b13 sb6 bl
             fl6 b13 sb6 b13 sb6 b13 sb7 bl
             b38 sb7 b38 fl6 b38 sb6 b38 bl)
      (text 70 58
            (92 nil "tono acci.comp.")
            (543 nil "tono accid.")
            (875 nil "tono acci.comp.")
            (1256 nil "tono accid.")
            (1547 nil "tono accid.")
            (1845 nil "tono accid."))
      (text 70 58
            (545 nil "incomp.")
            (1262 nil "incomp.")
            (1543 nil "comp.")
            (1852 nil "incomp."))
      (music 2202
             cclef7 b38 sh5 b22 sb5 b22 sb4 b22 sh4 b22 sb4 b38 bl
             b38 sh4 b22 sb4 b22 sh3 b22 sb3 b38 bl
             b38 fl5 b22 sb5 b38 fl4 b38 sb4 b38 bl
             b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38)
      (text 70 58
            (85 nil "tono accid.comp.")
            (521 nil "tono acci.incom.")
            (911 nil "tono.acc. incom."))))
    ;; m1.32
    (("b1-c24-m1" nil nil ,*score-bg-color*)
     ((text 100 58
            (414 1235 "ᴇſſempio del ᴛono maggiore,compoſto et incompoﬆo."))
      (music 2209
             cclef7 sb1 b22 sb2 b22 sbd2 bl
             fl2 b22 sb2 b22 sbd4 b22 bl
             sh3 sb3 b22 sb4 fl5 sb5 bl
             sh4 sb4 fl6 sb6 bl
             sb6 fl8 sb8 b22 bl
             sbd8 b22 sb8 b22 sb7 bl
             sb7 b13 sb6 sh5 sb5 bl
             fl6 sb6 sh4 sb4 bl
             sb3 sh1 sb1 bl)
      (text 70 58
            (38 nil "ton.mag.")
            (275 nil "ton.mag.")
            (525 nil "tono magg.")
            (828 nil "to.mag.")
            (1058 nil "to.mag.")
            (1262 nil "to.mag.")
            (1484 nil "ton.mag.")
            (1749 nil "to.mag.")
            (1973 nil "ton.mag."))
      (text 80 58
            (50 nil "compo.")
            (284 nil "incomp.")
            (515 nil "compo.")
            (834 nil "incomp.")
            (1058 nil "incomp.")
            (1282 nil "comp.")
            (1493 nil "comp.")
            (1771 nil "incomp.")
            (2000 nil "incomp."))))
    ;; m1.33
    (("b1-c25-m1" nil nil ,*score-bg-color*)
     ((text 90 58
            (0 2201 "ᴇſſempio del grado ò ſalto della ᴛerza manco di minore, ouero minima compoſto & incompoſto."))
      (music 2208
             cclef7 b22 sb1 b22 sh2 b22 sb2 b22 bl
             sb3 b22 sb4 b22 sh4 b22 sb4 bl
             b22 sb4 b22 sh5 b22 sb5 b38 bl
             sh5 b22 sb5 b22 sb5 b22 sb4 bl
             b22 sh4 b22 sb4 b22 sb3 b22 bl
             sh3 b22 sb3 b22 sb3 b22 fl2 b22 sb2 bl
             b22 sh2 b38 sb2 b38 sb1 bl)
      (text 70 58
            (44 nil "grado di 3.")
            (335 nil "grado di 3.")
            (641 nil "grado di 3.")
            (928 nil "grado di 3.")
            (1237 nil "grado di 3.")
            (1541 nil "grado di terza")
            (1903 nil "grado di 3."))
      (text 70 58
            (50 nil "mini.incom.")
            (336 nil "mini.comp.")
            (639 nil "mini.incom.")
            (934 nil "mini.comp.")
            (1245 nil "mini.incom.")
            (1541 nil "mini.comp.")
            (1911 nil "mini.incom."))))
    ;; m1.34
    (("b1-c26-m1" nil nil ,*score-bg-color*)
     ((text 80 58
            (367 1446 "ᴇſſempio de i gradi,di ᴛerza minore,compoſti & incompoﬆi."))
      (music 2231
             cclef7 b27 sb1 b27 sb3 b27 bl
             b27 sb2 b27 sb4 b27 bl
             b27 sb7 b27 sb5 b27 bl
             b27 sb8 b27 sb6 b27 bl
             b22 sb1 b22 sb2 b22 sb3 b22 bl
             b27 sb2 b27 sb3 b27 sb4 b27 bl
             b22 sb7 b22 sb6 b27 sb5 bl
             b22 sb8 b22 sb7 b22 sb6 b22 bl)
      (text 70 58
            (39 nil "grad.di 3.")
            (301 nil "gra.di 3.")
            (544 nil "gra. di 3.")
            (783 nil "gra. di 3.")
            (1048 nil "ᴛerza min.")
            (1341 nil "ᴛerza min.")
            (1626 nil "ᴛerza min.")
            (1930 nil "ᴛerza min."))
      (text 70 58
            (36 nil "min. natu.")
            (296 nil "min. nat.")
            (530 nil "min.natu.")
            (777 nil "min. nat.")
            (1021 nil "com.di tono")
            (1305 nil "com. di ſem.")
            (1616 nil "com. di ſem.")
            (1923 nil "comp.di tono"))
      (text 70 58
            (34 nil "incomp.")
            (295 nil "incomp.")
            (520 nil "incomp.")
            (759 nil "incomp.")
            (1006 nil "& ſemit.")
            (1297 nil "& tono")
            (1607 nil "& tono")
            (1907 nil "& ſemitono."))))
    ;; m1.35
    (("b1-c27-m1" nil nil ,*score-bg-color*)
     ((text 80 58
            (250 1694 "ᴇſſempio de i gradi di ᴛerza minore accidentale,compoﬆi & incompoſti."))
      (music 2220
             cclef7 b22 sb0 b38 fl2 b38 sb2 b38 bl
             b38 fl2 b38 sb2 b38 sb3 b38 fl4 sb4 b22 bl
             b38 fl5 b38 sb5 b38 sbd6 b38 bl
             sh8 b22 sb8 b22 sh7 b22 sb7 b22 sh6 b22 sb6 bl
             b38 sb5 b22 sh3 b22 sb3 b38 bl
             b38 fl4 b38 sb4 b22 sbd5 b22 bl)
      (text 70 58
            (39 nil "gra.di 3.min.")
            (368 nil "grad.di 3. min.")
            (770 nil "gr.di 3.min.")
            (1106 nil "grad.di terza mi.")
            (1564 nil "gr.di 3.min.")
            (1872 nil "grad.di 3.min."))
      (text 70 58
            (43 nil "accid.incomp.")
            (368 nil "accid.compoſta.")
            (765 nil "accid.incomp.")
            (1093 nil "accid. compoſta.")
            (1552 nil "accid.incomp.")
            (1875 nil "accid. incomp."))
      (music 2201
             cclef7 b22 sbd5 b22 b22 fl4 b38 sb4 b38 bl
             b38 sh3 b22 sb3 b22 sh1 b38 sb1 b22 bl
             b38 b38 b38 b38 b38 b38 b38 b38 b38 b245 b848)
      (text 90 58
            (37 nil "grad.di 3.mi.")
            (373 nil "grad.di 3.min."))
      (text 70 58
            (39 nil "accid.incomp.")
            (361 nil "accid.incomp."))))
    ;; m1.36
    (("b1-c28-m1" nil nil ,*score-bg-color*)
     ((text 90 58
            (327 1549 "ᴇſſempio de i gradi di ᴛerza più di minore compoﬆo & incompoſto."))
      (music 2218
             cclef7 b27 b27 sb1 b38 b22 sbd3 b38 bl
             b22 sb2 b22 sb3 b27 sbd4 b22 bl
             sb4 b38 fl6 b22 sbd6 b22 bl
             sb7 b22 sb8 b22 fl9 sbd9 bl
             sb8 b22 fl6 b22 sbd6 b22 bl
             sbd7 b22 sb6 b38 sb5 bl
             fl6 b27 sb6 b22 fl4 b22 sbd4 bl
             sbd4 b22 sb3 b22 sb2 bl)
      (text 80 58
            (50 nil "grad.di 3.")
            (321 nil "grad. di 3.")
            (611 nil "grad.di 3.")
            (861 nil "grad. di 3.")
            (1141 nil "grad.di 3.")
            (1389 nil "grad. di 3.")
            (1659 nil "grad. di 3.")
            (1952 nil "grad. di 3."))
      (text 70 58
            (50 nil "più di min.")
            (319 nil "più di min.")
            (619 nil "più di mi.")
            (860 nil "più di min.")
            (1141 nil "più di min.")
            (1401 nil "più di min.")
            (1652 nil "più di min.")
            (1948 nil "più di min."))
      (text 70 58
            (57 nil "incompoſto")
            (324 nil "compoſto")
            (616 nil "incomp.")
            (861 nil "compoſto")
            (1149 nil "incomp.")
            (1390 nil "compoﬆo")
            (1665 nil "incomp.")
            (1938 nil "compoſto."))))
    ;; m1.37
    (("b1-c29-m1" nil nil ,*score-bg-color*)
     ((text 70 58
            (230 1732 "ᴇſſempio del grado di ᴛerza maggiore naturale, incompoﬆo & compoſto."))
      (music 2213
             cclef7 b38 sb0 b38 sb2 b38 bl
             b38 sb3 b38 sb5 b38 bl
             b38 sb9 b38 sb7 b38 bl
             b38 sb6 b38 sb4 b38 bl
             b27 sb0 b38 sb1 b38 sb2 b22 bl
             b27 sb3 b22 sb4 b22 sb5 bl
             b22 sb9 b22 sb8 b22 sb7 b22 bl
             sb6 b22 sb5 b22 sb4 b22 bl)
      (text 80 58
            (0 nil "grado di 3.")
            (310 nil "gra.di 3.")
            (555 nil "grad. di. 3.")
            (817 nil "grad.di 3.")
            (1078 nil "terza mag.")
            (1367 nil "terza mag.")
            (1648 nil "terza mag.")
            (1937 nil "terza mag."))
      (text 70 58
            (0 nil "mag. nat.")
            (300 nil "mag.nat.")
            (556 nil "mag.nat.")
            (813 nil "mag.nat.")
            (1068 nil "comp.nat.")
            (1361 nil "comp.nat.")
            (1652 nil "comp. nat.")
            (1934 nil "comp.nat."))))
    ;; m1.38
    (("b1-c30-m1" nil nil ,*score-bg-color*)
     ((text 70 58
            (217 1780 "ᴇſſempio de i gradi,di ᴛerza maggiore accidentale,incompoſti & compoﬆi."))
      (music 2225
             cclef7 b22 sb1 b38 sb2 b38 sh3 sb3 bl
             sb2 b38 sh4 b38 sb4 bl
             sh3 b22 sb3 b22 sh5 b22 sb5 bl
             fl4 b22 sb4 b22 sb5 b22 fl6 b22 sb6 bl
             sb8 b22 sb7 b22 fl6 b27 sb6 bl
             fl5 b38 sb5 b38 sbd2 bl
             sh3 b22 sb3 b22 sb2 b22 sb1 bl)
      (text 70 58
            (84 nil "compo.")
            (393 nil "incomp.")
            (649 nil "incomp.")
            (958 nil "comp.")
            (1318 nil "comp.")
            (1625 nil "incomp.")
            (1899 nil "comp."))))
    ;; m1.39
    (("b1-c31-m1" nil nil ,*score-bg-color*)
     ((text 150 58
            (284 1607 "ᴇſſempio de i gradi di ᴛerza più di maggiore incompoﬆo & compoſto."))
      (music 2209
             cclef7 b22 b22 sb0 b38 sbd2 b38 bl
             sb3 b22 sb4 b22 sbd5 bl
             fl6 sb6 b38 sbc8 b22 fl5 sb5 sb6 b22 sbc7 bl
             fl6 b22 sb6 b22 sb7 b22 sbc8 bl
             fl8 b22 sb8 b22 sb6 bl
             fl6 b22 sb6 b22 sb5 b22 sb4 b22 sh3 b22 sb3 bl
             sbd4 b27 fl2 b22 sb2 bl)
      (text 70 58
            (39 nil "grad.di 3.")
            (307 nil "gra.di 3.")
            (548 nil "grad. di terza un")
            (989 nil "grad. di 3.")
            (1275 nil "gra.di 3.")
            (1496 nil "grad.di terza più")
            (1935 nil "gra. di 3."))
      (text 70 58
            (45 nil "più di ma.")
            (311 nil "più di ma.")
            (564 nil "cōma più di mag.")
            (982 nil "più di ma.")
            (1268 nil "più di ma.")
            (1502 nil "di magg.comp.")
            (1932 nil "più di ma."))
      (text 70 58
            (41 nil "incomp. .")
            (302 nil "compoſto")
            (570 nil "incomp. et comp.")
            (977 nil "compoſto")
            (1256 nil "incomp.")
            (1930 nil "incomp."))))
    ;; m1.40
    (("b1-c32-m1" nil nil ,*score-bg-color*)
     ((text 140 58
            (172 1866 "ᴇſſempio del ꜱalto della Ɋuarta naturale,e du ſuoi gradi incompoſto et compoſto."))
      (text 100 58
            (61 352 "ᴘrima Ɋuarta.")
            (432 nil "ꜱecōda Ɋuar.")
            (759 nil "ᴛerza Ɋuar.")
            (1093 nil "ᴘrima Ɋuarta")
            (1429 nil "ꜱecōda Ɋuarta")
            (1822 nil "ᴛerza Ɋuarta"))
      (music 2200
             max7 fclef7 b22 sb2 b38 b38 sb5 b27 b27 bl
             b27 b38 sb3 b38 b38 sb6 b27 b38 bl
             b38 sb4 b38 b38 b22 sb7 b38 bl
             b38 sb2 b38 sb3 b38 sb4 b38 sb5 bl
             sb3 b38 sb4 b38 sb5 b38 sb6 bl
             b38 sb4 b38 sb5 b38 sb6 b38 sb7 bl)
      (text 80 58
            (89 nil "ſalto di 4.")
            (394 nil "ſalto di 4.")
            (735 nil "ſalto di 4.")
            (1039 nil "quarta compò.")
            (1428 nil "quarta comp.")
            (1793 nil "quarta compoſta"))
      (text 70 58
            (83 nil "incompoſta")
            (392 nil "incomp.")
            (715 nil "incomp.")
            (1033 nil "de gradi")
            (1422 nil "de gradi")
            (1797 nil "de gradi"))))
    ;; m1.41
    (("b1-c33-m1" nil nil ,*score-bg-color*)
     ((text 150 58
            (137 1893 "ᴇſſempio del ſalto,& de i gradi de Ɋuarta accidentale,incompoſta & compoſta."))
      (music 2193
             cclef7 sh1 b27 sb1 sh4 b22 sb4 bl
             fl2 b22 sb2 b22 sb3 sb4 b22 fl5 b22 sb5 bl
             sh3 b22 sb3 sb4 sb5 sb6 bl
             sh4 b22 sb4 b22 sh7 b22 sb7 bl
             fl8 b22 sb8 b22 sb7 b22 fl6 b22 sb6 b22 fl5 b22 sb5 bl
             fl4 b38 sb4 b22 fl1 b22 sb1 bl)
      (text 80 58
            (48 nil "ſalto di 4.")
            (340 nil "gradi di quarta")
            (750 nil "gradi di 4.")
            (1062 nil "ſalto di 4.")
            (1375 nil "gradi di quarta acci.")
            (1882 nil "ſalti di 4."))
      (text 70 58
            (51 nil "accidentale")
            (353 nil "accidentale")
            (746 nil "accidentale")
            (1067 nil "accidentale")
            (1366 nil "accidentale comp.")
            (1880 nil "accidentale"))
      (text 70 58
            (57 nil "incomp.")
            (360 nil "compoſta")
            (751 nil "compoſta")
            (1062 nil "incompoﬆa")
            (1887 nil "incompoſta"))))
    ;; m1.42
    (("b1-c34-m1" nil nil ,*score-bg-color*)
     ((text 150 58
            (181 1818 "ᴇſſempio del ſalto piùche di Ɋuarta,& de ſuoi gradi incompoſto & compoſto."))
      (music 2218
             cclef7 b38 sb1 b38 sbd4 b38 bl
             sb2 b22 sb3 b22 sb4 b22 sbd5 bl
             sb6 sbc9 sb5 b22 sbd8 bl
             sbd8 b22 sb7 b22 sb6 b22 sb5 bl
             b38 fl6 b27 sbd6 b38 sb3 bl
             fl5 b22 sbd5 sb4 sb3 b22 fl2 sb2 bl
             fl4 b38 sbd4 b38 fl1 b22 sb1 bl)
      (text 80 58
            (35 nil "ſalti di più")
            (325 nil "gradi di più")
            (607 nil "ſalto di più")
            (896 nil "gradi di più")
            (1193 nil "ſalto  di più")
            (1503 nil "gradi di più di")
            (1880 nil "ſalto di più"))
      (text 70 58
            (38 nil "di 4. acci.")
            (320 nil "di 4. accid.")
            (608 nil "di 4. acci.")
            (891 nil "di 4. accid.")
            (1190 nil "di 4. accid.")
            (1500 nil "quarta accid.")
            (1868 nil "di 4.accid."))
      (text 70 58
            (37 nil "incomp.")
            (312 nil "comp.")
            (605 nil "incomp.")
            (882 nil "comp.")
            (1182 nil "incomp.")
            (1500 nil "comp.")
            (1867 nil "incomp."))))
    ;; m1.43
    (("b1-c35-m1" nil nil ,*score-bg-color*)
     ((text 125 58
            (459 1239 "ᴇſſempio del ᴛritono naturale,incompoſto et compoſto."))
      (music 2207
             cclef7 b38 sb3 b38 b38 sb6 b38 b27 bl
             b38 sb6 b38 b38 sb3 b38 bl
             b38 b38 cclef1
             b27 sb4 b38 b38 sb7 b27 b38 bl
             b38 sb7 b38 b38 sb4 b38 bl
             b38 sb4 b22 sb5 b22 sb6 b22 sb7 b38 bl
             b38 sb7 b38 sb6 b38 sb5 b38 sb4 bl)
      (text 100 90
            (58 nil "ſalto di ᴛrit.")
            (369 nil "ſalto di ᴛri.")
            (812 nil "ſalto di ᴛri.")
            (1110 nil "ſalto di ᴛri.")
            (1415 nil "gradi del Trit.")
            (1801 nil "gradi del ᴛrit."))
      (text 70 58
            (57 nil "incompoſto")
            (361 nil "incompoſto")
            (809 nil "incompoſto")
            (1107 nil "incompoſto")
            (1405 nil "compoſto")
            (1795 nil "compoſto"))))
    ;; m1.44
    (("b1-c36-m1" nil nil ,*score-bg-color*)
     ((text 70 58
            (432 1372 "ᴇſſempio del ᴛritono accidentale,incompoſto & compoſto."))
      (music 2197
             cclef7 b22 sb0 b22 sh3 b22 sb3 bl
             b38 sb1 b22 sh4 b22 sb4 b38 bl
             sb2 b22 sh5 b38 sb5 b38 bl
             sh3 b22 sb3 b22 sh6 b22 sb6 bl
             sh6 sb6 sh5 sb5 sh4 sb4 sh3 sb3 bl
             fl4 b22 b22 sb4 b22 fl5 b22 sb5 b22 fl6 b22 sb6 b22 sb7 bl)
      (text 80 68
            (50 nil "ᴛrit.inco.")
            (313 nil "ᴛrit.incom.")
            (632 nil "ᴛrit.incom.")
            (922 nil "ᴛrit.incom.")
            (1222 nil "ᴛrit.compoſto")
            (1672 nil "ᴛritono compoſto"))
      (text 70 58
            (50 nil "accident.")
            (306 nil "accidentale")
            (627 nil "accidentale")
            (932 nil "accidentale")
            (1227 nil "accidentale")
            (1666 nil "accidentale"))))
    ;; m1.45
    (("b1-c37-m1" nil nil ,*score-bg-color*)
     ((text 80 58
            (200 1805 "ᴇſſempio del ſalto de Ɋuinta imperfetta,naturale & accidentale,incompoﬆo."))
      (music 2219
             max7 fclef7 b38 sb3 b38 sb7 b38
             cclef5 b38 sb4 b38 b38 sb8 b38 bl
             b38 sb0 b38 fl4 b38 sb4 b38
             cclef5 b38 sb3 fl7 b38 sb7 b38
             cclef5 b38 fl4 b38 sb4 b38 sbd7 bl
             sb2 b38 fl6 b38 sb7 b22 bl
             sb5 b38 sh1 b38 sb1 b38 bl)
      (text 70 58
            (48 nil "ſalto di quinta")
            (419 nil "ſalto di 5.")
            (684 nil "ſalto di quin.")
            (1016 nil "ſalto di 5.")
            (1305 nil "ſalto di quin.")
            (1641 nil "ſalto di 5.")
            (1891 nil "ſalto di quinta"))
      (text 70 58
            (52 nil "imper.nat.&")
            (425 nil "imp.nat.")
            (698 nil "imp.accid.&")
            (1023 nil "imp. accid.")
            (1320 nil "imp.accid.&")
            (1648 nil "imp.acci.")
            (1889 nil "imper.acci. et"))
      (text 70 58
            (52 nil "incompoſto")
            (436 nil "incomp.")
            (700 nil "incompoſto")
            (1028 nil "incompoſto")
            (1332 nil "incompoſto")
            (1644 nil "et incom.")
            (1878 nil "incompoﬆo"))))
    ;; m1.46
    (("b1-c37-m2" nil nil ,*score-bg-color*)
     ((text 90 58
            (254 1691 "ᴇſſempio de gradi di alcune Ɋuinte imperfette,naturali & accidentali."))
      (music 2202
             max7 fclef7 b38 sb3 b22 sb4 b22 sb5 b22 sb6 b22 sb7 b38
             cclef5 b38 sb4 sb5 sb6 sb7 sb8 b38
             cclef5 b38 fl4 b38 sb4 sb5 sb6 sbd7 bl
             sb2 sb3 fl4 b38 sb4 sb5 b38 fl6 b22 sb6 bl
             sb5 sb4 sb3 b22 sb2 sh1 b22 sb1 bl)
      (text 70 58
            (113 nil "gradi di quinta")
            (591 nil "gradi di quinta")
            (984 nil "gradi di quin.")
            (1338 nil "gradi di quinta")
            (1804 nil "gradi di quinta"))
      (text 70 58
            (127 nil "imp.compoſta")
            (597 nil "imper. compo.")
            (993 nil "imp.compoſta")
            (1347 nil "imp.compoſta")
            (1802 nil "imp.compoſta"))
      (text 70 58
            (120 nil "naturale")
            (611 nil "naturale")
            (993 nil "accidentale")
            (1345 nil "accidentale")
            (1822 nil "accidentale"))))
    ;; m1.47
    (("b1-c38-m1" nil nil ,*score-bg-color*)
     ((text 90 58
            (213 1734 "ᴇſſempio di più di Ɋuinta imperfetta accidentale,compoſto & incompoﬆo."))
      (music 2232
             max7 fclef7 sb3 sb4 sb5 sb6 sbd7
             cclef5 b38 sb4 b38 sbd8 b38
             cclef5 b38 sh1 b38 sb1 b38 sbd5 bl
             sh2 sb2 sb3 sb4 sb5 sbd6 bl
             sb8 b38 fl4 b38 sbd4 b38 bl
             sb7 sb6 sb5 sb4 sbd3 bl
             b38 sb6 b38 sbd2 b38 bl)
      (text 70 58
            (88 nil "più di quinta")
            (420 nil "più di quin.")
            (740 nil "più di quin.")
            (1041 nil "più di quinta")
            (1363 nil "più di quin.")
            (1640 nil "più di quinta")
            (1954 nil "più di quin."))
      (text 80 58
            (81 nil "imper.natur.")
            (425 nil "imper. nat.")
            (720 nil "imp. accid.")
            (1040 nil "imper.accid.")
            (1354 nil "imper.acci.")
            (1634 nil "imper. acci.")
            (1936 nil "impe. accid."))
      (text 70 58
            (81 nil "comp.")
            (420 nil "incomp.")
            (738 nil "incomp.")
            (1056 nil "comp.")
            (1350 nil "incomp.")
            (1620 nil "comp.")
            (1938 nil "incomp."))))
    ;; m1.48
    (("b1-c39-m1" nil nil ,*score-bg-color*)
     ((text 140 58
            (595 952 "ᴇſſempio della Quinta naturale incomp."))
      (text 90 58
            (87 nil "prima 5.")
            (356 nil "ſeconda 5.")
            (655 nil "terza 5.")
            (925 nil "quarta 5.")
            (1248 nil "ʟe medeſime Ɋuinte music."))
      (music 2214
             cclef7 b38 sb1 b38 b38 sb5 b38 bl
             b38 sb2 b38 b38 sb6 b38 bl
             b38 sb3 b38 b38 sb7 b38 bl
             b38 sb4 b38 b27 sb8 b38 bl
             b38 sb8 b38 sb4 b38 bl
             b38 sb7 b38 sb3 b38 bl
             b38 sb6 b38 sb2 b38 bl
             b38 sb5 b38 sb1 b38 bl)
      (text 70 58
            (96 nil "ſalto di 5.")
            (369 nil "ſalto di 5.")
            (653 nil "ſal. di quin.")
            (943 nil "ſalto di 5.")
            (1203 nil "ſal. di 5.")
            (1444 nil "ſal. di 5.")
            (1684 nil "ſalto di 5.")
            (1953 nil "ſalto di 5."))
      (text 70 58
            (107 nil "ꝑfet. nat.")
            (368 nil "ꝑfet. nat.")
            (652 nil "perfet.nat.")
            (955 nil "ꝑſet. nat.")
            (1228 nil "ꝑfet.na.")
            (1446 nil "ꝑfet.nat.")
            (1686 nil "ꝑfet. nat.")
            (1959 nil "ꝑfet.nat."))
      (text 70 58
            (100 nil "incomp.")
            (368 nil "incomp.")
            (641 nil "incomp.")
            (955 nil "incomp.")
            (1216 nil "incomp.")
            (1439 nil "incomp.")
            (1684 nil "incomp.")
            (1962 nil "incomp."))))
    ;; m1.49
    (("b1-c39-m2" nil nil ,*score-bg-color*)
     ((text 90 58
            (595 984 "ᴇſſempio de i gradi delle Ɋuinte naturali."))
      (music 2210
             cclef7 b38 sb1 b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 bl
             b38 sb2 b38 sb3 b38 sb4 b38 sb5 b38 sb6 bl
             b38 sb3 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 bl
             b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb8 b38 bl b38 b38)
      (text 70 58
            (97 nil "ordine 1. de gradi")
            (582 nil "ordine 2. de gradi")
            (1097 nil "ordine 3. de gradi")
            (1602 nil "ordine 4. de gradi"))
      (text 70 58
            (91 nil "della prima quinta")
            (575 nil "della ſeconda quinta")
            (1100 nil "della terza quinta")
            (1604 nil "della quarta quinta"))
      (text 70 58
            (95 nil "compoſta")
            (580 nil "compoſta")
            (1097 nil "compoſto")
            (1605 nil "compoſta"))))
    ;; m1.50
    (("b1-c40-m1" nil nil ,*score-bg-color*)
     ((text 120 58
            (465 1267 "ᴇſſempio de ꜱalti de Ɋuinte accidentali, incompoſti."))
      (music nil
             cclef7 sh1 b27 sb1 b22 sh5 b27 sb5 bl
             sh2 b22 sb2 b22 sh6 b27 sb6 bl
             sh3 b22 sb3 b22 sh7 b22 sb7 bl
             sh4 b22 sb4 b27 sh8 b22 sb8 bl
             fl1 b22 sb1 b38 fl5 b22 sb5 bl
             fl2 b22 sb2 b22 fl6 b22 sb6 bl
             fl4 b27 sb4 b38 fl8 b38 sb8 bl)
      (text 70 58
            (57 nil "ſalto di 5.")
            (366 nil "ſalto di 5.")
            (678 nil "ſalto di 5.")
            (993 nil "ſalto di 5.")
            (1295 nil "ſalto di 5.")
            (1595 nil "ſalto di 5.")
            (1893 nil "ſalto di 5."))
      (text 70 58
            (57 nil "accidentale")
            (364 nil "accidentale")
            (684 nil "accidentale")
            (984 nil "accidentale")
            (1286 nil "accidentale")
            (1596 nil "accident.")
            (1893 nil "accidentale"))
      (text 70 58
            (64 nil "incomp.")
            (362 nil "incomp.")
            (682 nil "incomp.")
            )))
    ;; m1.51
    (("b1-c40-m2" nil nil ,*score-bg-color*)
     ((text 80 58
            (580 1020 "ᴇſſempio de ɢradi,di Ɋuinte accidentali."))
      (music 2226
             cclef7 sh1 b22 sb1 b22 sh2 b22 sb2 b22 sh3 b22 sb3 b22 sh4 b22 sb4 b22 sh5 b22 sb5 bl
             fl1 b22 sb1 b22 fl2 b22 sb2 b22 sbd2 b22 fl4 b22 sb4 b22 fl5 b22 sb5 bl
             sh2 b22 sb2 b22 sh3 b22 sb3 b22 sh4 b22 sb4 b22 sh5 b22 sb5 b22 sh6 b22 sb6 bl)
      (text 70 58
            (60 684 "gradi della prima quinta acci.")
            (798 620 "gradi della prima 5. acc.")
            (1456 756 "gradi della quinta ſeconda acc."))
      (text 70 58
            (62 548 "per ſemitono min.comp.")
            (798 622 "ꝑ ſemit.mag.aſcend.comp.")
            (1476 640 "aſcend.per ſemit.mi.comp."))
      (music 2226
             cclef7 sh3 b22 sb3 b22 sh4 b22 sb4 b22 sh5 b22 sb5 b22 sh6 b22 sb6 b22 sh7 b22 sb7 bl
             fl4 b22 sb4 b22 fl5 b22 sb5 b22 fl6 b22 sb6 b22 sb7 b22 fl8 b22 sb8 bl
             sh4 b22 sb4 b22 sh5 b22 sb5 b22 sh6 b22 sb6 b22 sh7 b22 sb7 b22 sh8 b22 sb8 bl)
      (text 70 58
            (60 686 "gradi della terza quinta acci.")
            (820 588 "gradi della terza 5.acci.")
            (1476 702 "gradi della quarta quinta acci."))
      (text 70 58
            (62 666 "aſcend.per ſemit.min.comp.")
            (822 572 "aſcen.per ſem.mag.cōp.")
            (1474 634 "aſcend.per ſem.min.comp."))))))


;; Log book: image file number, new numbering, old numbering, origin for x-coordinates.
;;
;; s047, b1-c36-m1 (ex 44), margin 364
;; s047, b1-c37-m1 (ex 45), margin 368
;; s047, b1-c37-m2 (ex 46), margin 373
;; s048, b1-c38-m1 (ex 47), margin 1064
;; s049, b1-c39-m1 (ex 48), margin 393
;; s049, b1-c39-m2 (ex 49), margin 407
;; s050, b1-c40-m1 (ex 50), margin 968, rotated -1.77
;; s050, b1-c40-m2 (ex 51), margin 978, rotated -1.8



;; Corrections for l1
;;
;; M1.07: 1 originale Korrektur, 2 weitere Fehler (moderne Korrekturen)
;; M1.09: 3 Fehler (moderne Korrekturen)
;; M1.17: 1 Fehler (moderne Korrektur)
;; M1.19: 2 Fehler (moderne Korrekturen)
;; M1.20: 1 originale Korrektur
;; M1.22: unterschiedliche Fassungen (neue Komposition der Seite) > nur für den krit. Apparat (d.h. später)
;; M1.23: 4 Fehler (moderne Korrekturen)
;; M1.24: 1 Fehler (moderne Korrektur)
;; M1.28: 1 Fehler (moderne Korrektur)
;; M1.31: 1 Fehler (moderne Korrektur)
;; M1.32: 1 Fehler (moderne Korrektur) > zu diskutieren
;; M1.47: 2 Fehler (moderne Korrekturen) > zu diskutieren
