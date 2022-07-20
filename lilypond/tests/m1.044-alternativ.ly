\version "2.22.2"

musicExcerpt =
\relative c
{
  \clef "tenor"
  \time 2/1
  \override Score.TimeSignature.stencil = ##f
  \override Staff.Clef.full-size-change = ##t
  \newSpacingSection
  \override Score.SpacingSpanner.spacing-increment = #0.5

  c1^\markup { \bold [A] }_\markup
  {
    \hspace #-3
    \override #'( baseline-skip . 2.2 )
    \center-column
    {
      \vspace #1
      \line { \small \italic "Trit. inco." }
      \line { \small \italic "accident." }
    }
  } fis1 |

  \time 1/4
  \stopStaff s4 \bar "" | \startStaff
  \time 2/1
  \clef "tenor"
  \set Staff.forceClef = ##t

  d1^\markup { \bold [B] } gis1 |

  \time 1/4
  \stopStaff s4 \bar "" | \startStaff
  \time 2/1
  \clef "tenor"
  \set Staff.forceClef = ##t

  e1^\markup { \bold [C] } ais1 |

  \time 1/4
  \stopStaff s4 \bar "" | \startStaff
  \time 2/1
  \clef "tenor"
  \set Staff.forceClef = ##t

  fis1^\markup { \bold [D] } bis1 |

  \time 1/4
  \stopStaff s4 \bar "" | \startStaff
  \time 4/1
  \clef "tenor"
  \set Staff.forceClef = ##t

  bis1^\markup { \bold [E] } ais1 gis1 fis1 |

  \time 1/4
  \stopStaff s4 \bar "" | \startStaff
  \time 4/1
  \clef "tenor"
  \set Staff.forceClef = ##t

  ges1^\markup { \bold [F] } as1 bes1 c1 |

}


\score
{
  \new Staff
  {
    \musicExcerpt
  }
}
