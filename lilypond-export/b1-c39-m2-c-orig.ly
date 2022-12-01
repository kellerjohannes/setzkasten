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
      \fontsize#3 { \concat { \normal-text "Essempio dei gradi delle quinte naturali"} }
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
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-c4"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  d1   e1   f1   g1   a1  
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
          \left-align {  \normal-text "ordine 1 de gradi" }
        }
        \line {
          \left-align {  \normal-text "della prima quinta" }
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
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-c4"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  e1   f1   g1   a1   b1  
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
          \left-align {  \normal-text "ordine 2 de gradi" }
        }
        \line {
          \left-align {  \normal-text "della seconda quinta" }
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
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-c4"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  f1   g1   a1   b1   c'1  
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
          \left-align {  \normal-text "ordine 3 de gradi" }
        }
        \line {
          \left-align {  \normal-text "della terza quinta" }
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
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-c4"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  g1   a1   b1   c'1   d'1  
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
          \left-align {  \normal-text "ordine 4 de gradi" }
        }
        \line {
          \left-align {  \normal-text "della quarta quinta" }
        }
        \line {
          \left-align {  \normal-text "composta" }
        }

      }
      \hspace #3 

    }
  }
}