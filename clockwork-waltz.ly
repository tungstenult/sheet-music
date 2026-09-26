\version "2.24.0"

\header {
  title = "Clockwork Waltz"
  composer = "Original"
}

global = {
  \key d \minor
  \time 3/4
  \tempo 4 = 126
}

right = \relative c'' {
  \global
  \clef treble

  a4 d f |
  e4. d8 c4 |
  cis4 e a |
  g4. f8 e4 |

  f4 a, d |
  c4. bes8 a4 |
  cis4 e g |
  f2 e4 |

  d4 f a |
  bes4. a8 g4 |
  f4 e d |
  cis2 a4 |

  d4 e f |
  a4. g8 f4 |
  e4 cis a |
  d2. \bar "|."
}

left = {
  \global
  \clef bass

  d4 <f a> <f a> |
  a4 <e' g'> <e' g'> |
  a4 <cis' e'> <cis' e'> |
  a4 <c' e'> <c' e'> |

  d4 <f a> <f a> |
  g4 <d' f'> <d' f'> |
  a4 <cis' e'> <cis' e'> |
  a4 <c' e'> <c' e'> |

  d4 <f a> <f a> |
  g4 <d' bes'> <d' bes'> |
  d4 <f a> <f a> |
  a4 <cis' e'> <cis' e'> |

  d4 <f a> <f a> |
  f4 <c' a'> <c' a'> |
  a4 <cis' e'> <cis' e'> |
  d2. \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "right" \right
    \new Staff = "left" \left
  >>
  \layout { }
  \midi { }
}