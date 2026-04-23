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
  <bes,\6 \tweak style #'cross a,\5 a\4 d'\3 f'\2>4
  <bes,\6 \tweak style #'cross a,\5 a\4 d'\3 f'\2>8.
  <bes,\6 \tweak style #'cross a,\5 a\4 d'\3 f'\2>16
  <bes,\6 \tweak style #'cross a,\5 a\4 d'\3 f'\2>16
  <bes,\6 \tweak style #'cross a,\5 a\4 d'\3 f'\2>16
  <bes,\6 \tweak style #'cross a,\5 a\4 d'\3 f'\2>8
  <bes,\6 \tweak style #'cross a,\5 a\4 d'\3 f'\2>8
  <bes,\6 \tweak style #'cross a,\5 a\4 d'\3 f'\2>16
  <bes,\6 \tweak style #'cross a,\5 a\4 d'\3 f'\2>16 |
}

% Gm7  [3x333-]
barGmvii = {
  <g,\6 \tweak style #'cross a,\5 f\4 bes\3 d'\2>4
  <g,\6 \tweak style #'cross a,\5 f\4 bes\3 d'\2>8.
  <g,\6 \tweak style #'cross a,\5 f\4 bes\3 d'\2>16
  <g,\6 \tweak style #'cross a,\5 f\4 bes\3 d'\2>16
  <g,\6 \tweak style #'cross a,\5 f\4 bes\3 d'\2>16
  <g,\6 \tweak style #'cross a,\5 f\4 bes\3 d'\2>8
  <g,\6 \tweak style #'cross a,\5 f\4 bes\3 d'\2>8
  <g,\6 \tweak style #'cross a,\5 f\4 bes\3 d'\2>16
  <g,\6 \tweak style #'cross a,\5 f\4 bes\3 d'\2>16 |
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

% Bar 23 — F5 hold, palm-muted F-bass runs
barTwentyThree = {
  <f,\6 c\5>4
  \override TextSpanner.bound-details.left.text = \markup { \small \bold "P.M." }
  \palmMuteOn f,8\6\startTextSpan f,8\6 f,8\6\stopTextSpan \palmMuteOff f,8\6
  <f,\6 c\5>8 <f,\6 c\5>8 |
}

% Bar 24 — F5 hold, sixteenth syncopation into muted resolve
barTwentyFour = {
  <f,\6 c\5>16 <f,\6 c\5>16 r16 <f,\6 c\5>16
  <f,\6 c\5>16 r16 <f,\6 c\5>16 <f,\6 c\5>16
  r8
  \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>8
  \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>16 <f,\6 c\5>8. |
}

% Bar 30 — F5 D/F# G5
barThirty = {
  <f,\6 c\5>8 <f,\6 c\5>16 <f,\6 c\5>16
  <fis,\6 d\5>8 <fis,\6 d\5>16 <fis,\6 d\5>16
  <g,\6 d\5>4
  <g,\6 d\5>8 <g,\6 d\5>16 <g,\6 d\5>16 |
}

% Bar 33 — Eb5 Bb5 half notes
barThirtyThree = {
  <ees\5 bes\4>2 <bes,\6 f\5>2 |
}

% Bar 34 — F5 with palm-muted F-bass alternation
barThirtyFour = {
  <f,\6 c\5>8
  \override TextSpanner.bound-details.left.text = \markup { \small \bold "P.M." }
  \palmMuteOn f,8\6\startTextSpan f,8\6\stopTextSpan \palmMuteOff
  <f,\6 c\5>8 <f,\6 c\5>8 r4. |
}

% Bar 35 — muted
barThirtyFive = {
  r2 r8
  \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>16 \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>16
  \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>4 |
}

% Bar 54 — F5 hold, slide up to F5hi
barFiftyFour = {
  <f,\6 c\5>8 <f,\6 c\5>8 <f,\6 c\5>8 <f,\6 c\5>8
  <f,\6 c\5>8 <f,\6 c\5>8 <f,\6 c\5>8 <f,\6 c\5>8\glissando |
}

% Bar 55 — F5hi rhythmic figure
barFiftyFive = {
  <f\5 c'\4>8 <f\5 c'\4>16 <f\5 c'\4>16
  <f\5 c'\4>16 <f\5 c'\4>16 <f\5 c'\4>8
  <f\5 c'\4>16 <f\5 c'\4>16 <f\5 c'\4>16 <f\5 c'\4>16
  <f\5 c'\4>8 <f\5 c'\4>16 <f\5 c'\4>16 |
}

% ── Bridge 2 bar variables (Bb minor) ────────────────────────────────────────

% Bar 56 — Gbmaj
barFiftySix = {
  <ges,\6 des\5 ges\4 bes\3 des'\2 ges'\1>8
  <ges,\6 des\5 ges\4 bes\3 des'\2 ges'\1>8
  <ges,\6 des\5 ges\4 bes\3 des'\2 ges'\1>8
  r4.
  \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>16 \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>8 \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>16 |
}

% Bar 57 — Abmaj (same rhythm as bar 56)
barFiftySeven = {
  <aes,\6 ees\5 aes\4 c'\3 ees'\2 aes'\1>8
  <aes,\6 ees\5 aes\4 c'\3 ees'\2 aes'\1>8
  <aes,\6 ees\5 aes\4 c'\3 ees'\2 aes'\1>8
  r4.
  \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>16 \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>8 \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>16 |
}

% Bar 58 — Dbmaj → Fm
barFiftyEight = {
  <des\5 aes\4 des'\3 f'\2>4
  <des\5 aes\4 des'\3 f'\2>8 <des\5 aes\4 des'\3 f'\2>16 <des\5 aes\4 des'\3 f'\2>16
  <des\5 aes\4 des'\3 f'\2>16 <des\5 aes\4 des'\3 f'\2>16 <c\5 aes\4>8
  <c\5 aes\4>8 <c\5 aes\4>16 <c\5 aes\4>16 |
}

% Bar 59 — Bbm7 → Fm
barFiftyNine = {
  <bes,\5 f\4 aes\3 des'\2 f'\1>4
  <bes,\5 f\4 aes\3 des'\2 f'\1>8 <bes,\5 f\4 aes\3 des'\2 f'\1>16 <bes,\5 f\4 aes\3 des'\2 f'\1>16
  <bes,\5 f\4 aes\3 des'\2 f'\1>16 <bes,\5 f\4 aes\3 des'\2 f'\1>16 <aes,\6 \tweak style #'cross a,\5 f\4>8
  <aes,\6 \tweak style #'cross a,\5 f\4>8 <aes,\6 \tweak style #'cross a,\5 f\4>16 <aes,\6 \tweak style #'cross a,\5 f\4>16 |
}

% Bar 60 — Gbmaj
barSixty = {
  <ges,\6 des\5 ges\4 bes\3 des'\2 ges'\1>8
  <ges,\6 des\5 ges\4 bes\3 des'\2 ges'\1>8
  <ges,\6 des\5 ges\4 bes\3 des'\2 ges'\1>8
  r8
  \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>16 \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>8 \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>16
  \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>16 \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>8 \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>16 |
}

% Bar 61 — Abmaj
barSixtyOne = {
  <aes,\6 ees\5 aes\4 c'\3 ees'\2 aes'\1>8
  <aes,\6 ees\5 aes\4 c'\3 ees'\2 aes'\1>8
  <aes,\6 ees\5 aes\4 c'\3 ees'\2 aes'\1>8
  r8
  \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>16 \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>8 \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>16
  \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>4 |
}

% Bar 62 — Amaj
barSixtyTwo = {
  <a,\6 e\5 a\4 des'\3 e'\2 a'\1>8 <a,\6 e\5 a\4 des'\3 e'\2 a'\1>8
  <a,\6 e\5 a\4 des'\3 e'\2 a'\1>8 <a,\6 e\5 a\4 des'\3 e'\2 a'\1>8
  <a,\6 e\5 a\4 des'\3 e'\2 a'\1>8 <a,\6 e\5 a\4 des'\3 e'\2 a'\1>8
  <a,\6 e\5 a\4 des'\3 e'\2 a'\1>8 <a,\6 e\5 a\4 des'\3 e'\2 a'\1>8 |
}

% Bar 63 — Ab5 → palm-muted Ab bass → Abmaj
barSixtyThree = {
  <aes,\6 ees\5>8
  \override TextSpanner.bound-details.left.text = \markup { \small \bold "P.M." }
  \palmMuteOn aes,8\6\startTextSpan aes,8\6 aes,8\6\stopTextSpan \palmMuteOff
  aes,8\6
  <aes,\6 ees\5 aes\4 c'\3 ees'\2 aes'\1>8
  <aes,\6 ees\5 aes\4 c'\3 ees'\2 aes'\1>8
  <aes,\6 ees\5 aes\4 c'\3 ees'\2 aes'\1>8 |
}

% Bar 64 — Abmaj tied (h~q) + muted slide down
barSixtyFour = {
  <aes\5 ees'\4 aes'\3 c''\2>2~
  <aes\5 ees'\4 aes'\3 c''\2>4
  \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>4\bendAfter #-5 |
}

% Bar 65 — A note → A5 → E octave → E5 (VI → III in C#m)
barSixtyFive = {
  \override TextSpanner.bound-details.left.text = \markup { \small \bold "P.M." }
  \palmMuteOn a,8\6\startTextSpan a,8\6\stopTextSpan \palmMuteOff
  <a,\6 e\5>8. <a,\6 e\5>16
  \override TextSpanner.bound-details.left.text = \markup { \small \bold "P.M." }
  \palmMuteOn <e,\6 e\5>8\startTextSpan <e,\6 e\5>8\stopTextSpan \palmMuteOff
  <e,\6 e\5 b\4>8. <e,\6 e\5 b\4>16 |
}

% Bar 66 — B note → B5 → C# note → C#5 (VII → I in C#m)
barSixtySix = {
  \override TextSpanner.bound-details.left.text = \markup { \small \bold "P.M." }
  \palmMuteOn b,8\6\startTextSpan b,8\6\stopTextSpan \palmMuteOff
  <b,\6 fis\5>8. <b,\6 fis\5>16
  \override TextSpanner.bound-details.left.text = \markup { \small \bold "P.M." }
  \palmMuteOn cis8\6\startTextSpan cis8\6\stopTextSpan \palmMuteOff
  <cis\6 gis\5>8. <cis\6 gis\5>16 |
}

% Bar 67 — same as bar 65
barSixtySeven = \barSixtyFive

% Bar 68 — B PM pickup → B5 driving q (sse)(sse)
barSixtyEight = {
  \override TextSpanner.bound-details.left.text = \markup { \small \bold "P.M." }
  \palmMuteOn b,8\6\startTextSpan b,8\6\stopTextSpan \palmMuteOff
  <b,\6 fis\5>4
  <b,\6 fis\5>16 <b,\6 fis\5>16 <b,\6 fis\5>8
  <b,\6 fis\5>16 <b,\6 fis\5>16 <b,\6 fis\5>8 |
}

% Bar 69 — A5→E5 (as bar 65) but last (ess): E5 e + E octave ss PM
barSixtyNine = {
  \override TextSpanner.bound-details.left.text = \markup { \small \bold "P.M." }
  \palmMuteOn a,8\6\startTextSpan a,8\6\stopTextSpan \palmMuteOff
  <a,\6 e\5>8. <a,\6 e\5>16
  \override TextSpanner.bound-details.left.text = \markup { \small \bold "P.M." }
  \palmMuteOn <e,\6 e\5>8\startTextSpan <e,\6 e\5>8\stopTextSpan \palmMuteOff
  <e,\6 e\5 b\4>8
  \override TextSpanner.bound-details.left.text = \markup { \small \bold "P.M." }
  \palmMuteOn <e,\6 e\5>16\startTextSpan <e,\6 e\5>16\stopTextSpan \palmMuteOff |
}

% Bar 70 — chromatic walk B→Caug→C→C#→C#5, PM on single E-string notes only
barSeventy = {
  \override TextSpanner.bound-details.left.text = \markup { \small \bold "P.M." }
  \palmMuteOn b,8\6\startTextSpan b,8\6\stopTextSpan \palmMuteOff
  <c\6 gis\5>8
  \override TextSpanner.bound-details.left.text = \markup { \small \bold "P.M." }
  \palmMuteOn c8\6\startTextSpan cis8\6 cis8\6\stopTextSpan \palmMuteOff
  <cis\6 gis\5>8 <cis\6 gis\5>16 <cis\6 gis\5>16 |
}

% Bar 71 — PM A pickup (ee) → A5 q → E5/A-string (sse)(ess)
barSeventyOne = {
  \override TextSpanner.bound-details.left.text = \markup { \small \bold "P.M." }
  \palmMuteOn a,8\6\startTextSpan a,8\6\stopTextSpan \palmMuteOff
  <a,\6 e\5>4
  <e\5 b\4>16 <e\5 b\4>16 <e\5 b\4>8
  <e\5 b\4>8 <e\5 b\4>16 <e\5 b\4>16 |
}

% Bar 72 — B5 full bar (ee)(ess)(sse)(ess)
barSeventyTwo = {
  <b,\6 fis\5>8 <b,\6 fis\5>8
  <b,\6 fis\5>8 <b,\6 fis\5>16 <b,\6 fis\5>16
  <b,\6 fis\5>16 <b,\6 fis\5>16 <b,\6 fis\5>8
  <b,\6 fis\5>8 <b,\6 fis\5>16 <b,\6 fis\5>16 |
}

% Bar 73 — Ab5 (ses)(ess) → rq → muted s + F5 e.
barSeventyThree = {
  <aes,\6 ees\5>16 <aes,\6 ees\5>8 <aes,\6 ees\5>16
  <aes,\6 ees\5>8 <aes,\6 ees\5>16 <aes,\6 ees\5>16
  r4
  \deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>16 <f,\6 c\5>8. |
}

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
chThirty    = \chordmode { f4:5 d4/fis g2:5 | }
chEbBbHalf  = \chordmode { ees2:5 bes2:5 | }
chGbmaj     = \chordmode { ges1 | }
chAbmaj     = \chordmode { aes1 | }
chFiftyEight = \chordmode { des2:maj f2:m | }
chFiftyNine  = \chordmode { bes2:m7 f2:m | }
chAmaj      = \chordmode { a1 | }
chSixtyFour = \chordmode { aes2.:maj s4 | }
chSixtyFive  = \chordmode { a2:5 e2:5 | }
chSixtySix   = \chordmode { b2:5 cis2:5 | }
chSixtyEight = \chordmode { b1:5 | }
chSeventy    = \chordmode { b2:5 cis2:5 | }
chSeventyOne = \chordmode { a2:5 e2:5 | }
chSeventyTwo   = \chordmode { b1:5 | }
chSeventyThree = \chordmode { aes2:5 s4 f4:5 | }

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
  \chCmvii \chEbmvii \chFpow \chFpow
  % Chorus (25–35)
  \chEbBb \chFG \chEbBb \chFFhi
  \chEbBb \chThirty \chEbBb \chFpow
  \chEbBbHalf \chFpow \chPh
  % Fill (36–39)
  \chGF \chEbBb \chGF \chEbBb
  % Verse 2 (40–47)
  \chGF \chEbBb \chGF \chEbBb
  \chGF \chEbBb \chGF \chEbBb
  % Solo 1 (48–55)
  \chBbEb \chGmvii \chFmaj \chBb
  \chBbEb \chGmvii \chFpow \chFpow
  % Bridge 2 (56–64)
  \key bes \minor
  \chGbmaj \chAbmaj \chFiftyEight \chFiftyNine
  \chGbmaj \chAbmaj \chAmaj
  \chAbmaj \chSixtyFour
  % Bridge 3 (65–)
  \key cis \minor
  \chSixtyFive \chSixtySix \chSixtyFive \chSixtyEight
  \chSixtyFive \chSeventy \chSeventyOne \chSeventyTwo
  \chSeventyThree
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
  \barCmvii \barEbmvii \barTwentyThree \barTwentyFour \break
  % ── Chorus (bars 25–35) ─────────────────────────────────────────────────────
  \mark \markup { \bold "Chorus" }
  \barEbBb \barFG \barEbBb \barFFhi \break
  \barEbBb \barThirty \barEbBb \barFpow \break
  \barThirtyThree \barThirtyFour \barThirtyFive \break
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
  \barBbEb \barGmvii \barFiftyFour \barFiftyFive \break
  % ── Bridge 2 (bars 56–64) ───────────────────────────────────────────────────
  \mark \markup { \bold "Bridge 2" }
  \key bes \minor
  \barFiftySix \barFiftySeven \barFiftyEight \barFiftyNine \break
  \barSixty \barSixtyOne \barSixtyTwo \barSixtyThree \break
  \barSixtyFour \break
  % ── Bridge 3 (bars 65–) ─────────────────────────────────────────────────────
  \mark \markup { \bold "Bridge 3" }
  \key cis \minor
  \barSixtyFive \barSixtySix \barSixtySeven \barSixtyEight \break
  \barSixtyNine \barSeventy \barSeventyOne \barSeventyTwo \break
  \barSeventyThree
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
