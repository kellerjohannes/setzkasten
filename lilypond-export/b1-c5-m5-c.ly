\version "2.22.2"

% Auto generated file

\header {
  tagline = ##f
}

dot = {
   \once \override Script.add-stem-support = ##f
   \once \override Script.toward-stem-shift = 0
   \once \override Script.skyline-horizontal-padding = 0
   \once \override Script.direction = 1
   \once \override Script.font-size = 1
}

\markup {
  \center-column {
    \line {
      \center-align
      \fontsize#3 { \concat { \normal-text "Mano della divisione del tono in quattro diesis enarmonici ascendenti"} }
    }\line {
      \center-align
      \fontsize#3 { \concat { \normal-text "con lo semitono minore"} }
    }
    \null
    \line {
      \center-column {
        \line {
          \left-align {  \normal-text "da Alamire a Bmi" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'default
                \override NoteHead.style = #'default
                \cadenzaOn
                \clef "bass"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  a,1   \dot a,1-.   ais,1   \dot bes,1-.   b,1  
                \cadenzaOff
              }
            >>
            \layout {
              \context {
                \Score
                \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1)
              }
            }
          }
        }
        \null
        \line {
          \left-align {  \normal-text "per ♮: re-mi-fa-re-mi" }
        }
        \line {
          \left-align {  \normal-text "per ♭: mi-fa-sol-re-mi" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "da Bmi a Csolfaut" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'default
                \override NoteHead.style = #'default
                \cadenzaOn
                \clef "bass"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  b,1   \dot b,1-.   bis,1   \dot ces1-.   c1  
                \cadenzaOff
              }
            >>
            \layout {
              \context {
                \Score
                \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1)
              }
            }
          }
        }
        \null
        \line {
          \left-align {  \normal-text "per ♮: mi-fa-re-mi-fa" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "da Bfa a Csolfaut" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'default
                \override NoteHead.style = #'default
                \cadenzaOn
                \clef "bass"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  bes,1   \dot bes,1-.   b,1   \dot b,1-.   c1  
                \cadenzaOff
              }
            >>
            \layout {
              \context {
                \Score
                \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1)
              }
            }
          }
        }
        \null
        \line {
          \left-align {  \normal-text "per ♭: fa-sol-re-mi-fa" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "da Csolfaut a Dlasol" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'default
                \override NoteHead.style = #'default
                \cadenzaOn
                \clef "bass"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  c1   \dot c1-.   cis1   \dot des1-.   d1  
                \cadenzaOff
              }
            >>
            \layout {
              \context {
                \Score
                \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1)
              }
            }
          }
        }
        \null
        \line {
          \left-align {  \normal-text "per nat.: ut-re-mi-fa-re" }
        }
        \line {
          \left-align {  \normal-text "sol e fa discendono" }
        }

      }
      \hspace #3 
    }
    \null
    \null
    \line {      \center-column {
        \line {
          \left-align {  \normal-text "da Dlasolre a Elami" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'default
                \override NoteHead.style = #'default
                \cadenzaOn
                \clef "bass"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  d1   \dot d1-.   dis1   \dot es1-.   \dot e1-.  
                \cadenzaOff
              }
            >>
            \layout {
              \context {
                \Score
                \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1)
              }
            }
          }
        }
        \null
        \line {
          \left-align {  \normal-text "per nat.: re-mi-fa-re-mi" }
        }
        \line {
          \left-align {  \normal-text "la e sol discendono" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "da Elami a F" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'default
                \override NoteHead.style = #'default
                \cadenzaOn
                \clef "bass"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  e1   \dot e1-.   f1  
                \cadenzaOff
              }
            >>
            \layout {
              \context {
                \Score
                \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1)
              }
            }
          }
        }
        \null
        \line {
          \left-align {  \normal-text "per nat.: mi-mi-fa" }
        }
        \line {
          \left-align {  \normal-text "la discende" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "da Ffaut a G." }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'default
                \override NoteHead.style = #'default
                \cadenzaOn
                \clef "bass"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  f1   \dot f1-.   fis1   \dot ges1-.   g1  
                \cadenzaOff
              }
            >>
            \layout {
              \context {
                \Score
                \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1)
              }
            }
          }
        }
        \null
        \line {
          \left-align {  \normal-text "per nat.: fa-re-mi-fa-sol" }
        }
        \line {
          \left-align {  \normal-text "per ♭: fa-re-mi-fa-re" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "da Gsolreut a Alamire" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'default
                \override NoteHead.style = #'default
                \cadenzaOn
                \clef "bass"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  g1   \dot g1-.   gis1   \dot as1-.   a1  
                \cadenzaOff
              }
            >>
            \layout {
              \context {
                \Score
                \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1)
              }
            }
          }
        }
        \null
        \line {
          \left-align {  \normal-text "per nat.: sol-re-mi-fa-re" }
        }
        \line {
          \left-align {  \normal-text "per b: re-mi-fa-re-mi" }
        }
        \line {
          \left-align {  \normal-text "per ♮: ut-re-mi-fa-re" }
        }

      }
      \hspace #3 

    }
  }
}