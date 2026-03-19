\version "2.24.4"
\language "english"

\header {
  title = "Easter Hymn"
  subtitle = "Lyra Davidica, 1708"
  composer = "Setting by Hal H. Hopson"
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}



global = {
  \key d \major
  \time 4/4
  \section
  \sectionLabel "Introduction"
  % Music follows here.
  s1*19
  \break
  \section
  \sectionLabel "Standard Harmonization for Selected Stanzas"
  \repeat volta 2 {
    \textMark "(Brass tacet on next to last stanza)"
    s1*15
    \alternative {
      {
        \textMark "Ending for selected stanzas"
        s1
      }
      {
        \break
        \section
        \sectionLabel "Interlude (Before the last stanza)"
        \textMark "Ending before last stanza"
        s1
      }
    }
  }
  s1*8
  \break
  \section
  \sectionLabel "Reharmonization for Last Stanza with optional Soprano Descant"
  s1*16
  \fine
}

scoreATrumpetBbI = \relative c'' {
  R1*2 |
  a8-- fs-- g-- a->~ a-- c-- d-- e-- |
  f-- e-- d-- e--~ e4 d-- |
  b2 r |
  R1 |
  fs'4. e8->~ e2 |
  fs4. d8->~ d4 b-- |
  a2 r |
  R1 |
  cs8-- d-- e-- f->~ f f-- g-- a-- |
  g8--d-- e-- fs->~ fs4 e-- |
  cs2 r |
  R1 |
  fs4. e8->~ e2 |
  fs4.-- d8->~ d4 cs |
  d2 r |
  r8 d-- e-- a,-- fs'-- e-- d-- fs->~ |
  fs4 d-- a'2->\fermata |
  \repeat volta 2 {
    d,,4 fs a d, |
    g b b a \breathe |
    fs8 g a d, g4 fs8 g |
    fs4 e d2 \breathe|
    g4 a b a |
    g fs fs e \breathe |
    fs8 g a d, g4 fs8 g |
    fs4 e d2 \breathe |
    cs'4 d e a, |
    d e fs2 \breathe |
    cs8 d e a, d4 cs8 d |
    cs4 b a2 \breathe |
    a8 b cs a d4 fs, |
    g b b a \breathe |
    d8 cs d a b cs d e |
    \alternative {
      {
        d4 cs d2\fermata |
      }
      {
        R1
      }
    }
  }
  a8( d)-. e-. fs-~ fs4 d-- |
  a'1 \breathe |
  e4. e16-. e-. fs8( e) r8 e16-. e-. |
  d8( e) fs-.g--~ g2 \breathe |
  e8( fs) g-. a8--~ a2 \breathe |
  d,8( cs) d-. e-. fs( e) fs-. a-. |
  e4 d2 cs4 |
  d1\fermata
  fs1 |
  g2. a4 \breathe |
  fs2 g4 fs8 g |
  a4. g8 fs2 \breathe |
  d1 |
  e4. d8 d4 cs \breathe |
  d1~ |
  d4 cs cs2 \breathe |
  e4 fs g e |
  fs g a fs |
  e2 d4 r8 fs|
  e( fs)-. e-. d-. cs( d)-. e-. d-. |
  cs( d)-. e-. cs-. fs( g)-. a-. fs-. |
  g( fs)-. g-. a-. g( fs)-. e-. a-. |
  fs( e)-. fs-. d-. g( fs)-. g-. e-. |
  a( b a g) fs2\fermata |


}

scoreATrumpetBbII = \relative c' {

  R1*2 |
  fs8-- d-- e-- fs->~ fs e4. |
  d4 f8-- e--~ e4 fs-- |
  g2 r |
  R1 |
  a4. g8->~ g2 |
  a4. a8->~ a4 gs-- |
  a2 r |
  R1 |
  a8-- b-- cs-- a->~ a2 |
  b4. a8->~ a4 gs-- |
  a2 r |
  R1 |
  a4. g8->~ g2 |
  a4.-- b8->~ b4 a |
  a2 r |
  r8 fs-- a-- a-- d-- a-- fs-- d'->~ |
  d4 d-- d2->\fermata |

  \repeat volta 2 {
    d,2 e4 d~ |
    d g g fs |
    d2~ d8 cs d4~ |
    d cs d2 \breathe |
    d1~ |
    d8 cs d4 d cs \breathe |
    d2~ d8 cs d4~ |
    d cs d2 \breathe |
    a'4. gs8 a2~ |
    a4 g fs2 \breathe |
    a2~ a8 gs a4~ |
    a gs a2 \breathe |
    cs,8 d e cs d2~ |
    d4 g g fs \breathe |
    fs8 g a fs g4 fs8 g |
    \alternative {
      {
        fs4 a8 g fs2\fermata |
      }
      {
        R1
      }
    }
  }
  a8( d)-. a-. d~ d4 a-- |
  d1 \breathe |
  a4. a16-. a-. d8( a) r8 a16-. a-. |
  b4 a8-. b--~ b2 \breathe |
  cs4 b8-. cs--~ cs2 \breathe |
  b8( a) b-. cs-. d( cs) d-. fs-. |
  b,2 a |
  a1\fermata |
  a1 |
  d2. cs4 \breathe |
  a2 d~ |
  d4 cs d2 \breathe |
  g,4 a b a |
  g a b a \breathe |
  a2 g4 fs8 g |
  a4 g fs2 \breathe |
  a1~ |
  a4 cs d gs, |
  a2 fs4 r8 d'8 |
  cs( d)-. cs-. b-. a( b)-. cs-. b-. |
  a( b)-. cs-. a-. d(-. e)-. fs-. d-. |
  e( d)-. e-. fs-. e(-. d)-. cs-. fs-. |
  d( cs)-. d-. b-. e( d)-. e-. cs-. |
  fs( g b, cs) d2\fermata |
}

% --- 1. DEFINE THE STAVES (No global here!) ---
scoreATrumpetBbIPart = \new Staff \with {
  instrumentName = "Tpt in Bb I"
  midiInstrument = "trumpet"
} { \scoreATrumpetBbI } 

scoreATrumpetBbIIPart = \new Staff \with {
  instrumentName = "Tpt in Bb II"
  midiInstrument = "trumpet"
} { \scoreATrumpetBbII }

% --- THE FULL SCORE ---
\book {
  \bookOutputSuffix "Trumpets"
  \header { instrument = "Trumpets in Bb" }
  \score {
    <<
      % Put \global ONLY in the first staff. The Score context will catch 
      % the breaks and text marks and apply them to the whole system.
      \new Staff \with { 
        instrumentName = "Tpt in Bb I" 
        midiInstrument = "trumpet"
      } << \global \scoreATrumpetBbI >>
      
      % Trumpet II gets no \global here, so marks aren't duplicated!
      \new Staff \with { 
        instrumentName = "Tpt in Bb II" 
        midiInstrument = "trumpet"
      } \scoreATrumpetBbII
    >>
    \layout { }
  }
}

% --- TRUMPET I PART ---
\book {
  \bookOutputSuffix "Trumpet_1"
  \header { instrument = "Trumpet in Bb I" }
  \score {
    \new Staff \with { midiInstrument = "trumpet" } << \global \scoreATrumpetBbI >>
    \layout { }
  }
}

% --- TRUMPET II PART ---
\book {
  \bookOutputSuffix "Trumpet_2"
  \header { instrument = "Trumpet in Bb II" }
  \score {
    \new Staff \with { midiInstrument = "trumpet" } << \global \scoreATrumpetBbII >>
    \layout { }
  }
}

% --- MIDI GENERATION ---
\book {
  \score {
    <<
      % For MIDI, putting global in the top staff is enough to trigger the repeats
      \new Staff \with { midiInstrument = "trumpet" } << \global \transpose bf c \scoreATrumpetBbI >>
      \new Staff \with { midiInstrument = "trumpet" } \transpose bf c \scoreATrumpetBbII
    >>
    \midi { \tempo 4=100 }
  }
}
