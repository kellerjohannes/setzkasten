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
      \fontsize#3 { \concat { \normal-text "Mano enarmonica discendente con i semitoni minori, nel principio del tono per le sette lettere della mano, con il tono diviso in quattro parti: e come a da leggere"} }
    }
    \null
    \line {
      \center-column {
        \line {
          \left-align {  \normal-text "da A a G" }
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
                \clef "bass" a1 
                \dot as1-. 
                as1 
                \dot g1-. 
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
          \left-align {  \normal-text "per natura: la-sol-fa-la-sol" }
        }
        \line {
          \left-align {  \normal-text "mi e re ascendino" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "da G a F" }
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
                \dot ges1-. 
                ges1 
                \dot f1-. 
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
          \left-align {  \normal-text "per natura: sol-fa-la-sol-fa" }
        }
        \line {
          \left-align {  \normal-text "re e ut ascendeno" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "da F a E" }
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
                \dot e1-. 
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
          \left-align {  \normal-text "per natura: fa-mi-la per discendere" }
        }
        \line {
          \left-align {  \normal-text "fa-mi-mi per ascendere" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "da E a D" }
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
                \dot es1-. 
                es1 
                \dot d1-. 
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
          \left-align {  \normal-text "per ♮: la-sol-fa-mi-re" }
        }
        \line {
          \left-align {  \normal-text "la-sol-fa-la-sol" }
        }
        \line {
          \left-align {  \normal-text "mi ascende" }
        }

      }
      \hspace #3 
    }
    \null
    \null
    \line {      \center-column {
        \line {
          \left-align {  \normal-text "da D a C" }
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
                \dot des1-. 
                des1 
                \dot c1-. 
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
          \left-align {  \normal-text "per ♭: la-sol-fa-la-sol" }
        }
        \line {
          \left-align {  \normal-text "per ♮: sol-fa-la-sol-fa" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "da C a B" }
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
                \dot b,1-. 
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
          \left-align {  \normal-text "per ♮: fa-mi-mi" }
        }

      }
      \hspace #3 
      \center-column {
        \line {
          \left-align {  \normal-text "da B a A" }
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
                \clef "bass" b,1 
                \dot bes,1-. 
                bes,1 
                \dot a,1-. 
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
          \left-align {  \normal-text "per ♮: mi-mi-fa-mi-re" }
        }
        \line {
          \left-align {  \normal-text "per ♭: fa-mi-la per discendere" }
        }

      }
      \hspace #3 

    }
  }
}