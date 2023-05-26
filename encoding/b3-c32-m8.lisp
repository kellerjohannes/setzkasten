`((:header
   (:filename "b3-c32-m8")
   (:alt-name "m3.070")
   (:comment "q021_s113, rotation: 1.31, origin: 513")
   (:creator "Vicentino21 / Johannes Keller")
   (:title "Esempio di molte cadentie dell'ottavo modo della musica participata e mista")
   (:voice-labels
    (s1 v1 "Cadentie del soprano")
    (s1 v2 "Cadentie del contr'alto")
    (s1 v3 "Cadentie del tenore")
    (s1 v4 "Cadentie del basso")))
  (:preamble-type-imitation
   (:width nil)
   (:height nil)
   (:background ,*score-bg-color*))
  (:data
   (:text 70 58
          (161 1891 "Eſsempio di molte ᴄadentie dellʼᴏttauo modo della muſica participata & miſta."))
   (:text 90 58
          (696 nil "Cadentie del ꜱoprano."))
   (:music 2226
           (:voice v1)
           (:section s1) cclef1 mrest5 sb5 sh4 m4 sb5 b22 bl
           (:section s2) mrest7 sb8 m7 b22 bl
           ;; Hier könnte man als Ficta ein sh8 vor der m8 einfügen. Wurde ev. nicht getan aus
           ;; typografischen Platzgründen. In der Bibelgruppe nicht abschliessend entschieden.
           (:section s3) b22 m8 sb6 sb9 m8 sb9 bl
           (:section s4) (:newline) b22 b22 mrest1 b22 sb2 b22 sh1 m1 b22 b38 bl
           (:section s5) b22 m2 sb4 m3 b22 bl
           (:section s6) b22 m4 b22 sb6 sh5 m5 b22 bl
           (:section s7) m6 b22 m2 sb3 m2 sb5 sh4 m4 b22 br5 bl)
   (:text 110 58
          (668 nil "Cadentie del ᴄontrʼᴀlto."))
   (:music 2232
           (:voice v2)
           (:section s1) cclef5 b38 sb6 b22 sb6 b22 sb6 bl
           (:section s2) mrest7 m9 b22 sb9 bl
           (:section s3) m9 sb8 sb10 b22 m10 b22 sb10 bl
           ;; Bibelgruppe:
           ;; Alt: b♭ zur Vermeidung des Querstandes zum Bass?
           ;; Überlegung Johannes: der Querstand ist als positiv zu berwerten in
           ;; Vicentinos eigenen Prinzipien, da in beiden Stimmen ein 'grado
           ;; della terza minore discendente' geschieht, was dem Prinzip einer
           ;; 'bell'aria' mehr entspricht als wenn der Querstand durch ein ♭ im
           ;; Alt vermieden würde.

           ;; Das beträfe die m4, vor die ein fl4 gesetzt werde müsste. Zu diskutieren.
           (:section s4) b38 b22 m6 b22 b22 m4 b22 b22 sb3 b22 b22 bl
           (:section s5) b22 sb3 b38 sb5 b22 bl
           (:section s6) b38 b22 sb5 b38 sb7 b22 b22 bl
           (:section s7) m7 sb9 m9 b22 m9 m6 sb6 b22 br6 b38 bl)
   (:text 110 58
          (657 nil "Cadentie del Tenore."))
   (:music 2221
           (:voice v3)
           (:section s1) cclef7 b22 sb6 b22 sb5 b22 sb4 b22 bl
           (:section s2) mrest7 m9 sb8 b22 bl
           (:section s3) b22 sb7 b22 sb10 b22 sb9 b22 sb8 bl
           (:section s4) b38 b22 m3 b38 m4 b22 b38 sb2 b38 bl
           (:section s5) b22 sb3 b22 sb4 b38 bl
           (:section s6) b22 b38 sb5 b38 sb6 b38 bl
           (:section s7) b22 m7 b38 m6 b22 sb7 sb6 b22 sb5 b22 br4 bl)
   (:text 110 58
          (651 nil "Cadentie del Baſſo."))
   (:music 2227
           (:voice v4)
           (:section s1) (:f-clef) max7 fclef7 b22 sb1 sb5 sb1 b22 bl
           (:section s2) mrest3 m4 b22 sb8 b22 bl
           (:section s3) b22 m4 m7 sb5 sb2 sb5 b22 bl
           (:section s4) b22 fl3 b22 m3 b38 m1 b22 sb2 b22 b22 bl
           (:section s5) b22 sb5 b38 sb4 b22 bl
           (:section s6) b22 b22 sb7 b22 b22 sb6 b38 bl
           (:section s7) b22 m2 b22 m1 sb4 b22 sb1 sb5 b22 br1 b38 bl)))
