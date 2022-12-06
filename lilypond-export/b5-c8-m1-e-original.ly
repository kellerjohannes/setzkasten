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
      \fontsize#3 { \concat { \normal-text "[Del primo Alamire]"} }
    }
    \null
    \line {
      \center-align
      \fontsize#2 { [Tutte le consonanze discendenti di Alamire primo] }
    }
    \null
    \line {
      \center-column {
        \line {
          \left-align {  \normal-text "Le quattro terze con" }
        }
        \line {
          \left-align {  \normal-text "le sue propinque" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-c4"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  a1   a1 \bar "|"  a1   a1  
                \cadenzaOff
              }
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-f"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  fis1   \dot f1-.   f1   eis1  
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
          \left-align {  \normal-text "Terza minore / terza maggiore" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text " " }
        }
        \line {
          \left-align {  \normal-text "Quinta" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-c4"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  a1  
                \cadenzaOff
              }
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-f"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  d1  
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

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "Le quattro seste con" }
        }
        \line {
          \left-align {  \normal-text "le sue propinque" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-c4"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  a1   a1 \bar "|"  a1   a1  
                \cadenzaOff
              }
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-f"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  cis1   \dot c1-.   c1   bis,1  
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
          \left-align {  \normal-text "Sesta minore / sesta maggiore" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text " " }
        }
        \line {
          \left-align {  \normal-text "Ottava" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-c4"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  a1  
                \cadenzaOff
              }
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-f"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  a,1  
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

      }
      \hspace #3 
    }
    \null
    \null
    \line {
      \center-align
      \fontsize#2 { [Tutte le consonanze ascendenti di Alamire primo] }
    }
    \null
    \line {      \center-column {
        \line {
          \left-align {  \normal-text "Le quattro terze con" }
        }
        \line {
          \left-align {  \normal-text "le sue propinque" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-c2"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  c'1   \dot c'1-. \bar "|"  cis'1   des'1  
                \cadenzaOff
              }
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-f"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  a1   a1   a1   a1  
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
          \left-align {  \normal-text "Terza minore / terza maggiore" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text " " }
        }
        \line {
          \left-align {  \normal-text "Quinta" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-c2"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  e'1  
                \cadenzaOff
              }
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-f"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  a1  
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

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "Le quattro seste con" }
        }
        \line {
          \left-align {  \normal-text "le sue propinque" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-c2"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  f'1   \dot f'1-. \bar "|"  fis'1   ges'1  
                \cadenzaOff
              }
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-f"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  a1   a1   a1   a1  
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
          \left-align {  \normal-text "Sesta minore / sesta maggiore" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text " " }
        }
        \line {
          \left-align {  \normal-text "Ottava" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-c2"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  a'1  
                \cadenzaOff
              }
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'mensural
                \override NoteHead.style = #'petrucci
                \cadenzaOn
                \clef "mensural-f"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  a1  
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

      }
      \hspace #3 

    }
  }
}