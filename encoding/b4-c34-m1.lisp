`((:header
   (:filename "b4-c34-m1")
   (:alt-name "m4.027")
   (:comment "q021_s180, rotation: 0, origin: 1025; q021_s181, rotation: 1.05, origin: 484")
   (:creator "Vicentino21 / Johannes Keller")
   (:section-headings
    (s1 (:alt (:it "A due voci sopra il canto fermo per ottava")
              (:de "mit zwei Stimmen über den canto fermo in der ottava")
              (:en "In two voci on the canto fermo at the ottava")))
    (s2 (:alt (:it "A due voci di sotto dal canto fermo per terza")
              (:de "mit zwei Stimmen unter dem canto fermo in der terza")
              (:en "In two voci below the canto fermo at the terza")))
    (s3 (:alt (:it "A due voci per decima sopra")
              (:de "mit zwei Stimmen in der decima darüber")
              (:en "In two voci at the decima above")))
    (s4 (:alt (:it "A due voci, con un sospiro, per terza sopra")
              (:de "mit zwei Stimmen, mit einem sospiro, in der terza darüber")
              (:en "In two voci, with a sospiro, at the terza above")))
    (s5 (:alt (:it "A tre voci alla decima sopra")
              (:de "mit drei Stimme in der decima darüber")
              (:en "In three voci at the decima above")))
    (s6 (:alt (:it "A tre voci per ottava")
              (:de "mit drei Stimmen in der ottava")
              (:en "In three voci at the ottava")))
    (s7 (:alt (:it "A due voci tenore et tenore")
              (:de "mit zwei Stimmen, Tenore und Tenore")
              (:en "In two voci, tenor and tenor")))
    (s8 (:alt (:it "Parte ch'era di sopra")
              (:de "Stimme, die darüber ist")
              (:en "Part which is above"))))
   (:voice-order
    (s1 v1 v2)
    (s2 v1 v2)
    (s3 v1 v2)
    (s4 v2 v3)
    (s5 v1 v2 v3)
    (s6 v1 v2 v3)
    (s7 v1 v2)
    (s8 v1 v2))
   (:section-captions
    (s2 (:alt (:it "Il medesimo procedere, et i gradi medesimi")
              (:de "das gleiche Vorgehen und die gleichen Tonschritte")
              (:en "The same way of proceeding, and the same steps")))
    (s6 (:alt (:it "Il tenore et il soprano\\paiono due ottave et non sono")
              (:de "der Tenore und der Soprano\\scheinen zwei [aufeinanerfolgende] ottave und sind es nicht")
              (:en "The tenor and the soprano\\appear to be two [consecutive] ottave and are not")))
    (s8 (:alt (:it "Parte ch'era di sotto")
              (:de "Stimme, die darunter ist")
              (:en "Part which is below")))))
  (:data
   (:text 90 58
          (500 970 "A due uoci ſopra il canto fermo per ottaua."))
   (:music 2214
           (:section s1)
           (:voice v1) cclef1 b38 met-imperf-min-dim b38 mrest3 b38 m3 dot4 sm2 b38 m1 b38 m0 b38 m3 b38 m2 b38 m3 dot4 sm1 b38 m4 b38 m2 b38 sb5 b38 m6 dot6 sm5 b38 sm4 b38 sm3 b38 m4 b38 m3 b38 b38 bl
           b125 b38 b125 b125)
   (:music 2193
           (:voice v2) cclef7 b38 met-imperf-min-dim b38 b38 sb2 b38 b38 sb2 b38 b38 sb2 b38 b38 sb4 b38 b38 sb5 b38 b38 sb6 b38 b38 sb7 b38 b38 sb5 b38 br5 b38 bl
           b22 b125 b125 b125 b125 b125 b125 b22 b125)
   (:text 90 58
          (988 632 "A due uoci ꝑ decima ſopra.")
          (1715 462 "A tre uoci ꝑ ottaua."))
   (:music 2243
           b125 b125 b125 b125 b125 b125 b125 b38
           (:section s3 s5) (:newline)
           (:voice v1) cclef1 b22 met-imperf-min-dim b22 m5 dot4 sm4 m3 m2 m4 b22 m3 m5 m4 b22 sb3 bl
           (:section s6)
           (:voice v1) cclef1 mrest5 sb6 b22 m5 m3 sb5 m4 b22 m2 sb6 m5 b22 bl)
   (:text 90 58
          (998 631 "ᴀ tre uoci alla decima ſopra")
          (1700 541 "Il ᴛenore et il soprano."))
   (:music 2256
           (:section s2)
           (:voice v1) (:newline) cclef7 b38 met-imperf-min-dim b38 sb2 b38 sb2 b38 sb2 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 sb5 b22 sb5 b22
           (:section s3 s4 s5)
           (:voice v2) cclef7 b22 b22 met-imperf-min-dim b22 b22 sb2 b38 sb4 b38 sb5 b38 sb6 b38 sb7 b38 b38
           (:section s6)
           (:voice v2) cclef7 b22 sb5 m4 m2 sb4 m3 m1 sb3 m2 m0 b22 bl)
   (:text 90 58
          (92 1027 "A due uoci ſotto dal canto fermo ꝑ terza.")
          (1570 677 "paiono due ottaue et nō ſono."))
   (:music 2254
           (:section s2)
           (:voice v2) (:f-clef) max7 fclef7 met-imperf-min-dim mrest3 m4 dot4 sm3 m2 m1 m4 m3 m4 dot4 sm2 m5 m3 sb6 m7 dot6 sm6 sm5 sm4 m5 m4 b22
           (:section s4 s5)
           (:voice v3) cclef7 met-imperf-min-dim mrest3 m4 dot4 sm3 m2 m1 m3 m2 m4 m3 m2 b22
           (:section s6)
           (:voice v3) cclef7 b22 sb3 b38 br2 b38 br1 b38 sb0 bl)
   (:text 90 58
          (0 1091 "Il medeſimo procedere,& i gradi medeſimi .")
          (1228 945 "A due uoci,con un ſoſpiro,ꝑ terza ſopra."))
   (:music 2241
           (:section s7)
           (:voice v1) (:newline) cclef7 b22 met-imperf-min-dim b22 m6 b22 m9 b22 m8 b22 m6 b22 sb7 b22 sb6 b22
           (:voice v2) cclef7 b22 m4 b22 m5 b22 m6 b22 m4 b22 m2 sh3 m3 sb4
           (:section s8)
           (:voice v1) cclef7 b38 m2 b38 m5 b38 m4 b38 m2 b38 sb3 b38 sb2 b22
           (:voice v2) cclef7 mrest7 m7 m8 m9 m7 m5d m6 m7 bl)
   (:text 90 58
          (89 702 "A due uoci ᴛenore & ᴛenore")
          (1154 486 "parte chʼera di ſopra.")
          (1738 498 "parte chʼera di ſotto."))))
