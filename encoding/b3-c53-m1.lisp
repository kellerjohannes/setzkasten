`((:header
   (:filename "b3-c53-m1")
   (:alt-name "m3.116")
   (:comment "q021_s136, origin: 966 et al.; q021_s137, rotation: 1.25, origin: 491")
   (:creator "Vicentino21 / Johannes Keller")
   ;; Deutsch und Englisch: Anführungs- und Schlusszeichen ergänzen. Gleich wie Italienisch?
   ;;
   ;; OPEN
   (:title (:alt (:it "[»Madonna il poco dolce«]")
                 (:de "[»Madonna il poco dolce«]")
                 (:en "[»Madonna il poco dolce«]")))
   (:voice-labels
    ;; Kommentar Anne: you don't give us the possibility of translating these to German and English here.
    ;;
    ;; JK: Oha, ja, habe ich vorbereitet.
    ;;
    ;; DONE
    (s1 v1 (:alt (:it "Soprano")
                 (:de "Soprano")
                 (:en "Soprano")))
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
   (:standalone-title "»Madonna il poco dolce«")
   (:standalone-subtitle (:alt (:c-standalone "Libro 3, Capitolo 53, fol. 68v-69r")
                               (:tatti "Libro 3, Capitolo 53, fol. 68v-69r, Export »I Tatti«")
                               (:transposition-quarta-discendente
                                "Libro 3, Capitolo 53, fol. 68v-69r, eine Quarte tiefer notiert")
                               (:transposition-tono-discendente
                                "Libro 3, Capitolo 53, fol. 68v-69r, Ganzton tiefer notiert")))
   (:lyrics
    (s1 v1 "Ma -- don -- na_il po -- co dol -- ce,_il po -- co dol -- ce,
            Ma -- don -- na_il po -- co dol -- ce_e_il mol -- to_a -- ma -- ro
            il bre -- ve ri -- so_il bre -- ve ri -- so_il trop -- po lun -- go pian -- to
            il trop -- po lun -- go pian -- to_il trop --
            po lun -- go pian -- to m'han -- no ri -- dot -- to_a tan -- to che'l pian -- ger sem -- pr'e so -- spi -- rar che'l pian --
            ger sem -- _ _ pr'e so -- spi -- rar __ _ _ mi_è ca -- ro che'l pian -- ger sem -- _ _ pr'e so -- spi --
            rar mi_è ca -- ro. [Deh]")
    (s1 v2 "Ma -- don -- na_il po -- co dolc' il po -- _ _ co dol -- ce Ma -- don -- na_il po -- co dolc' il
            mol -- _ _ t'a -- ma -- ro il bre -- ve ri -- so,_il bre -- ve ri -- so il trop -- po lun --
            _ _ go pian -- to, il trop -- po lun -- _ _ go pian -- to, il trop -- po lun -- go pian -- to m'han -- no ri --
            dot -- to_a tan -- to che'l pian -- ger sem -- pr'e so -- spi -- rar, che'l pian -- ger sem -- pre e so -- spi -- rar mi_è ca -- ro
            che'l pian -- ger sem -- pr'e so -- spi -- rar che'l pian -- ger sem -- pr'e so -- spi -- rar mi_è ca -- _ ro.")
    (s1 v3 "Ma -- don -- na_il po -- co dol -- ce, [Ma -- don -- na_il po -- co dol -- ce] e_il mol -- to_a -- ma -- ro
            il bre -- ve ri -- so, [il bre -- ve ri -- so] il trop -- po lun -- go pian -- to, [il trop -- po lun -- go pian -- to]
            e'il trop -- po lun -- _ go pian -- to m'han -- no ri -- dot -- to_a tan -- to, [m'han -- no ri -- dot -- to_a tan -- to] che'l pian -- ger sem --
            pr'e so -- spi -- rar che'l pian -- ger sem -- _ _ pr'e so -- spi -- rar mi_è ca -- ro, che'l pian -- ger sem -- pre_e so -- spi -- rar mi_è ca -- ro, e so -- spi -- rar -- _ _ mi_è __ _ _ ca -- ro.")
    (s1 v4 "Ma -- don -- na_il po -- co dol -- ce, il po -- co dol -- ce, Ma -- don -- na_il po -- co dolc' e_il molt' a -- ma -- ro il
            bre -- ve ri -- so, il bre -- ve ri -- so_il trop -- po lun -- go pian -- to, il trop -- po lun -- _ go pian -- to
            m'han -- no ri -- dot -- to_a tan -- to che'il pian -- ger sem -- pr'e so -- spi -- rar__ _ _ mi_è ca -- ro che'l pian -- _
            ger sem -- _ pre e so -- spi -- rar mi_è ca -- ro.")))
  (:data
   (:text 70 58
     (827 386 "Sᴏᴘʀᴀɴᴏ."))
   ;; Musikzeile 1 (Soprano 1)
   (:music 2234
           (:voice v1)
           (:section s1)
           cclef1 fl7 (:key-signature nil nil nil nil nil nil :flat) met-imperf-min-dim b22 br5 b22 fl5 b22 sb5 sbd4 b22 m5 b22 m6 b22 sb5 b22 sb6 b22 sbd6 dot6 md6 b22 sb7 b22 sb7 b22 mrest7
           b22 m8 nat7 sbd7 dot8 nat7 md7 nat7 m7 nat7 m7 nat7 sbd7 b22 m8 b22 sb8 b22 m7 b22 sb5 b22 br6 b22 mrest5
           b22 m5 b38)
   (:text 70 58
     (157 nil "Ma")
     (289 732 "donna il poco dolce il poco dolce")
     (1073 nil "Madonna")
     (1384 663 "il poco dolce èʼil molto amaro")
     (2136 nil "il"))
   ;; Musikzeile 2 (Soprano 2)
   (:music 2236
           cclef1 fl7 (:key-signature nil nil nil nil nil nil :flat)
           b38 sm4 b38 sm2 b22 sb6 b22 m5 b38 sm4 b38 sm4 b22 sb3 b22 m3 b22
           (:ligature-start nil :sharp nil nil) br4 sh2 (:ligature-end)
           (:ligature-start nil :sharp nil nil) br5 sh3 (:ligature-end)
           br6 b38
           (:ligature-start :flat :natural nil nil) br7 nat6 (:ligature-end)
           nat7 sb7 nat7 sb7 b38 sbrest7 b22 mrest5 b38
           m4 sh4 m4 b38 m4 b22 sbd3 dot4 md4 b22 sb2 dot2 sh2 m2 b22 md3 b22 b38)
   (:text 90 58
     (131 nil "breue")
     (330 nil "riſo")
     (456 nil "il")
     (517 nil "breue riſo")
     (811 537 "il troppo lungo pianto")
     (1517 674 "il troppo lungo pinato il trop"))
   ;; Musikzeile 3 (Soprano 3)
   (:music 2238
           cclef1 fl7 (:key-signature nil nil nil nil nil nil :flat)
           b22 md3 b22 sbd3 b22 sb4 sh4 sb4 b22 br5 b22 mrest5 b38
           m5 m3 b38 m3 b38 m4 sh4 m4 b38 fl5 b22 sb5 b22 sbd5 b22 mrest5
           b22 md6 b38 md7 b22 md5 b22 fl5 b22 m5 b22 fl5 b22 m5 b22 m5 sh5 m5 b22 sb6 mrest3
           b22 sb2 b22 fl3 b22 m3 b22 b38)
   (:text 90 58
     (141 nil "po lungo pianto")
     (603 nil "mʼhanno ridotto à")
     (1082 nil "tanto")
     (1248 944 "cheʼl piāger ſemprʼe ſoſpirar cheʼl piā⸗"))
   ;; Musikzeile 4 (Soprano 4)
   (:music 2232
           cclef1 fl7 (:key-signature nil nil nil nil nil nil :flat)
           b38 m3 b22 m8 dot8 sm7 b38 sb6 b38 m8 b38 sb6 b38 m7 b38 m7 dot8 sm6 b22 sb5 sh4 m4 b38 br5 b38 sb6 b38 brrest4 b22 sbrest5 b38
           sb6 b22 sb7 nat7 sb7 nat7 m7 dot8 sm8 b38 m9 b38 m9 b38 md6 b38 md7 b22 b38)
   (:text 90 58
     (128 nil "ger ſem")
     (462 nil "prʼe ſo")
     (664 nil "ſpirar")
     (962 nil "miʼ è caro")
     (1361 nil "cheʼl pianger ſem")
     (1901 nil "prʼe ſoſpi⸗"))
   ;; Musikzeile 5 (Soprano 5)
   (:music 2220
           cclef1 fl7 (:key-signature nil nil nil nil nil nil :flat)
           b38 sb7 dot8 m6 b38 br6 sh4 (:divider :regular) br4 b38 blbl b38 fl5 b38
           (:alt (:diplomatic br5)
                 (:critical br5)
                 (:coord-barre "MZ5 N5")
                 (:coord-norm "St1 T44 N1")
                 (:comment "Textunterlegung: Dieses G♭ im Sopran wird als Andeutung einer Fortsetzung dieses Madrigals mit einem zweiten Teil interpretiert. Für die Aufnahme wurde eine Silbe benötigt, deshalb wird hier ein hypothetisches »Deh« ergänzt.")
                 (:flag :ready) (:id 1))
           b38 b38 b22
           b118 b118 b118 b118 b118 b118 b118 b118 b118 b118 b118 b118)
   (:text 90 58
     (126 nil "rar")
     (226 nil "mi è caro."))
   ;; Musikzeile 6 (Alto 1)
   (:music 2224
           (:voice v2)
           cclef5 fl4 (:key-signature nil nil nil nil nil nil :flat)
           b38 met-imperf-min-dim b38 sb6 b22 sb6 b38 sbd6 b38 md5 b38 md5 b38 m7 b38 m8 b38 m6 dot6 sm7 b38 m8 b38 m8 b38 fl9 b22 sb9 b22 fl9 b22 sb9 b38 sbrest9
           b38 br9 b22 sbd9 dot10
           (:alt (:diplomatic m9)
                 (:critical md9)
                 (:tatti md9)
                 (:coord-barre "MZ6 N16")
                 (:coord-norm "St2 T7 N2")
                 (:comment "In allen Exemplaren: G. Der hier fehlende enharmonische Punkt könnte vom Setzer irrtümlicherweise auf die nächste Note gesetzt werden, siehe Kommentar Nr. 2.")
                 (:flag :ready) (:id 2))
           sh9
           (:alt (:diplomatic md9)
                 (:tatti m9)
                 (:critical m9)
                 (:coord-barre "MZ6 N17")
                 (:coord-norm "St2 T8 N1")
                 (:comment "Ḟ♯.")
                 (:flag :ready) (:id 3))
           sh9 m9 b38 sbd9 b38 m9 b38 b38 b38)
   (:text 90 58
     (210 nil "Madonna")
     (479 nil "il poco dolcʼil po")
     (1103 nil "co")
     (1238 nil "dol")
     (1366 nil "ce")
     (1520 nil "Madonna")
     (1800 nil "il")
     (1889 nil "poco")
     (2033 nil "dolcʼil"))
   ;; Musikzeile 7 (Alto 2)
   (:music 2225
           cclef5 fl4 (:key-signature nil nil nil nil nil nil :flat)
           b38 m8 dot8 fl7 b22 sm7 b38 m6 b22 fl7 b22 sb7 b38 sb6 b38 sb6 b38 b22 mrest5
           b38 m6 b38 sm6 b38 sm8 b38 sb8 b38 m7 b38 sm5d b38 sm6 b38 m2 b38 m2 b38 mrest5
           b38 sb3 b38 sb6 nat4 sb4 b38 m7 dot8 sm6 b22 b22 b38)
   (:text 90 58
     (85 nil "mol")
     (519 nil "tʼamaro")
     (859 nil "il breue riſo")
     (1213 nil "il breue")
     (1468 nil "riſo")
     (1692 nil "il")
     (1780 nil "troppo")
     (1966 nil "lun⸗"))
   ;; Musikzeile 8 (Alto 2)
   (:music 2214
           cclef5 fl4 (:key-signature nil nil nil nil nil nil :flat)
           b38 m5 b38 m5 b22 sb3 b22 sb6 b22 sbrest7 b22 sh9 sb9 b22 sb9 sh8 sb8 b22 m8 dot8 sm7 b22 sb6 b22 fl6 b22 sb6 b22 sbd5 sb1 b22 sbrest5
           b22 b22 sbd5 b22 (:ligature-start :flat nil nil nil) fl4 br6 (:ligature-end) b22 m3 b22 sb4 b22 m5 (:ligature-start :natural :flat nil nil) nat2 br4 (:ligature-end) b22 sb3 b22 sb6 b22 sbd3 b22 md6 b38 b38)
   (:text 90 58
     (172 nil "go pianto")
     (540 nil "il troppo lun")
     (1025 nil "go pianto")
     (1316 nil "il")
     (1437 726 "troppo lungo pianto mʼhāno ri⸗"))
   ;; Musikzeile 9 (Alto 2)
   (:music 2217
           cclef5 fl4 (:key-signature nil nil nil nil nil nil :flat)
           b38 sbd2 b22 fl2 b22 m2 b22 md2 b22 md4 b22 sbd3 b22 m5 nat4 m4 b38 m5 sh5 m5 b38 m6 b38 m6 nat4 m4 nat4 m4 b22 sb2 b22 m3 b22 sb5 b22 m5 b38 mrest5 b38
           b38 m6 b38 sb6 dot6 m6 b38 m6 b38 m6 nat4 sb4 b22 sb5 b22 b38)
   (:text 90 58
     (128 1413 "dotto à tanto cheʼil piāger ſemprʼe ſoſpirar cheʼl piāger sēpre")
     (1605 nil "e ſoſpirar")
     (1891 nil "mi è caro"))
   ;; Musikzeile 10 (Alto 3)
   (:music 2209
           cclef5 fl4 (:key-signature nil nil nil nil nil nil :flat)
           b22 mrest5 b22 m6 b38 md3 b38 md4 b38 m4 b38 m5 b38 m5 nat4 m4 b38 sb3 b22 mrest1
           m9 b22 sb9 dot10 m6 sh8 sb8 b22 fl9 b22 sb9 b22 m9 b38 m9 sh8 m8 b38 sb8 b22 sb6 sh5 m5d b38 br6 b38 blbl b125 b125)
   (:text 90 58
     (125 1615 "cheʼl pianger ſemprʼe ſoſpirar cheʼl pianger ſemprʼe ſoſpirar mi è ca")
     (1826 nil "ro."))
   ;; Musikzeile 11 (Tenore 1)
   (:music 2232
           (:voice v3)
           cclef7
           (:alt (:diplomatic fl7)
                 (:critical fl6)
                 (:coord-barre "MZ11")
                 (:coord-norm "—")
                 (:comment "Original: Das ♭ in der Vorzeichnung steht eine Position höher.")
                 (:flag :ready) (:id 4))
           (:key-signature nil nil nil nil nil nil :flat)
           b22 b38 met-imperf-min-dim b38 (:ligature-start :natural :flat nil nil) nat4 br6 (:ligature-end) b22 brd5 b38 sb7 b22 sb6 b22 sb7 b38 sbd8 b38 sbd8 b38 mrest7 b38
           m8 b22 fl9 b22 sb9 dot10 fl9 b22 m9 b38 sbd8 b38 sbd8 b38 sb9 b38 sbd8 b38 mrest5
           b38 m5 b38 m5 b38 m6 b38 sb6 b38 sb5 b38 b38)
   (:text 90 58
     (179 nil "Madonna il")
     (512 nil "poco")
     (682 nil "dolce")
     (958 nil "ij")
     (1766 nil "èʼil molto amaro"))
   ;; Musikzeile 12 (Tenore 2)
   (:music 2216
           cclef7 fl6 (:key-signature nil nil nil nil nil nil :flat)
           b22 mrest3 b22 m3 b22 sm4 b22 sm5 b22 m6 b22 sb5 b22 mrest7 b22
           m7 b22 sm5 b22 sm5 b22 sb7 b22 m7 b22 sbrest7 b22
           sb5 b22 m4 b22 m4 nat6 m6 nat6 m6 b22 sb5 sh7 sb7 b22 sbrest7
           b22 sb8 b22 br9 b22 sb5 b22 sb5 dot6 m5 b22 sbd5 b22 sbd5 b22 b38)
   (:text 90 58
     (181 nil "il breue")
     (418 nil "riſo")
     (638 nil "ij")
     (1068 513 "il troppo lungo pianto")
     (1748 nil "ij"))
   ;; Musikzeile 13 (Tenore 3)
   (:music 2224
           cclef7 fl6 (:key-signature nil nil nil nil nil nil :flat)
           b22 mrest5 b22 m6 sh3 m3 b22 m4 b22 sbd4 b22 sbd5 b22 sb5 b22 sb8 sb4 b22 mrest7
           b22 m9 b22 m8 b22 m8 sh7 m7 b22 m7 b22 sb5 b22 md8 b22 md8 nat6 md6 b22 md6 b22 md5 b22 md1 b22 sbd1 b22 sbd1 b22 sb2 b22 m2 b22 m3 b22 m3 b22 b38)
   (:text 90 58
     (182 nil "èʼil troppo lun")
     (564 nil "go pianto")
     (818 nil "mʼhanno ridotto à tanto")
     (1456 nil "ij")
     (1822 nil "cheʼl piāger ſem⸗"))
   ;; Musikzeile 14 (Tenore 4)
   (:music 2213
           cclef7 fl6 (:key-signature nil nil nil nil nil nil :flat)
           b38 m4 sh3 m3 sh3 m3 b22 m7 b22 m2 b22 m2 b22 m2 b22 m5 dot6 sm6 b22 m7 b22 m3 b22 m3 b22 m3 b22 m4 b22 m6 b22 sb5 b22 sb4 sbrest3
           sh3 sb3 b22 fl4 b22 m4 b22 md3 b22 br4 b22 m7 b22 sb8 b22 m8 b22 m9 b38 b38)
   (:text 90 58
     (80 nil "prʼe ſoſpirar cheʼl piāger")
     (822 nil "ſemprʼ e ſoſpirar miʼè caro")
     (1482 nil "cheʼl pianger ſempre e ſoſpi⸗"))
   ;; Musikzeile 15 (Tenore 5)
   (:music 2211
           cclef7 fl6 (:key-signature nil nil nil nil nil nil :flat)
           b22 m9 b22 m9 nat6 m6 b22 mrest5
           b22 m5 b22 md8 b22 md8 b22 m6 dot6 sm7 b22 m8 b22 m5 dot6 sm4 b22 m3 b22 sb2 b38 (:duration-override 1/2) longa1 (:duration-override 1) b38 blbl
           b38 b38 b125 b38 b38 b22 b125 b125 b125 b125 b125)
   (:text 110 58
     (125 nil "mi è caro")
     (417 nil "e ſoſpirar")
     (856 nil "mi è")
     (1116 nil "caro."))
   ;; Musikzeile 16 (Basso 1)
   (:music 2237
           (:voice v4)
           (:f-clef) max7 fclef7 fl3 (:key-signature nil nil nil nil nil nil :flat)
           b38 met-imperf-min-dim b38 sb8 b22 sb8 b22 sbd5 b22 sbd7 b22 m4 b22
           m7 b22 m8 b22 m8 b22 m7 b22 m7 b22 brd5 b22 sb8 b38 sbrest7 b38 sb4 b22 sbd8 dot8 md8 b38 m6 b38 m6 b22 sbd8
           b22 m6 b22 sb7 b22 m8 b22 sb8 b22 sb7 b22 mrest5 b38 m5 b38 b38)
   (:text 90 58
     (256 nil "Madon")
     (470 655 "na il poco dolce il poco dolce")
     (1164 885 "Madonna il poco dolcʼè il moltʼamaro")
     (2111 nil "il"))
   ;; Musikzeile 17 (Basso 2)
   (:music 2217
           (:f-clef) max7 fclef7 fl3 (:key-signature nil nil nil nil nil nil :flat)
           sm4 b38 sm7 b38 m8 b22 sb5 b38 mrest5 b38 m4 b38 sm7 b38 sm5d b38 sb4 b22 m2 b22 br5 b22 br6 b22
           (:ligature-start nil :sharp nil nil) br7 sh5 (:ligature-end) br8 b22 br6 b22 br5 dot6 sbrest3
           b22 sbd2 b22 sb3 nat3 sb3 b22 sbd4 b22 sbd2 b22 br5 b22 (:ligature-start :flat nil nil nil) fl4 b22 br6 (:ligature-end)
           b22 sb8 b38 b38)
   (:text 90 58
     (154 nil "breue")
     (354 nil "riſo")
     (593 nil "il")
     (654 nil "breue")
     (832 614 "riſo il troppo pianto")
     (1517 nil "il troppo lun")
     (1893 nil "go")
     (2006 nil "pianto"))
   ;; Musikzeile 18 (Basso 3)
   (:music 2214
           (:f-clef) max7 fclef7 fl3 (:key-signature nil nil nil nil nil nil :flat)
           b22 sbrest7 b22 sb5 b22 md5d b38 md5d b22 md1 b38 md1 b22 sbd5 b22 sbd1 b22 brrest4
           sb2 b22 sb3 nat3 sb3 b22 sb4 b22 sb2 b22 sb7 dot8 m5 b22 m3 dot4 sm2 b22 m1 b22 m1 b22
           sb5 b22 sb1 b22 sbrest3 b22 sb5 b22 sbd5 b22 fl6 b22 sb6 b22 b38)
   (:text 90 58
     (141 374 "mʼhanno ridotto")
     (545 nil "à")
     (609 nil "tanto")
     (783 836 "cheʼil pianger ſemprʼe ſoſpirar mi è")
     (1663 nil "caro")
     (1862 265 "cheʼl pian⸗"))
   ;; Musikzeile 19 (Basso 4)
   (:music 2226
           (:f-clef) max7 fclef7 fl3 (:key-signature nil nil nil nil nil nil :flat)
           b38 sb6 b22 sb7 b22 sb8 b22 sb6 b22 mrest7 b22 m8 b22 sb5 b22 sbd5 b22 fl6 b22 sb6 b22 br5 b22 sb2 b22
           (:divider :double)
           (:duration-override 1/2) longa9 (:duration-override 1) b38 bl
           b22 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38 b38)
   (:text 90 58
     (98 nil "ger ſem")
     (378 nil "pre")
     (550 nil "e ſoſpirar")
     (851 nil "mi è caro."))))
