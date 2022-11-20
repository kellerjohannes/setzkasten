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
      \fontsize#3 { \concat { \normal-text ""} }
    }
    \line {
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "tono diviso in 4 parti" }
        }
        \line {
          \left-align {  \normal-text "ascendenti" }
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
                \clef "tenor" g1 
                \dot g1-. 
                gis1 
                \dot g1-. 
                \dot as1-. 
                a1 
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
          \left-align {  \normal-text "per ♮: ut-re-mi-fa-re" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "tono diviso in 4 parti" }
        }
        \line {
          \left-align {  \normal-text "ascendenti" }
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
                \clef "tenor" g1 
                \dot g1-. 
                gis1 
                \dot as1-. 
                a1 
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
          \left-align {  \normal-text "per ♭: re-mi-fa-re-mi" }
        }

      }
      \hspace #3 

    }
  }
}