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
    \wordwrap-string { "Erklärung der diatonischen Hand" }
    \null
    \line {
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "A" }
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
          \left-align {  \normal-text "natürlich: la" }
        }
        \line {
          \left-align {  \normal-text "weich: mi" }
        }
        \line {
          \left-align {  \normal-text "hart: re" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "B♭" }
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
          \left-align {  \normal-text "weich: fa" }
        }
        \line {
          \left-align {  \normal-text "hart: mi" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "C" }
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
          \left-align {  \normal-text "weich: sol" }
        }
        \line {
          \left-align {  \normal-text "hart: fa" }
        }
        \line {
          \left-align {  \normal-text "natürlich: ut" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "D" }
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
          \left-align {  \normal-text "weich: la" }
        }
        \line {
          \left-align {  \normal-text "hart: sol" }
        }
        \line {
          \left-align {  \normal-text "natürlich: re" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "E" }
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
          \left-align {  \normal-text "hart: la" }
        }
        \line {
          \left-align {  \normal-text "natürlich: mi" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "F" }
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
          \left-align {  \normal-text "natürlich: fa" }
        }
        \line {
          \left-align {  \normal-text "weich: ut" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "G" }
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
          \left-align {  \normal-text "natürlich: sol" }
        }
        \line {
          \left-align {  \normal-text "weich: re" }
        }
        \line {
          \left-align {  \normal-text "hart: ut" }
        }

      }
      \hspace #3 

    }
  }
}