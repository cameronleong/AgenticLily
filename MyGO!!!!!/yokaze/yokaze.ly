\version "2.24.0"

#(set-global-staff-size 11)

\header {
  title = "夜隠染 (Yokaze)"
  composer = "MyGO!!!!!"
  arranger = "Transcribed by AgenticLily"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  left-margin = 0.5\cm
  right-margin = 0.5\cm
  top-margin = 0.5\cm
  bottom-margin = 0.5\cm
}

% ── Music bar variables ──────────────────────────────────────────────────────
% Rhythm: q (e.s) (sse) (ess)
% Two-chord split: chord1 = 9/16 (q e. s s), chord2 = 7/16 (s e e s s)
% Single chord:    q e. s s s e e s s  =  4+3+1+1+1+2+2+1+1 = 16/16

% G5 – F5
barGF = {
  <g,\6 d\5>4 <g,\6 d\5>8. <g,\6 d\5>16
  <g,\6 d\5>16 <f,\6 c\5>16 <f,\6 c\5>8 <f,\6 c\5>8 <f,\6 c\5>16 <f,\6 c\5>16 |
}

% Eb5 – Bb5
barEbBb = {
  <ees\5 bes\4>4 <ees\5 bes\4>8. <ees\5 bes\4>16
  <ees\5 bes\4>16 <bes,\6 f\5>16 <bes,\6 f\5>8 <bes,\6 f\5>8 <bes,\6 f\5>16 <bes,\6 f\5>16 |
}

% F5 – G5
barFG = {
  <f,\6 c\5>4 <f,\6 c\5>8. <f,\6 c\5>16
  <f,\6 c\5>16 <g,\6 d\5>16 <g,\6 d\5>8 <g,\6 d\5>8 <g,\6 d\5>16 <g,\6 d\5>16 |
}

% F5 – F5hi  [A:8/D:10 voicing]
barFFhi = {
  <f,\6 c\5>4 <f,\6 c\5>8. <f,\6 c\5>16
  <f,\6 c\5>16 <f\5 c'\4>16 <f\5 c'\4>8 <f\5 c'\4>8 <f\5 c'\4>16 <f\5 c'\4>16 |
}

% Cm7  [-35343]
barCmvii = {
  <c\5 g\4 bes\3 ees'\2 g'\1>4
  <c\5 g\4 bes\3 ees'\2 g'\1>8.
  <c\5 g\4 bes\3 ees'\2 g'\1>16
  <c\5 g\4 bes\3 ees'\2 g'\1>16
  <c\5 g\4 bes\3 ees'\2 g'\1>16
  <c\5 g\4 bes\3 ees'\2 g'\1>8
  <c\5 g\4 bes\3 ees'\2 g'\1>8
  <c\5 g\4 bes\3 ees'\2 g'\1>16
  <c\5 g\4 bes\3 ees'\2 g'\1>16 |
}

% Ebm7  [-68676]
barEbmvii = {
  <ees\5 bes\4 des'\3 ges'\2 bes'\1>4
  <ees\5 bes\4 des'\3 ges'\2 bes'\1>8.
  <ees\5 bes\4 des'\3 ges'\2 bes'\1>16
  <ees\5 bes\4 des'\3 ges'\2 bes'\1>16
  <ees\5 bes\4 des'\3 ges'\2 bes'\1>16
  <ees\5 bes\4 des'\3 ges'\2 bes'\1>8
  <ees\5 bes\4 des'\3 ges'\2 bes'\1>8
  <ees\5 bes\4 des'\3 ges'\2 bes'\1>16
  <ees\5 bes\4 des'\3 ges'\2 bes'\1>16 |
}

% Bbmaj7  [6x776-]
barBbmajVII = {
  <bes,\6 a\4 d'\3 f'\2>4
  <bes,\6 a\4 d'\3 f'\2>8.
  <bes,\6 a\4 d'\3 f'\2>16
  <bes,\6 a\4 d'\3 f'\2>16
  <bes,\6 a\4 d'\3 f'\2>16
  <bes,\6 a\4 d'\3 f'\2>8
  <bes,\6 a\4 d'\3 f'\2>8
  <bes,\6 a\4 d'\3 f'\2>16
  <bes,\6 a\4 d'\3 f'\2>16 |
}

% Gm7  [3x333-]
barGmvii = {
  <g,\6 f\4 bes\3 d'\2>4
  <g,\6 f\4 bes\3 d'\2>8.
  <g,\6 f\4 bes\3 d'\2>16
  <g,\6 f\4 bes\3 d'\2>16
  <g,\6 f\4 bes\3 d'\2>16
  <g,\6 f\4 bes\3 d'\2>8
  <g,\6 f\4 bes\3 d'\2>8
  <g,\6 f\4 bes\3 d'\2>16
  <g,\6 f\4 bes\3 d'\2>16 |
}

% F5 full bar (single chord)
barFpow = {
  <f,\6 c\5>4 <f,\6 c\5>8. <f,\6 c\5>16
  <f,\6 c\5>16 <f,\6 c\5>16 <f,\6 c\5>8 <f,\6 c\5>8 <f,\6 c\5>16 <f,\6 c\5>16 |
}

% Bb/Eb  [-68766]
barBbEb = {
  <ees\5 bes\4 d'\3 f'\2 bes'\1>4
  <ees\5 bes\4 d'\3 f'\2 bes'\1>8.
  <ees\5 bes\4 d'\3 f'\2 bes'\1>16
  <ees\5 bes\4 d'\3 f'\2 bes'\1>16
  <ees\5 bes\4 d'\3 f'\2 bes'\1>16
  <ees\5 bes\4 d'\3 f'\2 bes'\1>8
  <ees\5 bes\4 d'\3 f'\2 bes'\1>8
  <ees\5 bes\4 d'\3 f'\2 bes'\1>16
  <ees\5 bes\4 d'\3 f'\2 bes'\1>16 |
}

% Fmaj  [133211]
barFmaj = {
  <f,\6 c\5 f\4 a\3 c'\2 f'\1>4
  <f,\6 c\5 f\4 a\3 c'\2 f'\1>8.
  <f,\6 c\5 f\4 a\3 c'\2 f'\1>16
  <f,\6 c\5 f\4 a\3 c'\2 f'\1>16
  <f,\6 c\5 f\4 a\3 c'\2 f'\1>16
  <f,\6 c\5 f\4 a\3 c'\2 f'\1>8
  <f,\6 c\5 f\4 a\3 c'\2 f'\1>8
  <f,\6 c\5 f\4 a\3 c'\2 f'\1>16
  <f,\6 c\5 f\4 a\3 c'\2 f'\1>16 |
}

% Bb  [-1333-]
barBb = {
  <bes,\5 f\4 bes\3 d'\2>4
  <bes,\5 f\4 bes\3 d'\2>8.
  <bes,\5 f\4 bes\3 d'\2>16
  <bes,\5 f\4 bes\3 d'\2>16
  <bes,\5 f\4 bes\3 d'\2>16
  <bes,\5 f\4 bes\3 d'\2>8
  <bes,\5 f\4 bes\3 d'\2>8
  <bes,\5 f\4 bes\3 d'\2>16
  <bes,\5 f\4 bes\3 d'\2>16 |
}

% Placeholder (rhythm pending)
barPh = { r1 | }

% ── Chord name bar variables ─────────────────────────────────────────────────

chGF      = \chordmode { g4:5 g8.:5 g16:5 g16:5 f16:5 f8:5 f8:5 f16:5 f16:5 | }
chEbBb    = \chordmode { ees4:5 ees8.:5 ees16:5 ees16:5 bes16:5 bes8:5 bes8:5 bes16:5 bes16:5 | }
chFG      = \chordmode { f4:5 f8.:5 f16:5 f16:5 g16:5 g8:5 g8:5 g16:5 g16:5 | }
chFFhi    = \chordmode { f4:5 f8.:5 f16:5 f16:5 f16:5 f8:5 f8:5 f16:5 f16:5 | }
chCmvii   = \chordmode { c1:m7 | }
chEbmvii  = \chordmode { ees1:m7 | }
chBbmajVII = \chordmode { bes1:maj7 | }
chGmvii   = \chordmode { g1:m7 | }
chFpow    = \chordmode { f1:5 | }
chBbEb    = \chordmode { bes1/ees | }
chFmaj    = \chordmode { f1 | }
chBb      = \chordmode { bes1 | }
chPh      = \chordmode { s1 | }

chordNames = {
  \key bes \major
  % Intro (1–8)
  \chGF \chEbBb \chGF \chEbBb
  \chGF \chEbBb \chGF \chEbBb
  % Verse 1 (9–16)
  \chGF \chEbBb \chGF \chEbBb
  \chGF \chEbBb \chGF \chEbBb
  % Bridge 1 (17–24)
  \chCmvii \chEbmvii \chBbmajVII \chGmvii
  \chCmvii \chEbmvii \chPh \chPh
  % Chorus (25–35)
  \chEbBb \chFG \chEbBb \chFFhi
  \chEbBb \chPh \chEbBb \chFpow
  \chPh \chPh \chPh
  % Fill (36–39)
  \chGF \chEbBb \chGF \chEbBb
  % Verse 2 (40–47)
  \chGF \chEbBb \chGF \chEbBb
  \chGF \chEbBb \chGF \chEbBb
  % Solo 1 (48–55)
  \chBbEb \chGmvii \chFmaj \chBb
  \chBbEb \chGmvii \chPh \chPh
}

music = {
  \key bes \major
  \time 4/4
  \tempo 4 = 112
  % ── Intro (bars 1–8) ────────────────────────────────────────────────────────
  \mark \markup { \bold "Intro" }
  \barGF \barEbBb \barGF \barEbBb \break
  \barGF \barEbBb \barGF \barEbBb \break
  % ── Verse 1 (bars 9–16) ─────────────────────────────────────────────────────
  \mark \markup { \bold "Verse 1" }
  \barGF \barEbBb \barGF \barEbBb \break
  \barGF \barEbBb \barGF \barEbBb \break
  % ── Bridge 1 (bars 17–24) ───────────────────────────────────────────────────
  \mark \markup { \bold "Bridge 1" }
  \barCmvii \barEbmvii \barBbmajVII \barGmvii \break
  \barCmvii \barEbmvii \barPh \barPh \break
  % ── Chorus (bars 25–35) ─────────────────────────────────────────────────────
  \mark \markup { \bold "Chorus" }
  \barEbBb \barFG \barEbBb \barFFhi \break
  \barEbBb \barPh \barEbBb \barFpow \break
  \barPh \barPh \barPh \break
  % ── Fill (bars 36–39) ───────────────────────────────────────────────────────
  \mark \markup { \bold "Fill" }
  \barGF \barEbBb \barGF \barEbBb \break
  % ── Verse 2 (bars 40–47) ────────────────────────────────────────────────────
  \mark \markup { \bold "Verse 2" }
  \barGF \barEbBb \barGF \barEbBb \break
  \barGF \barEbBb \barGF \barEbBb \break
  % ── Solo 1 (bars 48–55) ─────────────────────────────────────────────────────
  \mark \markup { \bold "Solo 1" }
  \barBbEb \barGmvii \barFmaj \barBb \break
  \barBbEb \barGmvii \barPh \barPh
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordNames
    }
    \new StaffGroup <<
      \new Staff {
        \clef "treble_8"
        \override Staff.StringNumber.stencil = ##f
        \music
      }
      \new TabStaff \music
    >>
  >>
  \layout {
    \context {
      \Score
      barNumberVisibility = #all-bar-numbers-visible
    }
  }
}
