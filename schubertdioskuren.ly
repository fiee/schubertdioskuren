\version "2.18.0"

\header {
  title = "Lied eines Schiffers and die Dioskuren"
  composer = "F. Schubert"
  poet = "Johann Mayrhofer"
  opus = "Op. 65, nº 1"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key as \major
  \numericTimeSignature
  \time 3/4
  \tempo "Langsam"
}

voice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  % Music follows here.
  R2. |
  r4 r4 c8. c16 |
  c4 aes c8 des |
  c4 bes ees8. ees16 |
  ees4 c ees8. des16 |
  bes4 c r4 |

  R2. |

  r4 r4 aes8 g |
  f4. bes8 aes g |
  c4 aes ees'8. ees16 |
  ees4 c des8. des16 |
  des4 bes c8. bes16 |
  bes4 aes c8. bes16 |
  bes2. |
  aes4 r4 r4 |

  r4 r4 c8. c16 |
  c4. g8 aes8. f16 |
  e4 c des'8. des16 |
  des4. f,8 f8. g16 |
  aes4 g r4 |

  r4 r4 ees'8. ees16 |
  ees4. c8 bes aes |
  aes4 g ees'8. ees16 |
  ees4. c8 bes bes |
  d2. |
  ees4 r4 r4 |

  r4 r4 c8. c16 |
  c4 aes c8 des |
  c4 bes ees8. ees16 |
  ees4 c ees8. des16 |
  bes4 c aes8 g |
  f4. bes8 aes g |
  c4 aes ees'8. ees16 |
  ees4. c8 des8. des16 |
  des4 bes c8. bes16 |
  bes4 aes c8. bes16 |
  bes2. |
  aes4 r4 r4 |

  R2. |
  R2. |
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

right = \relative c'' {
  \global
  % Music follows here.
  
}

left = \relative c' {
  \global
  % Music follows here.
  
}

VoicePart = \new Staff \with {
  instrumentName = "Singstimme"
} { \voice }
\addlyrics { \verse }

pianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
} <<
  \new Staff = "right" \right
  \new Staff = "left" { \clef bass \left }
>>

\score {
  <<
    \VoicePart
    \pianoPart
  >>
  \layout { }
}
