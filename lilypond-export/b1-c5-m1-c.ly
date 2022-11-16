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
      \fontsize#4 { \concat { \normal-text "Dimostratione della mano diatonica"} }
    }
    \line {
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "Alamire" }
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
          \left-align {  \normal-text "per natura: la" }
        }
        \line {
          \left-align {  \normal-text "per ♭: mi" }
        }
        \line {
          \left-align {  \normal-text "per ♮: re" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "Bfa♭mi" }
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
          \left-align {  \normal-text "per ♭: fa" }
        }
        \line {
          \left-align {  \normal-text "per ♮: mi" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "Csolfaut" }
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
          \left-align {  \normal-text "per ♭: sol" }
        }
        \line {
          \left-align {  \normal-text "per ♮: fa" }
        }
        \line {
          \left-align {  \normal-text "per natura: ut" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "Dlasolre" }
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
          \left-align {  \normal-text "per ♭: la" }
        }
        \line {
          \left-align {  \normal-text "per ♮: sol" }
        }
        \line {
          \left-align {  \normal-text "per natura: re" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "Elami" }
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
          \left-align {  \normal-text "per ♮: la" }
        }
        \line {
          \left-align {  \normal-text "per natura: mi" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "Ffaut" }
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
          \left-align {  \normal-text "per natura: fa" }
        }
        \line {
          \left-align {  \normal-text "per ♭: ut" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "Gsolreut" }
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
          \left-align {  \normal-text "per natura: sol" }
        }
        \line {
          \left-align {  \normal-text "per ♭: re" }
        }
        \line {
          \left-align {  \normal-text "per ♮: ut" }
        }

      }
      \hspace #3 

    }
  }
}