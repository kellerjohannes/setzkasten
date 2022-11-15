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
    \wordwrap-string { "Dimostratione della mano diatonica" }
    \null
    \line {
      \center-column {
        \null
        \line {
          \left-align { "Alamire" }
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
          \left-align { "per natura: la" }
        }
        \line {
          \left-align { "per ♭: mi" }
        }
        \line {
          \left-align { "per ♮: re" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align { "Bfa♭mi" }
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
          \left-align { "per ♭: fa" }
        }
        \line {
          \left-align { "per ♮: mi" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align { "Csolfaut" }
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
          \left-align { "per ♭: sol" }
        }
        \line {
          \left-align { "per ♮: fa" }
        }
        \line {
          \left-align { "per natura: ut" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align { "Dlasolre" }
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
          \left-align { "per ♭: la" }
        }
        \line {
          \left-align { "per ♮: sol" }
        }
        \line {
          \left-align { "per natura: re" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align { "Elami" }
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
          \left-align { "per ♮: la" }
        }
        \line {
          \left-align { "per natura: mi" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align { "Ffaut" }
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
          \left-align { "per natura: fa" }
        }
        \line {
          \left-align { "per ♭: ut" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align { "Gsolreut" }
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
          \left-align { "per natura: sol" }
        }
        \line {
          \left-align { "per ♭: re" }
        }
        \line {
          \left-align { "per ♮: ut" }
        }

      }
      \hspace #3 

    }
  }
}