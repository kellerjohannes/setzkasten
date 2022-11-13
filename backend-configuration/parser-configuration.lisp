(progn
  (configure-parser
   ((:accidental sh0 :sharp 0)
    (:accidental sh1 :sharp 1)
    (:accidental sh2 :sharp 2)
    (:clef cclef7 :c 7)
    (:note sb0 :semibrevis 0)))

  (defparameter *list-of-notes*
    '(sb0 sb1 sb2 sb3 sb4 sb5 sb6 sb7 sb8 sb9 sb10)
    "This is used in the function to determine whether a note has a dotted duration value. Any glyph that can represent a dotted note should be member of this list.")

  (defparameter *list-of-duration-dots*
    '(dot2 dot4 dot6 dot8)
    "This is used in the function looking ahead to detect rhythmic dots. All glyphs used to represent rhythmic dots should be member of this list.")

  (defparameter *f-clef-triggers*
    '(fclef7)
    "This is used to determine when the definition of an compound f-clef is done and normal glyph parsing can be switched back on. All glyphs that complete an f-clef complex should be member of this list."))
