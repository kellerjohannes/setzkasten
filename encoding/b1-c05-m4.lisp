`((:header
   (:filename "b1-c05-m4")
   (:alt-name "m1.006")
   (:comment "q021_s024, origin: 1057")
   (:creator "Vicentino21 / Johannes Keller")
   (:title (:alt (:it "Dimostratione della mano enarmonica diatonica,\\ascendente con le sette lettere della mano")
                 (:de "")
                 (:en "Illustration of the diatonic enharmonic hand,\\ascending with the seven letters of the hand")))
   (:section-headings
    (s1 (:alt (:it "Alamire")
              (:de "")
              (:en "Alamire")))
    (s2 (:alt (:it "Bmi")
              (:de "")
              (:en "Bmi")))
    (s3 (:alt (:it "Csolfaut")
              (:de "")
              (:en "Csolfaut")))
    (s4 (:alt (:it "Dlasolre")
              (:de "")
              (:en "Dlasolre")))
    (s5 (:alt (:it "Elami")
              (:de "")
              (:en "Elami")))
    (s6 (:alt (:it "Ffaut")
              (:de "")
              (:en "Ffaut")))
    (s7 (:alt (:it "Gsolreut")
              (:de "")
              (:en "Gsolreut")))))
  (:preamble-lilypond
   (:lyrics
    ;; JK: Im Auge zu behalten: die Silben werden standardmässig kleiner gesetzt als die "per
    ;; x:"-Angaben und die 'captions'. Das müsste in der lilypond-backend-Implementierung angepasst
    ;; werden, falls die Unterschiedlichkeit der Schriftgrössen nicht akzeptabel sein sollte.
    ;;
    ;; OPEN
    (s1 v1 "\\set stanza = \\markup{ \\normal-text \"per nat.:\" } la")
    (s1 v1 "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } \\skip 1 mi")
    (s1 v1 "\\set stanza = \\markup{ \\normal-text \"per ♮:\" } \\skip 1 \\skip 1 re")

    (s2 v1 "\\set stanza = \\markup{ \\normal-text \"per ♮:\" } mi")

    (s3 v1 "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } sol")
    (s3 v1 "\\set stanza = \\markup{ \\normal-text \"per nat.:\" } \\skip 1 fa")
    (s3 v1 "\\set stanza = \\markup{ \\normal-text \"per ♮:\" } \\skip 1 \\skip 1 ut")

    (s4 v1 "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } la")
    (s4 v1 "\\set stanza = \\markup{ \\normal-text \"per ♮:\" } \\skip 1 sol")
    (s4 v1 "\\set stanza = \\markup{ \\normal-text \"per nat.:\" } \\skip 1 \\skip 1 re")

    (s5 v1 "\\set stanza = \\markup{ \\normal-text \"per ♮:\" } la")
    (s5 v1 "\\set stanza = \\markup{ \\normal-text \"per nat.:\" } \\skip 1 mi")

    (s6 v1 "\\set stanza = \\markup{ \\normal-text \"per nat.:\" } fa")
    (s6 v1 "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } \\skip 1 ut")

    (s7 v1 "\\set stanza = \\markup{ \\normal-text \"per nat.:\" } sol")
    (s7 v1 "\\set stanza = \\markup{ \\normal-text \"per ♭:\" } \\skip 1 re")
    (s7 v1 "\\set stanza = \\markup{ \\normal-text \"per ♮:\" } \\skip 1 \\skip 1 ut")
    ))
  (:data
   (:text 70 58 (86 2053 "ᴅimoſtratione della mano ᴇnarmonica ᴅiatonica, aſcendente con le ſette lettere della ᴍano."))
   (:text 90 58
          (43 nil "ᴀ la mi re")
          (459 nil "ʙ mi")
          (622 nil "ᴄ ſol fa ut")
          (983 nil "ᴅ la ſol re")
          (1320 nil "ᴇ la mi")
          (1565 nil "ꜰ fa ut")
          (1809 nil "ɢ ſol re ut"))
   (:music 2214
           (:voice v1)
           (:section s1)
           b38 (:f-clef) max7 fclef7 b22 sbd2 b38 sbd2 b38 sbd2 b38 bl
           (:section s2)
           b38 sbd3 b38 bl
           (:section s3)
           b38 sbd4 b38 sbd4 b38 sbd4 b38 bl
           (:section s4)
           b38 sbd5 b38 sbd5 b38 sbd5 b38 bl
           (:section s5)
           b22 sbd6 b38 sbd6 b22 bl
           (:section s6)
           b22 sbd7 b38 sbd7 b38 bl
           (:section s7)
           b22 sbd8 b38 sbd8 b38 sbd8 b38 bl b22)
   (:text 70 58
          (44 354 "ꝑ nat. ꝑ ♭. ꝑ ♮.")
          (478 139 "per ♮.")
          (646 307 "ꝑ ♭.ꝑ ♮. ꝑ n.")
          (994 297 "ꝑ ♭.ꝑ ♮.ꝑ n.")
          (1346 204 "ꝑ ♮. ꝑ n.")
          (1594 209 "ꝑ n. ꝑ b.")
          (1826 341 "per n.ꝑ ♭.ꝑ ♮."))
   (:text 70 58
          (169 nil "la mi re")
          (556 nil "mi")
          (695 nil "ſol fa ut")
          (1045 nil "la ſol re")
          (1386 nil "la mi")
          (1642 nil "fa ut")
          (1908 nil "ſol re ut"))))
