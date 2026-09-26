\version "2.24.0"

\header {
  title = "Guitar Test"
  composer = "Original"
}

guitar = \relative c' {
  \clef treble
  \key e \minor
  \time 4/4
  \tempo 4 = 92

  e8 g b e g e b g |
  d8 fis a d fis d a fis |
  c8 e g c e c g e |
  b8 dis fis b fis dis b fis |
}

\score {
  \new Staff \with {
    midiInstrument = "overdriven guitar"
  } {
    \guitar
  }

  \layout { }
  \midi { }
}