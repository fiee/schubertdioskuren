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

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.
  
}

verse = \lyricmode {
  % Lyrics follow here.
  
}

right = \relative c'' {
  \global
  % Music follows here.
  
}

left = \relative c' {
  \global
  % Music follows here.
  
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Singstimme"
} { \sopranoVoice }
\addlyrics { \verse }

pianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
} <<
  \new Staff = "right" \right
  \new Staff = "left" { \clef bass \left }
>>

\score {
  <<
    \sopranoVoicePart
    \pianoPart
  >>
  \layout { }
}
