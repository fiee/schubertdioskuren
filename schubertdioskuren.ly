\version "2.18.0"

\header {
  title = "Lied eines Schiffers and die Dioskuren"
  composer = "F. Schubert"
  poet = "Johann Mayrhofer"
  opus = "D.360, Op. 65, No. 1"
  % Remove default LilyPond tagline
  tagline = ##f

  % Mutopia headers
  mutopiacomposer = "SchubertF"
  mutopiainstrument = "Voice and Piano"
  source = "C.F. Peters, ca. 1910"
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "Gonçalo Nogueira"
  maintainerEmail = "jgoncalonogueira (at) gmail.com"
  maintainerWeb = "http://about.me/goncalonogueira"
}

\paper {
  #(set-paper-size "a4")
  page-count = #2
}

#(set-global-staff-size 18)

global = {
  \key as \major
  \numericTimeSignature
  \time 3/4
  \tempo "Langsam"
}

% Tweaks

smallStem = {
  \once \override Stem.length = #4.5
}

changeRight = {
  \change Staff = "right"
}

changeLeft = {
  \change Staff = "left"
}

hideStem = {
  \override Stem.stencil = ##f
}

shiftLeft = {
  \once \override NoteColumn.horizontal-shift = #1
}

offsetDynamic = {
  \once \override DynamicText.X-offset = #-4
}

shapeSlur = {
  \shape #'((0 . -0.2) (0 . 0) (0.7 . 0) (0 . -1.2)) Slur
}

shapeSlurA = {
  \shape #'((0.7 . 0.8) (0 . 1) (0 . 1) (-0.7 . 0.8)) Slur
}

shapeTie = {
  \shape #'((0.8 . -0.3) (0 . -0.3) (0 . -0.3) (0 . -0.3)) Tie
}

tweakDamping = {
  \once \override Beam.damping = #0.5
}

dropTies = {
  \override Tie.Y-offset = #-0.8
}

dropAccent = {
  \once \override Script.Y-offset = #-4.5
}

voice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  % Music follows here.
  R2. |
  r4 r4 c8. c16 |
  c4 aes c8 des |
  c4 bes ees8. ees16 | \break 
  ees4 c ees8. des16 |
  bes4 c r4 |

  R2. |

  r4 r4 aes8 g |
  f4. bes8 aes g | \break
  c4 aes ees'8. ees16 |
  ees4 c des8. des16 |
  des4 bes c8. bes16 |
  bes4 aes c8. bes16 |
  bes2. | \break 
  aes4 r4 r4 |

  r4 r4 c8. c16 |
  c4. g8 aes8. f16 |
  e4 c des'8. des16 |
  des4. f,8 f8. g16 | \break 
  aes4 g r4 |

  r4 r4 ees'8. ees16 |
  ees4. c8 bes aes |
  aes4 g ees'8. ees16 |
  ees4. c8 bes bes | \break 
  d2. |
  ees4 r4 r4 |

  r4 r4 c8. c16 |
  c4 aes c8 des | \break 
  c4 bes ees8. ees16 |
  ees4 c ees8. des16 |
  bes4 c aes8 g | \break 
  f4. bes8 aes g |
  c4 aes ees'8. ees16 |
  ees4. c8 des8. des16 | \break 
  des4 bes c8. bes16 |
  bes4 aes c8. bes16 |
  bes2. | \break 
  aes4 r4 r4 |

  R2. |
  R2. |
  \bar "|."
}

verse = \lyricmode {
  % Lyrics follow here.
  Di -- os -- ku -- ren, Zwil -- lings -- ster -- ne,
  die ihr leuch -- tet mei -- nem Na -- chen,

  mich be -- ru -- hig auf dem Mee -- re eu -- re Mil -- de,
  eu -- er Wa -- chen, eu -- re Mil -- de, eu -- er Wa -- chen.

  Wer auch fest in sich be -- grün -- det,
  un -- ver -- zagt dem Sturm be -- geg -- net,
  fühlt sich doch in eu -- ren Strah -- len
  dop -- ppelt mu -- tig und ge -- seg -- net. 

  Die -- ses Ru -- der, das ich schwin -- ge,
  Mee -- res -- flu  -- ten zu zer -- tei -- len,
  hän -- ge ich, so ich ge -- bor -- gen,
  auf an eu -- res Tem -- pel Säu -- len,
  Di -- os -- ku -- ren, Zwil -- lings -- ster -- ne.
  
}

right = \relative c' {
  \global
  % Music follows here.
  s2. |
  s2. |
  \changeLeft
  \stemUp
  s4 s4 <aes c>8 <bes des> |
  <aes c>4 <g bes> \changeRight <c ees>8. <c ees>16 |
  <c ees>2\arpeggio <c ees>8. <bes des>16 |
  \changeLeft
  <g bes>4 <aes c> \changeRight c4 |
  c4. des8 <aes! c> <g bes> |
  <c ees>4 <aes c> s4 |
  c4. des8 <aes! c> <g bes> |
  <c ees>4 <aes c> <c ees>8( <bes c ees>) |
  <a c ees>2 <bes des>8( <aes bes des>) |
  <g bes des>2 \clef bass \stemDown <ees aes c>8.\pp( <des g bes>16) |
  <des g bes>4( <c aes'>) <ees aes c>8.( <des g bes>16) |
  <des ees g bes>2.( |
  <c ees aes>4) r4 \stemNeutral \offsetDynamic <e g c>8.\ff <e g c>16 |

  <e g c>2 c'8.\f c16 |
  c4.( g8 aes8. f16) |
  e4 c \offsetDynamic <des f bes des>8.\ff <des f bes des>16 |
  <des f bes des>2 f8. g16 |
  <f aes>4( <e g>8) r8 <ees bes'>8.\pp <ees bes'>16 |

  <ees bes'>2 \offsetDynamic <ees bes' ees>8.\mf <ees b' ees>16 |
  << { \shapeSlur <c' ees>4.( <aes c>8 \stemDown \autoBeamOff <d, g bes>[ <f aes>]) | } \\ { ees2 s4 | } >>
  <d f aes>4( <ees g>) <ees bes' ees>8.\pp <ees b' ees>16 |
  << { <c' ees>4.( <aes c>8 \stemDown \autoBeamOff <g bes>[ <aes bes d>]) | } \\ { ees2 s4 | } >>
  <<
    {
      \stemDown
      \shapeTie
      <bes' f'>2.~( |
      <bes ees>2)
    }

    \\

    {
      \hideStem
      \shiftLeft
      \shapeSlurA
      aes2.( |
      g2)
    }
  >>

  <c, ees aes c>8. <c ees aes c>16 |
  <c ees aes c>2 <c ees aes c>8. <c ees aes c>16 |
  <c ees aes c>2 <aes' c>8 <f bes des> |
  <aes c>4 <g bes> <ees aes c ees>8. <ees aes c ees>16 |
  <ees aes c ees>2
  <<
    {
      <c' ees>8. <bes des>16 |
      <g bes>4 <aes c> s4 |
      c4. des8 <aes c> <g bes> |
      <c ees>4 <aes c> s4 |
    }
    \\
    {
      f4 |
      ees2 <aes c>8 <g c> |
      f8. g32 a bes4 s4 |
      \dropAccent
      ees,2_> <c' ees>8 <bes c ees> |
    }
  >>
  <a c ees>2 <bes des>8 <aes bes des> |
  <g bes des>2 \offsetDynamic <ees aes c>8.\pp <des g bes>16 |
  <des g bes>4( <c aes'>) <ees aes c>8. <des g bes>16 |
  <des g bes>2. |

  \dropTies
  <c ees aes>4 <des ees g des'>->~( <c ees aes c>) |
  <des ees g bes>->~( <c ees aes>) \offsetDynamic <des ees g des'>->~(\ppp |
  <c ees aes c>) <des ees g bes>->~( <c ees aes>)\fermata |
}

left = \relative c' {
  \global
  % Music follows here.
  \offsetDynamic <aes,, c ees aes c ees aes c>2^\pp\arpeggio <aes c ees aes c ees aes c>8. <aes c ees aes c ees aes c>16 |
  <aes c ees aes c ees aes c>2\arpeggio <aes c ees aes c ees aes c>8. <aes c ees aes c ees aes c>16 |
  <aes c ees aes c ees aes c>2\arpeggio  << {\stemDown \smallStem f''4} \\ {f,8 des} >> |
  \stemDown <ees ees'>2 \stemNeutral \autoBeamOff \crossStaff { <c ees aes c ees aes>8. <c ees aes c ees aes>16 |
  <c ees aes c ees aes>2\arpeggio } \autoBeamOn
  <<
    {
      f'4 |
      \voiceThree ees2 \voiceOne aes8 g |
      \tweakDamping
      f8. g32 a bes4 s4 |
      ees,2 <aes c>8 <g c> |
      \tweakDamping
      f8. g32 a bes4 s4 |
    }

  \\

    {
      <bes,, bes'>4 |
      ees aes aes |
      des4. bes8 ees es |
      aes,2 aes4 |
      des4. bes8 ees ees |
    }
  >>
  <aes, ees'>2 <aes ees'>8( <ges ees'>) |
  <f f'>2 <f des'>8( <fes des'>) |
  <ees ees'>2 aes,8.( ees'16) |
  ees4( f) aes,8.( ees'16) |
  ees2.( |
  <aes, aes'>4) r4 <c c'>8. <c c'>16 |
  <c c'>2 c'8. c16 |
  c4.( g8 aes8. f16) |
  e4 c <bes des f bes>8. <bes des f bes>16 |
  <bes des f bes>2 <des des'>4 |
  <c c'>2 g'8. g16 |
  g2 g8. g16 |
  aes2 bes4 |
  c2 <g, g'>8. <g g'>16 |
  <aes aes'>2 <bes bes'>4 |
  <ees bes'>2.~ |
  <ees bes'>2

  aes,16-> c ees aes |
  aes,16-> c ees aes aes,16-> c ees aes aes,16-> c ees aes |
  aes,16-> c ees aes aes,16 c ees aes f f' des, des' |
  ees, aes c ees ees, g bes ees c, ees aes c |
  c, ees aes c c, ees aes c bes, bes' des, des' |
  ees, g bes ees aes,, c ees aes aes, aes' bes c |
  des des, des' ees des c bes des ees c ees ees, |
  c ees aes c c, ees aes c aes ees' ges, ees' |
  f, a c f f, a c f bes, des fes, des' |
  ees, g bes ees ees, g bes ees c, c' ees, ees' |
  ees, g bes ees f, aes c f c, c' ees, ees' |
  ees, g bes ees ees, g bes ees ees, g bes ees |
  aes,, c ees aes aes, des ees g aes, c ees aes |
  aes, des ees g aes, des ees aes aes, des ees g |
  aes, des ees aes aes, des ees g <aes, c ees aes>4\fermata |
}

VoicePart = \new Staff \with {
  instrumentName = "Singstimme"
  midiInstrument = #"clarinet"
} { \voice }
\addlyrics { \verse }

pianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  connectArpeggios = ##t
  \consists #Span_stem_engraver
  \override StaffGrouper.staff-staff-spacing.basic-distance = #0.1
  \override StaffGrouper.staff-staff-spacing.padding = #2
  midiInstrument = #"piano"
} <<
  \new Staff = "right" \right
  \new Staff = "left" { \clef bass \left }
>>

\score {
  <<
    \VoicePart
    \pianoPart
  >>
  \midi {
    \tempo 4 = 50
  }
  \layout {
    \context {
      \Staff
      \override VerticalAxisGroup.default-staff-staff-spacing =
        #'((basic-distance . 3)
          (minimum-distance . 1)
          (padding . 1))
    }
  }
}
