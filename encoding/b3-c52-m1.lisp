;; JK: Achtung, alle Custodien fehlen, ist zu ergänzen!
;;
;; OPEN

`((:header
   (:filename "b3-c52-m1")
   (:alt-name "m3.115")
   (:comment "q021_s134, origin: 996; q021_s135, rotation: 1.9, origin: 441")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Essempio della prima parte di uno madrigale a quattro voci,\\che si può cantare à cinque modi, cioè,\\diatonico e poi\\cromatico e poi\\cromatico e enarmonico e poi\\diatonico e cromatico e poi\\diatonico e cromatico e enarmonico")
                 (:de "Beispiel des erten Teils eines Madrigals für vier Stimmen,\\das auf fünf Arten und Weisen gesungen werden kann,\\d.h. diatonisch\\und dann chromatisch,\\und dann chromatisch und enharmonisch,\\und dann diatonisch und chromatisch,\\und dann diatonisch und chromatisch und enharmonisch.")
                 (:en "Example of the first part of a madrigal in four voci\\which may be sung in five ways: that is\\diatonic and then\\chromatic and then\\chromatic and enharmonic and then\\diatonic and chromatic and then\\diatonic, chromatic and enharmonic.")))
   ;; JK: Dieses Beispiel wurde in drei Varianten (texttreu, ohne Punkte, ohne Punkte und ohne
   ;; Versetzungszeichen) aufgenommen. Sollen diese drei Varianten als separate Partituren gegeben
   ;; werden?
   ;;
   ;; OPEN

   (:voice-labels
    (s1 v1 (:alt (:it "[Soprano]")
                 (:de "[Soprano]")
                 (:en "[Soprano]")))
    (s1 v2 (:alt (:it "[Alto]")
                 (:de "[Alto]")
                 (:en "[Alto]")))
    (s1 v3 (:alt (:it "[Tenore]")
                 (:de "[Tenore]")
                 (:en "[Tenor]")))
    (s1 v4 (:alt (:it "[Basso]")
                 (:de "[Basso]")
                 (:en "[Bass]")))))
  (:preamble-lilypond
   (:clef-overrides
    (s1 v1 "treble")
    (s1 v2 "treble_8"))
   (:standalone-title "»Dolce mio ben«")
   (:standalone-subtitle (:alt (:c-standalone "Libro 3, Capitolo 52, fol. 67v-68r")
                               (:tatti "Libro 3, Capitolo 52, fol. 67v-68r, Export »I Tatti«")
                               (:transposition-quarta-discendente
                                "Libro 3, Capitolo 52, fol. 67v-68r, eine Quarte tiefer notiert")
                               (:transposition-tono-discendente
                                "Libro 3, Capitolo 52, fol. 67v-68r, einen Ganzton tiefer notiert")))
   (:lyrics
    (s1 v1 "Dol -- ce mio ben, [dol -- ce mio ben]
            son que -- sti dol -- ci lu -- mi_i dol -- ci lu -- mi,
            dol -- ce mio ben son que -- sti dol -- ci lu -- mi,
            son que -- sti dol -- ci lu -- mi che tan -- to dol -- ce -- men -- te,
            che tan -- to dol -- ce -- men -- te mi con -- su -- mi,
            che tan -- to dol -- ce -- men -- te
            fan -- no che dol -- ce -- men -- te mi con -- su -- mi, mi con -- su -- mi.")
    (s1 v2 "Dol -- ce mio ben, [dol -- ce mio ben]
            son que -- sti dol -- ci lu -- mi,
            dol -- ce mio ben, [dol -- ce mio ben]
            son que -- sti_i dol -- ci lu -- mi,_i dol -- ci lu -- mi
            che tan -- to, che tan -- to dol -- ce -- men -- te
            fan -- no che dol -- ce -- men -- te, che dol -- ce -- men -- te
            mi con -- su -- mi, mi con -- su -- mi,
            fan -- no che dol -- ce -- men -- te mi con -- su -- mi, mi con -- su -- mi.")
    (s1 v3 "Dol -- ce mio ben son que -- st'i dol -- ci lu -- mi,
            dol -- ce mio ben son que -- st'i dol -- ci lu -- mi,
            son que -- st'i dol -- ci lu -- m'_i dol -- ci lu -- mi
            che tan -- to dol -- ce -- men -- te,
            che tan -- to dol -- ce -- men -- te mi con -- su -- mi,
            che tan -- to dol -- ce -- men -- te mi con -- su -- mi,
            dol -- ce -- men -- te mi con -- su -- mi.")
    (s1 v4 "Dol -- ce mio ben, [dol -- ce mio ben]
            son que -- st'i dol -- ci lu -- mi,
            dol -- ce mio ben, [dol -- ce mio ben]
            son que -- st'i dol -- ci lu -- mi,
            che tan -- to dol -- ce -- men -- te,
            [che tan -- to dol -- ce -- men -- te]
            fan -- no che mi con -- su -- mi,
            che dol -- ce -- men -- te mi con -- su -- mi,
            mi con -- su -- _ mi.
            Hay -- me")))
  (:data
   (:text 70 58
     (117 1884 "Eſſempio della prima parte di uno Madrigale à quattro uoci,che ſi può cantare à"))
   (:text 70 58
     (313 1581 "cinque modi,cioè,Diatonico & poi Cromatico:& poi ᴄromatico &"))
   (:text 70 58
     (425 1365 "Enarmonico;& poi ᴅiatonico ,& ᴄromatico ;& poi ᴅia⸗"))
   (:text 70 58
     (661 882 "tonico,& ᴄromatico,& ᴇnarmonico."))
   ;; Musikzeile 1 (Sopran 1)
   (:music 2213
           (:voice v1)
           (:section s1) cclef1 fl7 (:key-signature nil nil nil nil nil nil :flat) b22 met-imperf-min-dim b22 sb4 b22 m4 sh4 m4 b22 m5 b22 m5 b22 m1 b22 m8 b22 sb6 b22 mrest5
           b22 m3 b22 m6 b22 m6 sh4 m4 sh4 m4 fl5 m5 fl5 m5 b22 m5 b22 m5 sb2 sb6 sbrest5
           b22 md5 dot6 smd5 m1 b22 m4 sh4 m4 b22 m4 b22 sm3 b38)
   (:text 140 58
     (204 nil "Dolce mio ben")
     (590 nil "ij")
     (845 775 "ſon queſti dolci lumi i dolci lumi")
     (1658 548 "dolce mio bē ſon queſti"))
   ;; Musikzeile 2 (Sopran 2)
   (:music 2196
           cclef1 fl7 (:key-signature nil nil nil nil nil nil :flat) b22 m3 b22 sm3 b22 md6 b22 md3 b22 mrest3
           b22 m4 b22 sm1 b22 sm1 sb4 b22 m3 fl3 md3 b22 md3 b22 m4 b22 m4 b22 sm4 b22 m4 b22 sm4 sb2 b22 sb2 b22 mrest1 b22 m1 b22 md1 dot2 smd1 fl2 m2 fl2 m2 fl2 sb2 b22 sb2 b22 md2 b22 md2 b38)
   (:text 120 58
     (123 nil "dolci")
     (272 nil "lumi")
     (441 nil "ſon queſtʼi")
     (709 nil "dolci lumi che tānto dolcemente")
     (1466 732 "che tanto dolcemente mi con⸗"))
   ;; Musikzeile 3 (Sopran 3)
   (:music 2209
           cclef1 fl7 (:key-signature nil nil nil nil nil nil :flat) b22 fl3 b22 sb3 b22 m1 b22 sb1 b22 sb8 nat7
           (:alt (:diplomatic md7)
                 (:critical md7)
                 (:tatti m7)
                 (:coord-barre "MZ3 N5")
                 (:coord-norm "St1 T18 N2")
                 (:comment "Dieses Ḃ♮ passt nicht zum Bass (G) und zum Alt (G), denn es entsteht eine _terza più di maggiore_. Als melodische Vorausnahme des ersten Klangs in T. 19 wird das Ḃ♮ hier jedoch akzeptiert.")
                 (:flag :ready) (:id 1))
           nat7 md7 nat7 md7 b22 m8 b22 m5 b22 mrest5
           b22 m6 sh4 m4 sh4 m4 b22 fl5 b22 m5 b22 fl5 b22 m5 b22 sb5 b22 m5 b22 sb3 b22 m3 sb6 b22 m6 b22 sb6 b22 m6 b22 sb2 b22 (:duration-override 2) brd2 (:duration-override nil) b22 blbl)
   (:text 90 58
     (168 nil "ſumi")
     (325 nil "che tanto")
     (584 nil "dolcemente")
     (941 nil "fanno che")
     (1220 nil "dol")
     (1361 782 "cemente mi conſumi mi conſumi."))
   ;; Musikzeile 4 (Alt 1)
   (:music 2229
           (:voice v2)
           (:section s1) cclef5 fl4 (:key-signature nil nil nil nil nil nil :flat) met-imperf-min-dim b22 sbrest5 b22 sb6 nat4 m4 b22 m5 b22 m3 b22 m3 dot4 sm3 b22 m6 b22 m6 b22 m2 b22 m5 sh5 m5 b22 m6 b22 m6 sbd3 b22 sb6 b22 mrest5
           b22 m4 b22 m3 b22 m5 sb2 sbd5 m3 b22 m3 b22 m3 b22 m3 b22 m3 b22 m3 b22 b38)
   (:text 100 58
     (216 nil "Dolce mio ben")
     (610 nil "ij")
     (860 nil "ſon queſti dolci lumi")
     (1414 nil "dolce mio bē")
     (1735 nil "ij")
     (1937 nil "ſon queſti"))
   ;; Musikzeile 5 (Alt 2)
   (:music 2224
           cclef5 fl4 (:key-signature nil nil nil nil nil nil :flat) b38 md0 b22 md3 sh1 m1 b22 sb1 fl3 m3 b22 sb2 sbd5 b22 m3 b22 m5 b22 m3 sb6 m9 b22 m9 b22 m9 m5d dot6 sm5d fl7 sbd7 fl3 sb3 b22 mrest3
           b22 m4 b22
           (:alt (:diplomatic md4)
                 (:critical m4)
                 (:tatti m4)
                 (:coord-barre "MZ5 N20")
                 (:coord-norm "St2 T16 N1")
                 (:comment "In allen Exemplaren: Ḃ♭.")
                 (:flag :ready) (:id 2))
           b22 m1 b22 md8 b22 md8 b22 sb4 b22 m2 m9 b22 m7 fl7 m7 b38)
   (:text 90 58
     (130 nil "i dolci")
     (321 1852 "lumi i dolci lumi che tāto che tanto dolcemente fanno che dolcemēte che dolce⸗"))
   ;; Musikzeile 6 (Alt 3)
   (:music 2223
           cclef5 fl4 (:key-signature nil nil nil nil nil nil :flat) b22 m6 b22 m9 b22 md6 b22 md6 b22 m9 b22 sb7 b22 m7 sb3 b22 sbd6 nat4
           (:alt (:diplomatic sb4)
                 (:critical m4)
                 (:coord-barre "MZ6 N10")
                 (:coord-norm "St2 T21 N2")
                 (:comment "In allen Exemplaren: Semibrevis.")
                 (:flag :ready) (:id 3))
           b22 m4 b22 m2 b22 m9 b22 m9 b22 m9 sh8 m8 b22 m8 b22 m7 b22 m7 b22 m7 b22 m8 b22 m8 b22 m8 b22 brd4 b22 brd4 b22 blbl b38 b38 b125)
   (:text 100 58
     (91 1851 "mente mi conſumi mi conſumi fanno che dolcemente mi conſumi mi conſum i."))
   ;; Musikzeile 7 (Tenor 1)
   (:music 2221
           (:voice v3) (:section s1)
           cclef7 fl6 (:key-signature nil nil nil nil nil nil :flat) b22 met-imperf-min-dim b22 brrest4 b22 sbrest5 b22 sb3 b22 m3 sh3 m3 b22 m4 b22 m2 b22 m2 b22 m5 b22 m5 b22 m5 b22 sbd8 nat6 m6 b22 m6 b22 m3 b22 m3 m7 sb3 b22 m2 b22 md2 b22 md2 b22 m3 b22 m3 b22 m1 sb8 sh7 m7 b22 fl8 b22 m8 b22 b38)
   (:text 100 58
     (309 1859 "Dolce mio ben ſon queſtʼi dolci  lumi dolce mio bē ſon queſtʼi dolci lumi sō queſtʼi"))
   ;; Musikzeile 8 (Tenor 2)
   (:music 2227
           cclef7 fl6 (:key-signature nil nil nil nil nil nil :flat) b22 fl8 b22 m8 b22 m8 b22 sb5 b22 m7 b22 m7 b22 m7 b22 sbd4 b22 m7 b22 m5d b22 m7 b22 m3 b22 m3 b22 m6 nat6 m6 b22 m6 b22 fl2 b22 sb2 fl5 b22 md5 b22 fl5 b22 md5 b22 m3 b22 m3 b22 sb3 b22 m3 b22 mrest3
           b22 md6 b22 md6 b22 b38)
   (:text 100 58
     (186 nil "dolci lumʼ i dolci lumi")
     (774 nil "che")
     (917 nil "tanto")
     (1072 nil "dolcemente")
     (1486 nil "che tanto dolcemente")
     (2019 nil "mi con"))
   ;; Musikzeile 9 (Tenor 3)
   (:music 2228
           cclef7 fl6 (:key-signature nil nil nil nil nil nil :flat) b22
           (:alt (:diplomatic sb6 b22 br4)
                 (:critical br4 b22 sb0)
                 (:coord-barre "MZ9 N1-2")
                 (:coord-norm "St3 T17-18")
                 ;; JK: Verweis auf Kapitelkommentar ergänzen.
                 ;;
                 ;; OPEN
                 (:comment "In allen Exemplaren wurde die erste Note als Semibrevis auf B♭ und die zweite Note als Brevis auf C gedruckt. Die zweite Note wurde manuell mit einer Drucktype zu einer Brevis auf G korrigiert (In-house Korrektur). Zur Fassung der kritischen Ausgabe siehe [Kapitelkommentar, Verweis zu ergänzen].")
                 (:flag :ready) (:id 4))
           b22 brrest2
           b22 m2 b22 sb7 sh7 m7 b22 m8 b22 m8 b22 md5 b22 md5 b22 mrest7
           b22 m8 b22 fl9 b22 m9 b22 sb7 b22 m7 b22 mrest5
           b22 m5d b22 m7 sh7 sb7 b22 m7 b22 m3 b22 m1 b22 brd3 b22 brd3 b22 blbl b118 b118)
   (:text 100 58
     (122 nil "ſumi")
     (273 nil "che tan")
     (479 nil "to dolcemente")
     (875 nil "mi")
     (1040 nil "conſumi")
     (1313 nil "dolce")
     (1479 nil "mente mi conſumi."))
   ;; Musikzeile 10 (Bass 1)
   (:music 2227
           (:voice v4)
           (:section s1)
           (:f-clef) max7 fclef7 fl3 (:key-signature nil nil nil nil nil nil :flat) b22 met-imperf-min-dim b22 lrest24 b22 sb5 nat3 m3 b22 m4 b22 sb2 sb5 b22 md5 b22 md5 b22 m1 b22 m1 b22 m3 b22 m3 b22 m0 b22 m0 sb4 b22 sbd4 mrest5
           b22 m5 dot6 sm5 b22 m5 m2 b22 m2 b22 md2 b22 md2 b22 m5 b22 m5 b22 m7 b22 m7 b22 b38)
   (:text 90 58
     (257 nil "Dolce mio ben")
     (654 nil "ij")
     (847 nil "ſon queſtʼi dolci lumi")
     (1363 nil "dolce")
     (1522 nil "mio")
     (1640 nil "ben")
     (1774 nil "ij")
     (1904 nil "ſon queſtʼi"))
   ;; Musikzeile 11 (Bass 2)
   (:music 2227
           (:f-clef) max7 fclef7 fl3 (:key-signature nil nil nil nil nil nil :flat) b22 m4 b22 m4 b22 sbd4 sb0 mrest3
           b22 m3 b22 m3 b22 m1 b22 m1 b22 m1 b22 fl2 b22 sb2 b22 fl2 b22 md2 fl2 md2 b22 fl5 b22 m5 b22 fl5 b22 m5 b22 fl5 m5 m3 b22 sb3 b22 sbd3 fl6 b22 sb6 b22 m6 b22 m6 b22 sb8 dot8 m8 b22 sbd8 b38)
   (:text 110 58
     (179 nil "dolci lumi")
     (459 nil "che")
     (591 nil "tanto dolce")
     (904 nil "men")
     (1046 nil "te")
     (1205 nil "ij")
     (1727 nil "fanno che mi conſu"))
   ;; Musikzeile 12 (Bass 3)
   (:music 2224
           (:f-clef) max7 fclef7 fl3 (:key-signature nil nil nil nil nil nil :flat) b22 m4 b22 m4 b22 m2 b22 m2 b22 m5 b22 m5 b22 md5 b22 md5 b22 sb1 b22 sb4 b22 sbrest5
           b22 sb5 b22 sb2 b22 sb2 b22 sb3 b22 (:divider :double) (:duration-override 2) brd3 (:duration-override nil) b38 blbl
           b38 nat3 b22 sb3 nat3 sb3 b38 blbl b38 b38 b118 b118 b118 b118)
   (:text 90 58
     (138 nil "mi che dolcemente mi conſumi")
     (936 nil "mi")
     (1025 nil "conſu")
     (1202 nil "mi.")
     (1454 nil "Hayme")))
  )
