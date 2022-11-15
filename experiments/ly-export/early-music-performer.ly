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
    \line {
      \score {
        {
          \override Staff.TimeSignature.stencil = ##f
          \cadenzaOn
          \clef "treble_8"
          g1 \dot g1-. as1 \dot as1-. a1
          \cadenzaOff
        }
        \layout {
          \context {
            \Score
            \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1)
            \accidentalStyle forget
          }
        }
      }
    }
  }
}


#(set! paper-alist (cons '("snippet" . (cons (* 40 mm) (* 18 mm))) paper-alist))

\paper {
  #(set-paper-size "snippet")
  tagline = ##f
  indent = 0
}