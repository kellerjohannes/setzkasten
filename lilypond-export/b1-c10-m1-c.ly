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
    \null
    \line {
      \center-column {
        \line {
          \postscript "8 4 moveto -0.5 0 rlineto 0 -9 rlineto 0.5 0 rlineto stroke"
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
                          (6 . ,NATURAL))  b,1   c1   cis1   e1
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
            \postscript "1 4 moveto 0.5 0 rlineto 0 -9 rlineto -0.5 0 rlineto stroke"
        }

      }
      \hspace #3

    }
  }
}