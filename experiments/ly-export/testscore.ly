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
    \wordwrap-string { "Descritione Test" }
    \null
    \line {
      \center-column {
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \tempo ""
                \cadenzaOn
                \clef "bass" b,1
                c1
                d1
                e2
                d1
                c1
                b,1
                \cadenzaOff
              }
            >>
            \layout {
              \context {
                \Score
                \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/2)
              }
            }
          }
        }
      }

    }
  }
}

#(set! paper-alist (cons '("snippet" . (cons (* 170 mm) (* 45 mm))) paper-alist))

\paper {
  #(set-paper-size "snippet")
  tagline = ##f
  indent = 0
}