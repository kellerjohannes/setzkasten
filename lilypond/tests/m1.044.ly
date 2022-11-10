\version "2.22.2"

upp =
#(define-music-function (note)   (ly:music?)
 #{ \once \override Voice.Accidental.stencil =
          #ly:text-interface::print
        \once \override Voice.Accidental.text =
          \markup {\musicglyph "accidentals.sharp"
       \postscript "gsave 0.17 setlinewidth -1.4 0.5 moveto -1.4 2 lineto
       stroke grestore
       gsave 0.1 setlinewidth -1.7 1.4 moveto -1.4 2.18 lineto -1.1 1.4 lineto
       stroke grestore"}
        $note #})

dot =
#(define-music-function (note)   (ly:music?)
  #{ \once \override Voice.Accidental.stencil =
  #ly:text-interface::print
  \once \override Voice.Accidental.text =
  \markup {
  \postscript "
      gsave
      0.0 % X position
      0 % Y position
      .25 % dot size
      0 360 arc
      closepath
      0 setgray fill
      grestore"}
  $note #})

dotf =
#(define-music-function (note)   (ly:music?)
  #{ \once \override Voice.Fingering.stencil =
  #ly:text-interface::print
  \once \override Voice.Fingering.text =
  \markup {
  \postscript "
      gsave
      0.0 % X position
      0 % Y position
      .25 % dot size
      0 360 arc
      closepath
      0 setgray fill
      grestore"}
  $note #})

musicExcerptA =
\relative c
{
  \accidentalStyle Score.forget
  \time 2/1
  \clef "tenor"
  \override Score.TimeSignature.stencil = ##f
  \override Score.BarLine.stencil = ##f

  % \once \override Accidental.parent-alignment-X = #1
  % \once \override Accidental.X-offset = #ly:self-alignment-interface::x-aligned-on-self
  % \once \override Accidental.Y-offset = #1
  % \once \override Accidental.side-axis = #0
  % \once \override Accidental.direction = #0
  % \dot
  % cis1

  %\once \override Fingering.add-stem-support = ##t
  \once \override Fingering.direction = #UP
  \once \override Fingering.parent-alignment-X = #0
  \once \override Fingering.parent-alignment-Y = #05
  %\once \override Fingering.Y-offset = #ly:self-alignment-interface::y-aligned-on-self
  %\once \override Fingering.self-alignment-Y = #-1
  %\once \override Fingering.X-offset = #ly:self-alignment-interface::y-aligned-on-self
%  \dotf
%  c1-3

  c2^.
  r2


  fis1
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
