\version "2.24.0"

\header {
  title = "Ashes Before Dawn"
  subtitle = "A Baroque-Rock Miniature in Four Parts"
  composer = "Original"
}

global = {
  \key d \minor
  \time 4/4
}

conductor = {
  \tempo "I. The Oath" 4 = 112
  s1*12

  \tempo "II. March of Iron" 4 = 132
  s1*16

  \tempo "III. The Last Stand" 4 = 152
  s1*16

  \tempo "IV. Farewell" 4 = 84
  s1*12

  \tempo "Coda — Ashes Before Dawn" 4 = 72
  s1*4
}

% =========================================================
% MAIN GUITAR
% =========================================================

guitar = \relative c'' {
  \global
  \clef treble

  % =======================================================
  % I. THE OATH — 12 bars
  % =======================================================

  \mark \markup { \box "I — The Oath" }
  \p

  d4 a8 bes c4 d |
  f4 e8 d cis2 |
  d8 f a g f4 e |
  d2 a2 |

  d4 f8 g a4 bes |
  a4 g8 f e4 cis |
  d8 e f a g4 e |
  d1 |

  a'4 g8 f e4 d |
  c4 bes8 a g4 a |
  d8 f a d c bes a g |
  a2 cis2 |

  % =======================================================
  % II. MARCH OF IRON — 16 bars
  % =======================================================

  \mark \markup { \box "II — March of Iron" }
  \mf

  g8 d' bes g d' bes g d |
  a8 e' cis a e' cis a e |
  bes8 f' d bes f' d bes f |
  a8 e' cis a g' e cis a |

  d8 a' f d a' f d a |
  c8 g' e c g' e c g |
  bes8 f' d bes g' f d bes |
  a4 cis e2 |

  d8 f a d a f d a |
  ees'8 d bes g d' bes g d |
  f8 a c f e d c a |
  bes4 a8 g f4 e |

  d8 e f g a bes c d |
  e8 d cis b cis4 e |
  f8 e d a bes a g e |
  d1 |

  % =======================================================
  % III. THE LAST STAND — 16 bars
  % =======================================================

  \mark \markup { \box "III — The Last Stand" }
  \ff

  d'8 a d f e d c a |
  bes4 a8 g f4 e |
  d8 f a d c bes a g |
  a2 cis2 |

  d8 a' f d c' a f d |
  bes'8 g e cis a' e cis a |
  d8 f a d e d c bes |
  a1 |

  f'8 e d c bes a g f |
  e8 g bes e d c bes g |
  a8 c e a g f e c |
  d4 f a2 |

  d,8 e f a d f e d |
  c8 bes a g f e d cis |
  d8 a' d f a f d a |
  d1 |

  % =======================================================
  % IV. FAREWELL — 16 bars
  % =======================================================

  \mark \markup { \box "IV — Farewell" }
  \mp

  a2 f4 e |
  d2 c4 a |
  bes2 a4 g |
  f1 |

  a2 c4 d |
  f2 e4 c |
  d2 bes4 a |
  a1 |

  d2 c4 a |
  bes2 f4 g |
  a2 g4 e |
  f1 |

  % CODA — resolution
  \p
  d2 a4 d |
  fis2 e4 d |
  a'2 fis4 e |
  d1\fermata
}

% =========================================================
% HARPSICHORD
% =========================================================

harpsichord = \relative c' {
  \global
  \clef treble

  % I — continuo / baroque motor
  \repeat unfold 3 {
    d8 a' f a d, a' f a |
    cis,8 a' e a cis, a' e a |
    bes,8 f' d f bes, f' d f |
    a,8 e' cis e a, e' cis e |
  }

  % II
  \repeat unfold 4 {
    g8 d' bes d g, d' bes d |
    a8 e' cis e a, e' cis e |
    bes8 f' d f bes, f' d f |
    a8 e' cis e a, e' cis e |
  }

  % III
  \repeat unfold 4 {
    d8 a' f a d, a' f a |
    bes,8 f' d f bes, f' d f |
    c8 g' e g c, g' e g |
    a,8 e' cis e a, e' cis e |
  }

  % IV — gradually less busy
  f8 c' a c f, c' a c |
  f,8 c' a c f, c' a c |
  bes,8 f' d f bes, f' d f |
  c8 g' e g c, g' e g |

  f,8 c' a c f, c' a c |
  a,8 e' c e a, e' c e |
  bes8 f' d f bes, f' d f |
  a8 e' cis e a, e' cis e |

  d8 a' f a d, a' f a |
  bes,8 f' d f bes, f' d f |
  a8 e' cis e a, e' cis e |
  f8 c' a c f, c' a c |

  d4 <fis a> <a d> <fis a> |
  d4 <fis a> <a cis> <fis a> |
  d4 <fis a> <a d> <a cis> |
  <d fis a>1
}

% =========================================================
% PIANO
% =========================================================

pianoRH = \relative c'' {
  \global

  % I
  <f a>2 <e g> |
  <e a>2 <cis e> |
  <f a>2 <e g> |
  <d f>1 |

  <f a>2 <g bes> |
  <e a>2 <cis e> |
  <f a>2 <e g> |
  <d f>1 |

  <f a>2 <e g> |
  <d f>2 <cis e> |
  <f a d>2 <g bes d> |
  <e a cis>1 |

  % II
  \repeat unfold 2 {
    <g bes d>2 <bes d g> |
    <a cis e>2 <cis e a> |
    <bes d f>2 <d f bes> |
    <a cis e>1 |

    <d f a>2 <f a d> |
    <c e g>2 <e g c> |
    <bes d f>2 <d f g> |
    <a cis e>1 |
  }

  % III
  <d f a>1 |
  <bes d f>1 |
  <c e g>1 |
  <a cis e>1 |

  <d f a>1 |
  <bes d f>1 |
  <c e g>1 |
  <a cis e>1 |

  <f a d>1 |
  <e g bes>1 |
  <e a c>1 |
  <d f a>1 |

  <d f a>2 <f a d> |
  <c e g>2 <bes d f> |
  <a d f>2 <a cis e> |
  <d f a>1 |

  % IV
  <f a c>1 |
  <e a c>1 |
  <d f bes>1 |
  <c f a>1 |

  <f a c>1 |
  <e a c>1 |
  <d f bes>1 |
  <cis e a>1 |

  <d f a>1 |
  <d f bes>1 |
  <cis e a>1 |
  <c f a>1 |

  <d fis a>1 |
  <d fis a>1 |
  <cis e a>1 |
  <d fis a>1\fermata
}

pianoLH = {
  \global
  \clef bass

  % I
  d4 a d' a |
  a4 e a e |
  bes4 f bes f |
  a4 e a e |

  d4 a d' a |
  a4 e a e |
  bes4 f bes f |
  d4 a d' a |

  f4 c f c |
  g4 d g d |
  bes4 f bes f |
  a4 e a e |

  % II
  \repeat unfold 4 {
    g4 d g d |
    a4 e a e |
    bes4 f bes f |
    a4 e a e |
  }

  % III
  \repeat unfold 4 {
    d4 a d' a |
    bes4 f bes f |
    c4 g c' g |
    a4 e a e |
  }

  % IV
  f2 c |
  a2 e |
  bes2 f |
  f2 c |

  f2 c |
  a2 e |
  bes2 f |
  a2 e |

  d2 a |
  bes2 f |
  a2 e |
  f2 c |

  d2 a |
  d2 a |
  a2 e |
  d1
}

% =========================================================
% STRINGS
% =========================================================

violinOne = \relative c'' {
  \global

  % I
  R1*4

  a1 |
  g1 |
  f2 e |
  d1 |

  f2 a |
  g2 e |
  f2 g |
  a1 |

  % II
  g4 bes d bes |
  a4 cis e cis |
  bes4 d f d |
  a4 cis e cis |

  d4 f a f |
  c4 e g e |
  bes4 d g f |
  e1 |

  d'2 c |
  bes2 a |
  a2 g |
  f1 |

  a2 bes |
  c2 cis |
  d2 cis |
  d1 |

  % III
  d'2 a |
  bes2 f |
  g2 e |
  a1 |

  d2 f |
  e2 cis |
  d2 e |
  cis1 |

  f2 e |
  d2 c |
  bes2 a |
  d1 |

  f2 e |
  d2 bes |
  a2 cis |
  d1 |

  % IV
  c2 a |
  a2 f |
  f2 d |
  c1 |

  c'2 a |
  a2 e |
  f2 d |
  e1 |

  a2 f |
  f2 d |
  e2 cis |
  c1 |

  a2 fis |
  fis2 a |
  cis2 e |
  fis1
}

violinTwo = \relative c'' {
  \global

  % I
  f1 |
  e1 |
  d1 |
  cis1 |

  f1 |
  e1 |
  d2 cis |
  d1 |

  d2 f |
  e2 cis |
  d2 e |
  e1 |

  % II
  d1 |
  e1 |
  f1 |
  e1 |

  f1 |
  e1 |
  d1 |
  cis1 |

  f1 |
  g1 |
  f1 |
  e1 |

  f2 g |
  a2 e |
  f2 e |
  f1 |

  % III
  a1 |
  f1 |
  e1 |
  e1 |

  a1 |
  f1 |
  g1 |
  e1 |

  a1 |
  g1 |
  a1 |
  f1 |

  a2 bes |
  a2 g |
  f2 e |
  fis1 |

  % IV
  a1 |
  e1 |
  f1 |
  a1 |

  a1 |
  e1 |
  f1 |
  e1 |

  f1 |
  d1 |
  e1 |
  a1 |

  fis1 |
  a1 |
  e1 |
  a1
}

viola = \relative c' {
  \global
  \clef alto

  % I
  d1 |
  cis1 |
  bes1 |
  a1 |

  d1 |
  cis1 |
  bes1 |
  a1 |

  a1 |
  bes1 |
  a1 |
  cis1 |

  % II
  bes1 |
  cis1 |
  d1 |
  cis1 |

  a1 |
  g1 |
  bes1 |
  cis1 |

  a1 |
  bes1 |
  c1 |
  d1 |

  d1 |
  e1 |
  f1 |
  a,1 |

  % III
  d1 |
  d1 |
  c1 |
  cis1 |

  d1 |
  d1 |
  e1 |
  cis1 |

  d1 |
  bes1 |
  c1 |
  d1 |

  d1 |
  c1 |
  cis1 |
  d1 |

  % IV
  c1 |
  c1 |
  bes1 |
  a1 |

  c1 |
  c1 |
  bes1 |
  cis1 |

  a1 |
  bes1 |
  cis1 |
  c1 |

  d1 |
  d1 |
  cis1 |
  d1
}

cello = \relative c {
  \global
  \clef bass

  % I
  d1 |
  a1 |
  bes1 |
  a1 |

  d1 |
  a1 |
  bes1 |
  d1 |

  f1 |
  g1 |
  bes1 |
  a1 |

  % II
  g1 |
  a1 |
  bes1 |
  a1 |

  d1 |
  c1 |
  bes1 |
  a1 |

  d1 |
  ees1 |
  f1 |
  bes,1 |

  d1 |
  a1 |
  bes1 |
  d1 |

  % III
  d1 |
  bes1 |
  c1 |
  a1 |

  d1 |
  bes1 |
  c1 |
  a1 |

  d1 |
  ees1 |
  a,1 |
  d1 |

  d1 |
  c1 |
  a1 |
  d1 |

  % IV
  f1 |
  a,1 |
  bes1 |
  f1 |

  f'1 |
  a,1 |
  bes1 |
  a1 |

  d1 |
  bes1 |
  a1 |
  f1 |

  d1 |
  d1 |
  a1 |
  d1
}

bass = {
  \global
  \clef bass

  % I
  d1 |
  a,1 |
  bes,1 |
  a,1 |

  d1 |
  a,1 |
  bes,1 |
  d1 |

  f1 |
  g1 |
  bes,1 |
  a,1 |

  % II
  \repeat unfold 2 {
    g1 |
    a1 |
    bes1 |
    a1 |

    d1 |
    c1 |
    bes,1 |
    a,1 |
  }

  % III
  \repeat unfold 4 {
    d1 |
    bes,1 |
    c1 |
    a,1 |
  }

  % IV
  f1 |
  a,1 |
  bes,1 |
  f1 |

  f1 |
  a,1 |
  bes,1 |
  a,1 |

  d1 |
  bes,1 |
  a,1 |
  f1 |

  d1 |
  d1 |
  a,1 |
  d1
}

% =========================================================
% BRASS
% =========================================================

trumpet = \relative c'' {
  \global

  % I — mostly absent
  R1*8
  a2 f |
  g2 e |
  a2 bes |
  cis1 |

  % II
  d2 bes |
  cis2 a |
  d2 f |
  e1 |

  f2 d |
  e2 c |
  d2 bes |
  cis1 |

  a'2 g |
  f2 e |
  d2 c |
  bes1 |

  d2 e |
  f2 e |
  d2 cis |
  d1 |

  % III — full heroic brass
  a'1 |
  bes1 |
  g1 |
  a1 |

  d1 |
  cis1 |
  d2 e |
  a,1 |

  f'2 e |
  d2 c |
  e2 a |
  f1 |

  a2 bes |
  a2 g |
  f2 e |
  fis1 |

  % IV
  R1*4

  c2 a |
  a2 e |
  f2 d |
  e1 |

  R1*4

  a2 fis |
  fis2 e |
  cis'2 a |
  a1
}

trombone = \relative c {
  \global
  \clef bass

  % I
  R1*8
  d1 |
  c1 |
  bes1 |
  a1 |

  % II
  g1 |
  a1 |
  bes1 |
  a1 |

  d1 |
  c1 |
  bes1 |
  a1 |

  d1 |
  ees1 |
  f1 |
  bes,1 |

  d1 |
  a1 |
  bes1 |
  d1 |

  % III
  d1 |
  bes1 |
  c1 |
  a1 |

  d1 |
  bes1 |
  c1 |
  a1 |

  d1 |
  ees1 |
  a,1 |
  d1 |

  d1 |
  c1 |
  a1 |
  d1 |

  % IV
  R1*4

  f1 |
  a,1 |
  bes1 |
  a1 |

  R1*4

  d1 |
  d1 |
  a1 |
  d1
}

tuba = {
  \global
  \clef bass

  % I
  R1*12

  % II
  g,1 |
  a,1 |
  bes,1 |
  a,1 |

  d1 |
  c1 |
  bes,1 |
  a,1 |

  d1 |
  ees1 |
  f1 |
  bes,1 |

  d1 |
  a,1 |
  bes,1 |
  d1 |

  % III
  d1 |
  bes,1 |
  c1 |
  a,1 |

  d1 |
  bes,1 |
  c1 |
  a,1 |

  d1 |
  ees1 |
  a,1 |
  d1 |

  d1 |
  c1 |
  a,1 |
  d1 |

  % IV
  R1*8

  d1 |
  bes,1 |
  a,1 |
  f1 |

  d1 |
  d1 |
  a,1 |
  d1
}

% =========================================================
% SCORE
% =========================================================

\score {
  <<
    \new Devnull \conductor

    \new StaffGroup \with {
      instrumentName = "Rock / Keys"
    } <<

      \new Staff \with {
        instrumentName = "Overdriven Guitar"
        shortInstrumentName = "Gtr."
        midiInstrument = "overdriven guitar"
      } {
        \guitar
      }

      \new PianoStaff \with {
        instrumentName = "Piano"
        shortInstrumentName = "Pno."
      } <<
        \new Staff \with {
          midiInstrument = "acoustic grand"
        } {
          \clef treble
          \pianoRH
        }

        \new Staff \with {
          midiInstrument = "acoustic grand"
        } {
          \pianoLH
        }
      >>

      \new Staff \with {
        instrumentName = "Harpsichord"
        shortInstrumentName = "Hps."
        midiInstrument = "harpsichord"
      } {
        \harpsichord
      }
    >>

    \new StaffGroup \with {
      instrumentName = "Strings"
    } <<

      \new Staff \with {
        instrumentName = "Violin I"
        midiInstrument = "violin"
      } {
        \violinOne
      }

      \new Staff \with {
        instrumentName = "Violin II"
        midiInstrument = "violin"
      } {
        \violinTwo
      }

      \new Staff \with {
        instrumentName = "Viola"
        midiInstrument = "viola"
      } {
        \viola
      }

      \new Staff \with {
        instrumentName = "Cello"
        midiInstrument = "cello"
      } {
        \cello
      }

      \new Staff \with {
        instrumentName = "Contrabass"
        midiInstrument = "contrabass"
      } {
        \bass
      }
    >>

    \new StaffGroup \with {
      instrumentName = "Brass"
    } <<

      \new Staff \with {
        instrumentName = "Trumpet"
        midiInstrument = "trumpet"
      } {
        \trumpet
      }

      \new Staff \with {
        instrumentName = "Trombone"
        midiInstrument = "trombone"
      } {
        \trombone
      }

      \new Staff \with {
        instrumentName = "Tuba"
        midiInstrument = "tuba"
      } {
        \tuba
      }
    >>
  >>

  \layout { }
  \midi { }
}