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
      \fontsize#3 { \concat { \normal-text "Del secondo Alamire: tutte le consonanze discendenti"} }
    }\line {
      \center-align
      \fontsize#3 { \concat { \normal-text "con le propinque di Alamire secondo"} }
    }
    \null
    \line {
      \center-column {
        \line {
          \left-align {  \normal-text "Le quattro terze discendenti" }
        }
        \line {
          \left-align {  \normal-text "con le sue propinque" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'default
                \override NoteHead.style = #'default
                \cadenzaOn
                \clef "treble_8"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  gis1   gis1 \bar "|"  gis1   gis1  
                \cadenzaOff
              }
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
                          (6 . ,NATURAL))  eis1   \dot e1-.   e1   \dot es1-.  
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
          \left-align {  \normal-text "terza minore / terza maggiore" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "Quinta" }
        }
        \line {
          \left-align {  \normal-text " " }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'default
                \override NoteHead.style = #'default
                \cadenzaOn
                \clef "treble_8"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  gis1  
                \cadenzaOff
              }
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
                          (6 . ,NATURAL))  cis1  
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
          \left-align {  \normal-text "Le quattro seste" }
        }
        \line {
          \left-align {  \normal-text "con le sue propinque" }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'default
                \override NoteHead.style = #'default
                \cadenzaOn
                \clef "treble_8"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  gis1   gis1 \bar "|"  gis1   gis1  
                \cadenzaOff
              }
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
                          (6 . ,NATURAL))  bis,1   \dot b,1-.   b,1   \dot bes,1-.  
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
          \left-align {  \normal-text "sesta minore / sesta maggiore" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "Ottava" }
        }
        \line {
          \left-align {  \normal-text " " }
        }

        \null
        \line {
          \score {
            <<
              \new Staff \with { instrumentName = ""} {
                \override Staff.TimeSignature.stencil = ##f
                \override Staff.NoteHead.style = #'baroque
                \accidentalStyle Score.forget
                \override Rest.style = #'default
                \override NoteHead.style = #'default
                \cadenzaOn
                \clef "treble_8"
                \key c #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
                          (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL)
                          (6 . ,NATURAL))  gis1  
                \cadenzaOff
              }
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
                          (6 . ,NATURAL))  gis,1  
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