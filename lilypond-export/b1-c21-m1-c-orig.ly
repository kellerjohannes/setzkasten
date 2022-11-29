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
      \fontsize#3 { \concat { \normal-text "Essempio del grado del tono minore composto e non composto"} }
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
                \clef "tenor"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  f1  \dot ges1-. 
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
          \left-align {  \normal-text "tono minore" }
        }
        \line {
          \left-align {  \normal-text "ascendente incomposto" }
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
                \clef "tenor"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  g1  \dot g1-.  \dot as1-. 
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
          \left-align {  \normal-text "tono minore" }
        }
        \line {
          \left-align {  \normal-text "ascendente composto" }
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
                \clef "tenor"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  a1  bes1  \dot bes1-. 
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
          \left-align {  \normal-text "tono minore" }
        }
        \line {
          \left-align {  \normal-text "ascendente composto" }
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
                \clef "tenor"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  bes1  bis1 
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
          \left-align {  \normal-text "tono minore" }
        }
        \line {
          \left-align {  \normal-text "ascendente incomposto" }
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
                \clef "tenor"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  bis1  b1  bes1 
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
          \left-align {  \normal-text "tono minore" }
        }
        \line {
          \left-align {  \normal-text "discendente composto" }
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
                \clef "tenor"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  ais1  as1 
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
          \left-align {  \normal-text "tono minore" }
        }
        \line {
          \left-align {  \normal-text "discendente incomposto" }
        }

      }
      \hspace #3 

    }
  }
}