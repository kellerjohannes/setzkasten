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
      \fontsize#3 { \concat { \normal-text "Essempio de gradi di alcune quinte imperfette naturali e accidentali"} }
    }
    \null
    \line {
      \center-column {

        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \cadenzaOn
                \clef "bass" b,1 
                c1 
                d1 
                e1 
                f1 
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
          \left-align {  \normal-text "gradi di quinta" }
        }
        \line {
          \left-align {  \normal-text "imperfetta composta" }
        }
        \line {
          \left-align {  \normal-text "naturale" }
        }

      }
      \hspace #3 
      \center-column {

        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \cadenzaOn
                \clef "alto" b1 
                c'1 
                d'1 
                e'1 
                f'1 
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
          \left-align {  \normal-text "gradi di quinta" }
        }
        \line {
          \left-align {  \normal-text "imperfetta composta" }
        }
        \line {
          \left-align {  \normal-text "naturale" }
        }

      }
      \hspace #3 
      \center-column {

        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \cadenzaOn
                \clef "alto" bes1 
                c'1 
                d'1 
                \dot e'1-. 
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
          \left-align {  \normal-text "gradi di quinta" }
        }
        \line {
          \left-align {  \normal-text "imperfetta composta" }
        }
        \line {
          \left-align {  \normal-text "accidentale" }
        }

      }
      \hspace #3 
      \center-column {

        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \cadenzaOn
                \clef "alto" g1 
                a1 
                bes1 
                c'1 
                des'1 
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
          \left-align {  \normal-text "gradi di quinta" }
        }
        \line {
          \left-align {  \normal-text "imperfetta composta" }
        }
        \line {
          \left-align {  \normal-text "accidentale" }
        }

      }
      \hspace #3 
      \center-column {

        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \cadenzaOn
                \clef "alto" c'1 
                b1 
                a1 
                g1 
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
        \null
        \line {
          \left-align {  \normal-text "gradi di quinta" }
        }
        \line {
          \left-align {  \normal-text "imperfetta composta" }
        }
        \line {
          \left-align {  \normal-text "accidentale" }
        }

      }
      \hspace #3 

    }
  }
}