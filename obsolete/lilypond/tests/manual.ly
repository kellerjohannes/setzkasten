\version "2.22.2"

dot =
{
  \once \override Script.add-stem-support = ##f
  \once \override Script.toward-stem-shift = 0
  \once \override Script.skyline-horizontal-padding = 0
  \once \override Script.direction = 1
  \once \override Script.font-size = 1
}

notime =
{
  \override Staff.TimeSignature.stencil = ##f
}


\markup
{
  \center-column
  {
    \line
    {
      \score
      {
        <<
          \new Staff
          \relative c' {
            \accidentalStyle Score.forget
            \notime
            \cadenzaOn
            \dot c'2.-. \dot d4-. \dot e2-. \dot f-.
            \cadenzaOff
          }
          \new Staff
          {
            \accidentalStyle Score.forget
            \clef "bass"
            \notime
            \dot es1-. \dot des-.
          }
        >>
        \layout {
          \context {
            \Score
            \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/2)
          }
        }
      }
    }
  }
  \center-column
  {
    \line
    {
      \score
      {
        \relative c
        {
          \accidentalStyle Score.forget
          \clef "bass"
          \key f \major
          \notime
          \cadenzaOn
          \dot c1^._\markup {\italic "mi" }
          \dot d^._\markup {\italic "fa" }
          \dot e^._\markup {\italic "ſol" }
          \dot f^.
          \dot ges^.
          \dot ais^.
          \dot b!^.
          \cadenzaOff
        }
        \layout {
          \context {
            \Score
            \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1)
          }
        }
      }
    }
  }
}
