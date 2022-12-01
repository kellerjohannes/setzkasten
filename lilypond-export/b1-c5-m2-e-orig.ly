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
      \fontsize#3 { \concat { \normal-text "Demonstration of the ascending chromatic hand, with the " \italic "Semitoni minori" \normal-text ","} }
    }\line {
      \center-align
      \fontsize#3 { \concat { \normal-text " and with an example"} }
    }
    \null
    \line {
      \center-column {
        \line {
          \left-align {  \normal-text "A" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-f"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  a,1   ais,1  
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
          \left-align {  \normal-text "natural: la" }
        }
        \line {
          \left-align {  \normal-text "soft: mi" }
        }
        \line {
          \left-align {  \normal-text "hard: re" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "B♭" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-f"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  b,1   bis,1  
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
          \left-align {  \normal-text "hard: mi" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "C" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-f"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  c1   cis1  
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
          \left-align {  \normal-text "natural: sol" }
        }
        \line {
          \left-align {  \normal-text "soft: fa" }
        }
        \line {
          \left-align {  \normal-text "hard: ut" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "D" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-f"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  d1   dis1  
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
          \left-align {  \normal-text "soft: la" }
        }
        \line {
          \left-align {  \normal-text "hard: sol" }
        }
        \line {
          \left-align {  \normal-text "natural: re" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "E" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-f"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  e1   eis1  
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
          \left-align {  \normal-text "hard: la" }
        }
        \line {
          \left-align {  \normal-text "natural: mi" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "F" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-f"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  f1   fis1  
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
          \left-align {  \normal-text "natural: fa" }
        }
        \line {
          \left-align {  \normal-text "soft: ut" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "G" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-f"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  g1   gis1  
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
          \left-align {  \normal-text "natural: sol" }
        }
        \line {
          \left-align {  \normal-text "soft: re" }
        }
        \line {
          \left-align {  \normal-text "hard: ut" }
        }

      }
      \hspace #3 

    }
  }
}