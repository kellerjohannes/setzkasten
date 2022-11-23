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
      \fontsize#3 { \concat { \normal-text "Essempio del salto e dei gradi de quarta accidentale, incomposta e composta"} }
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
                \clef "tenor" dis1 
                gis1 
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
          \left-align {  \normal-text "salto di quarta" }
        }
        \line {
          \left-align {  \normal-text "acidentale" }
        }
        \line {
          \left-align {  \normal-text "incomposta" }
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
                \clef "tenor" es1 
                f1 
                g1 
                as1 
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
          \left-align {  \normal-text "gradi di quarta" }
        }
        \line {
          \left-align {  \normal-text "acidentale" }
        }
        \line {
          \left-align {  \normal-text "composta" }
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
                \clef "tenor" fis1 
                g1 
                a1 
                b1 
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
          \left-align {  \normal-text "gradi di quarta" }
        }
        \line {
          \left-align {  \normal-text "acidentale" }
        }
        \line {
          \left-align {  \normal-text "composta" }
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
                \clef "tenor" gis1 
                cis'1 
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
          \left-align {  \normal-text "salto di quarta" }
        }
        \line {
          \left-align {  \normal-text "acidentale" }
        }
        \line {
          \left-align {  \normal-text "incomposta" }
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
                \clef "tenor" des'1 
                c'1 
                bes1 
                as1 
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
          \left-align {  \normal-text "gradi di quarta" }
        }
        \line {
          \left-align {  \normal-text "acidentale" }
        }
        \line {
          \left-align {  \normal-text "composta" }
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
                \clef "tenor" ges1 
                des1 
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
          \left-align {  \normal-text "salto di quarta" }
        }
        \line {
          \left-align {  \normal-text "acidentale" }
        }
        \line {
          \left-align {  \normal-text "incomposta" }
        }

      }
      \hspace #3 

    }
  }
}