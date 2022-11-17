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
      \fontsize#3 { \concat { \normal-text "Mano enarmonica ascendente, con i semitoni maggiori, e con il tono diviso in quattro parti, e delle sette lettere della mano, come si hanno da leggere"} }
    }
    \line {
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "da A a B" }
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
                \dot a,1-. 
                bes,1 
                \dot bes,1-. 
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
          \left-align {  \normal-text "per ♭: mi-fa-sol-re-mi" }
        }
        \line {
          \left-align {  \normal-text "per ♮: re-mi-fa-re-mi" }
        }
        \line {
          \left-align {  \normal-text "la per discendere" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "da ♭faBmi ..." }
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
                \dot bes,1-. 
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
          \left-align {  \normal-text "per ♭: fa-re-..." }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "... a C" }
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
                \dot b,1-. 
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
          \left-align {  \normal-text "...-mi-mi-fa" }
        }
        \line {
          \left-align {  \normal-text "per ♮: mi-mi-fa" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "da C a D" }
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
                \dot c1-. 
                des1 
                \dot des1-. 
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
          \left-align {  \normal-text "per ♭: sol-re-mi-fa-re" }
        }
        \line {
          \left-align {  \normal-text "per natura: ut-re-mi-fa-re" }
        }
        \line {
          \left-align {  \normal-text "per ♮: fa-re-mi-fa-re" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "da D a E" }
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
                \dot d1-. 
                es1 
                \dot es1-. 
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
          \left-align {  \normal-text "per natura: re-mi-fa-re-mi" }
        }
        \line {
          \left-align {  \normal-text "la e sol per discendere" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "a E a F" }
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
                \dot e1-. 
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
          \left-align {  \normal-text "per natura: mi-mi-fa" }
        }
        \line {
          \left-align {  \normal-text "la per discendere" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "da F a G" }
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
                \dot f1-. 
                ges1 
                \dot ges1-. 
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
          \left-align {  \normal-text "per natura: fa-re-mi-fa-sol" }
        }
        \line {
          \left-align {  \normal-text "per ♭: ut-re-mi-fa-re" }
        }

      }
      \hspace #3 
      \center-column {
        \null
        \line {
          \left-align {  \normal-text "da G a A" }
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
                \dot g1-. 
                \dot a1-. 
                as1 
                \dot as1-. 
                a1 
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
          \left-align {  \normal-text "per natura: sol-re-mi-fa-re" }
        }
        \line {
          \left-align {  \normal-text "per ♭: re-mi-fa-re-mi" }
        }
        \line {
          \left-align {  \normal-text "per ♮: ut-re-mi-fa-re" }
        }

      }
      \hspace #3 

    }
  }
}