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
    \override #'(line-width . 90)
    \center-align
    \fontsize#4
    \wordwrap-string { "Demonstration of the diatonic hand" }
    \null
    \line {
      \center-column {
        \null
        \line {
          \left-align { "A" }
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
                \clef "bass" a,1 
                a,1 
                a,1 
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
          \left-align { "natural: la" }
        }
        \line {
          \left-align { "soft: mi" }
        }
        \line {
          \left-align { "hard: re" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align { "B♭" }
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
                \clef "bass" bes,1 
                b,1 
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
          \left-align { "soft: fa" }
        }
        \line {
          \left-align { "hard: mi" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align { "C" }
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
                \clef "bass" c1 
                c1 
                c1 
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
          \left-align { "soft: sol" }
        }
        \line {
          \left-align { "hard: fa" }
        }
        \line {
          \left-align { "natural: ut" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align { "D" }
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
                \clef "bass" d1 
                d1 
                d1 
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
          \left-align { "soft: la" }
        }
        \line {
          \left-align { "hard: sol" }
        }
        \line {
          \left-align { "natural: re" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align { "E" }
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
                \clef "bass" e1 
                e1 
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
          \left-align { "hard: la" }
        }
        \line {
          \left-align { "natural: mi" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align { "F" }
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
                \clef "bass" f1 
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
          \left-align { "natural: fa" }
        }
        \line {
          \left-align { "soft: ut" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align { "G" }
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
                \clef "bass" g1 
                g1 
                g1 
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
          \left-align { "natural: sol" }
        }
        \line {
          \left-align { "soft: re" }
        }
        \line {
          \left-align { "hard: ut" }
        }

      }
      \hspace #3 

    }
  }
}