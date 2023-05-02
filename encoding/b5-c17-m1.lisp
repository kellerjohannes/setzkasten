;; Kommentar Luigi
;; 5.14

;; (110r)

;; 2. Linie, 6. Und 7. Note: Sib-punkt und Sib, statt Lab-punkt und Lab.

;; (110v)

;; 1. Linie, 1. Note: La# statt Si#

;; 1.
;; Linie, 8. Note: Mi[b]-punkt statt Mi-punkt ?

`((:header
   (:filename "b5-c17-m1")
   (:alt-name "m5.013")
   (:comment "q021_s219, rotation: 0, origin: 520")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "[Del Gsolreut quarto]")
   (:section-headings
    (s1 "Le quattro terze\\discendenti")
    (s2 " \\Quinta")
    (s3 "Le quattro seste\\discendenti")
    (s4 " \\Ottava")
    (s5 "Le quattro terze\\ascendenti")
    (s6 " \\Quinta")
    (s7 "Le quattro seste\\ascendenti")
    (s8 " \\Ottava"))
   (:section-captions
    (s1 "Terza minore / terza maggiore")
    (s3 "Sesta minore / sesta maggiore")
    (s5 "Terza minore / terza maggiore")
    (s7 "Sesta minore / sesta maggiore"))
   (:voice-labels
    (:all v1 "")
    (:all v2 ""))
   (:line-headings
    "[Tutte le consonanze di Gsolreut quarto ascendenti]"
    "[Tutte le consonanze di Gsolreut terzo discendenti]"))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:data
   (:text 90 58
          (49 nil "le quattro terze")
          (541 nil "5.")
          (686 nil "le quattro seſte")
          (1073 nil "8.")
          (1263 nil "le quattro 3.")
          (1602 nil "5.")
          (1706 nil "le quattro 6.")
          (2095 nil "8."))
   (:music 2216
           (:voice v1)
           (:section s1) cclef7 b38 sbd4 b38 (:divider :regular) sbd4 bl b38 sbd4 b38 sbd4 b38 bl
           (:section s2) sbd4 bl
           (:section s3) sbd4 b38 (:divider :regular) sbd4 bl b38 sbd4 b38 sbd4 b38 bl
           (:section s4) b38 sbd4 b22
           (:section s5) (:newline) cclef3 b38 fl2 sbd2 (:divider :regular) sb2 bl sbd2 sh2 sb2 bl
           (:section s6) sbd4 bl
           (:section s7) fl5 sbd5 b22 (:divider :regular) sb5 bl sbd5 sh5 sb5 bl
           (:section s8) sbd7 b22 bl)
   (:text 110 58
          (86 nil "3.min.")
          (297 nil "3.mag.")
          (615 nil "6.mi.")
          (816 nil "6.mag.")
          (1240 nil "3.mi.")
          (1422 nil "3.mag.")
          (1675 nil "6.mi.")
          (1915 nil "6.mag."))
   (:music 2216
           (:voice v2)
           (:section s1) (:f-clef) max7 fclef7 b22 sbd6 (:divider :regular) sb6 bl fl6 sbd6 fl6 sb6 b22 bl
           (:section s2) sbd4 bl
           (:section s3) sbd3 b22 (:divider :regular) sb3 bl b22 fl3 sbd3 fl3 sb3 bl
           (:section s4) b22 sbd1 b22
           (:section s5) (:f-clef) max7 fclef7 b38 sbd8 b22 (:divider :regular) sbd8 bl sbd8 b22 sbd8 bl
           (:section s6) sbd8 bl
           (:section s7) b38 sbd8 b22 (:divider :regular) sbd8 b38 bl b22 sbd8 b22 sbd8 b22 bl
           (:section s8) b22 sbd8 b22 bl)
   (:text 70 58
          (54 2077 "Le ſopra scritte sono tutte le conſonanze di Gſolreut quarto diſcendenti & aſcendenti."))))
