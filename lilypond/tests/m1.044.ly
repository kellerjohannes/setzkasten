\version "2.22.2"

musicExcerptA =
\relative c 
{
  \time 2/1
  \clef "tenor"
  \override Score.TimeSignature.stencil = ##f
  \override Score.BarLine.stencil = ##f
  c1 fis1
  \revert Score.BarLine.stencil
  \bar "|"
}

musicExcerptB =
\relative c
{
  \time 2/1
  \clef "tenor"
  \override Score.TimeSignature.stencil = ##f
  \override Score.BarLine.stencil = ##f
  d1 gis1
  \revert Score.BarLine.stencil
  \bar "|"
}

musicExcerptC =
\relative c
{
  \time 2/1
  \clef "tenor"
  \override Score.TimeSignature.stencil = ##f
  \override Score.BarLine.stencil = ##f
  e1 ais1
  \revert Score.BarLine.stencil
  \bar "|"
}


\markuplist
{
  \line
  {
    \override #'( baseline-skip . 4 )
    \center-column
    {
      \line { \bold "[A]" }
      \line 
      {
	\score
	{
	  %\override Staff.Y-extent = #'( -5 . 5 )
	  \musicExcerptA
	  \layout
	  {
	    indent = 0
	    \context
	    {
	      \Staff
	      \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 12.5))
	    }
	  }
	}
      }
      \line
      {
	\override #'( baseline-skip . 2.3 )
	\center-column
	{
	  \vspace#0.5
	  \line {  "Trit. inco." }
	  \line {  "accident." }
	}
      }
    }
    \override #'( baseline-skip . 4 )
    \center-column
    {
      \line { \bold "[B]" }
      \line
      {
	\score
	{
	  \musicExcerptB
	  \layout
	  {
	    indent = 0
	    \context
	    {
	      \Staff
	      \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 12.5))
	    }
	  }
	}
      }
      \line
      {
	\override #'( baseline-skip . 2.3 )
	\center-column
	{
	  \vspace#0.5
	  \line {  "Trit. incom." }
	  \line {  "accidentale" }
	}
      }
    }
    \override #'( baseline-skip . 4 )
    \center-column
    {
      \line { \bold "[C]" }
      \line
      {
	\score
	{
	  \musicExcerptC
	  \layout
	  {
	    indent = 0
	    \context
	    {
	      \Staff
	      \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 12.5))
	    }
	  }
	}
      }
      \line
      {
	\override #'( baseline-skip . 2.3 )
	\center-column
	{
	  \vspace#0.5
	  \line {  "Trit. incom." }
	  \line {  "accidentale" }
	}
      }
    }
  }
}




