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
      \fontsize#3 { \concat { \normal-text "Essempio dei gradi di terza minore accidentale, composti e incomposti"} }
    }
    \null
    \line {
      \center-column {
        \line {
          \left-align {  \normal-text "grado di 3 minore" }
        }
        \line {
          \left-align {  \normal-text "accidentale incomposto" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \cadenzaOn
                \clef "tenor" c1 
                es1 
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

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "grado di 3 minore" }
        }
        \line {
          \left-align {  \normal-text "accidentale composto" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \cadenzaOn
                \clef "tenor" es1 
                f1 
                ges1 
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

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "grado di 3 minore" }
        }
        \line {
          \left-align {  \normal-text "accidentale incomposto" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \cadenzaOn
                \clef "tenor" as1 
                \dot b1-. 
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

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "grado di 3 minore" }
        }
        \line {
          \left-align {  \normal-text "accidentale composto" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \cadenzaOn
                \clef "tenor" dis'1 
                cis'1 
                bis1 
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

      }
      \hspace #3 
    }
    \null
    \null
    \line {      \center-column {
        \line {
          \left-align {  \normal-text "grado di 3 minore" }
        }
        \line {
          \left-align {  \normal-text "accidentale incomposto" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \cadenzaOn
                \clef "tenor" a1 
                fis1 
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

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "grado di 3 minore" }
        }
        \line {
          \left-align {  \normal-text "accidentale incomposto" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \cadenzaOn
                \clef "tenor" ges1 
                \dot a1-. 
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

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "grado di 3 minore" }
        }
        \line {
          \left-align {  \normal-text "accidentale incomposto" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \cadenzaOn
                \clef "tenor" \dot a1-. 
                ges1 
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

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "grado di 3 minore" }
        }
        \line {
          \left-align {  \normal-text "accidentale incomposto" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \cadenzaOn
                \clef "tenor" fis1 
                dis1 
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

      }
      \hspace #3 

    }
  }
}