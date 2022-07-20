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
      \line { \tiny \italic "Trit. inco." }
      \line { \tiny \italic "accident." }
    }
  }
  fis1 |

  \time 1/1
  \stopStaff s1 \bar "" | \startStaff
  \time 2/1
  \clef "tenor"
  \set Staff.forceClef = ##t

  d1^\markup { \bold [B] }_\markup
  {
    \hspace #-3
    \override #'( baseline-skip . 2.2 )
    \center-column
    {
      \vspace #1
      \line { \tiny \italic "Trit. incom." }
      \line { \tiny \italic "accidentale" }
    }
  }
 gis1 |

  \time 1/1
  \stopStaff s1 \bar "" | \startStaff
  \time 2/1
  \clef "tenor"
  \set Staff.forceClef = ##t

  e1^\markup { \bold [C] }_\markup
  {
    \hspace #-3
    \override #'( baseline-skip . 2.2 )
    \center-column
    {
      \vspace #1
      \line { \tiny \italic "Trit. incom." }
      \line { \tiny \italic "accidentale" }
    }
  }
 ais1 |

  \time 1/1
  \stopStaff s1 \bar "" | \startStaff
  \time 2/1
  \clef "tenor"
  \set Staff.forceClef = ##t

  fis1^\markup { \bold [D] }_\markup
  {
    \hspace #-3
    \override #'( baseline-skip . 2.2 )
    \center-column
    {
      \vspace #1
      \line { \tiny \italic "Trit. incom." }
      \line { \tiny \italic "accidentale" }
    }
  }
 bis1 |

  \time 1/1
  \stopStaff s1 \bar "" | \startStaff
  \time 4/1
  \clef "tenor"
  \set Staff.forceClef = ##t

  bis1^\markup { \bold [E] }_\markup
  {
    \hspace #-3
    \override #'( baseline-skip . 2.2 )
    \center-column
    {
      \vspace #1
      \line { \tiny \italic "Trit. compoſto" }
      \line { \tiny \italic "accidentale" }
    }
  }
 ais1 gis1 fis1 |

  \time 1/1
  \stopStaff s1 \bar "" | \startStaff
  \time 4/1
  \clef "tenor"
  \set Staff.forceClef = ##t

  ges1^\markup { \bold [F] }_\markup
  {
    \hspace #-3
    \override #'( baseline-skip . 2.2 )
    \center-column
    {
      \vspace #1
      \line { \tiny \italic "Tritono compoſto" }
      \line { \tiny \italic "accidentale" }
    }
  }
 as1 bes1 c1 |

}

#(set! paper-alist (cons '("snippet" . (cons (* 170 mm) (* 45 mm))) paper-alist))

\paper {
  #(set-paper-size "snippet")
  tagline = ##f
  indent = 0
}

\markuplist
{
  \center-column
  {
    \line { "Eſſempio del Tritono accidentale, incompoſto & compoſto." }
    \line { \italic "[m1.044, fol. 24r, Cap. 36]" }
    \vspace #1
    \line
    {
      \score
      {
	\new Staff
	{
	  \musicExcerpt
	}
      }
    }
  }
}
