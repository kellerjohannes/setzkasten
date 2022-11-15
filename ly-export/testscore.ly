\version "2.22.2"
% Auto generated file

dot = {
   \once \override Script.add-stem-support = ##f
   \once \override Script.toward-stem-shift = 0
   \once \override Script.skyline-horizontal-padding = 0
   \once \override Script.direction = 1
   \once \override Script.font-size = 1
}

\markup {
  \center-column {
    \override #'(line-width . 90)
    \center-align
    \fontsize#4
    \wordwrap-string { "Descrittione" }
    \null
    \line {
      \center-column {
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = "Canto"} {
                \override Staff.TimeSignature.stencil = ##f
                \tempo "[A]"
                \clef "soprano" \dot d'1.-
                cis'1
                \clef "mezzosoprano" e'1
                \clef "soprano" es'1
              }
              \new Staff \with { instrumentName = "Tenor"} {
                \override Staff.TimeSignature.stencil = ##f
                \tempo "[A]"
                \clef "tenor" d'1
                cis'1
                \dot es'1-.
                es'1
              }
            >>
          }
        }
      }
      \center-column {
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = "Canto"} {
                \override Staff.TimeSignature.stencil = ##f
                \tempo "[B]"
                \clef "soprano" c'1
              }
              \new Staff \with { instrumentName = "Alto"} {
                \override Staff.TimeSignature.stencil = ##f
                \tempo "[B]"
                \clef "alto" c'1
              }
              \new Staff \with { instrumentName = "Tenor"} {
                \override Staff.TimeSignature.stencil = ##f
                \tempo "[B]"
                \clef "tenor" c'1
              }
              \new Staff \with { instrumentName = "Basso"} {
                \override Staff.TimeSignature.stencil = ##f
                \tempo "[B]"
                \clef "bass" c'1
              }
            >>
          }
        }
      }

    }
  }
}