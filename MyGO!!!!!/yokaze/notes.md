# 夜隠染 (Yokaze) — Transcription Notes

**Artist:** MyGO!!!!!
**BPM:** 112
**Time Signature:** 4/4
**Key:** Bb major (2 flats)

---

## Chord Voicing Dictionary

### Power Chords
```
G5 (35----)     F5 (13----)     Eb5 (-68---)    Bb5 (68----)
e|--            e|--            e|--            e|--
B|--            B|--            B|--            B|--
G|--            G|--            G|--            G|--
D|--            D|--            D|--8           D|--
A|--5           A|--3           A|--6           A|--8
E|--3           E|--1           E|--            E|--6

F5(hi) (-8"10"---)    D/F# (25----)
e|--                  e|--
B|--                  B|--
G|--                  G|--
D|--10                D|--
A|--8                 A|--5
E|--                  E|--2
```

### Full Chords
```
Cm7 (-35343)    Ebm7 (-68676)   Bb/Eb (-68766)  Bbmaj7 (6x776-)
e|--3           e|--6           e|--6           e|--
B|--4           B|--7           B|--6           B|--6
G|--3           G|--6           G|--7           G|--7
D|--5           D|--8           D|--8           D|--7
A|--3           A|--6           A|--6           A|--x
E|--            E|--            E|--            E|--6

Gm7 (3x333-)    Fmaj (133211)   Bb (-1333-)
e|--            e|--1           e|--
B|--3           B|--1           B|--3
G|--3           G|--2           G|--3
D|--3           D|--3           D|--3
A|--x           A|--3           A|--1
E|--3           E|--1           E|--

Gbmaj (244322)  Dbmaj (-4666-)  Bbm7 (-13121)   Amaj (577655)
e|--2           e|--            e|--1           e|--5
B|--2           B|--6           B|--2           B|--5
G|--3           G|--6           G|--1           G|--6
D|--4           D|--6           D|--3           D|--7
A|--4           A|--4           A|--1           A|--7
E|--2           E|--            E|--            E|--5

Abmaj hi (-[11][13][13][13]-)   Ab5 (466---)    Fm/C (-36---)   Fm/Ab (4x3---)
e|--                            e|--            e|--            e|--
B|--13                          B|--            B|--            B|--
G|--13                          G|--            G|--            G|--
D|--13                          D|--            D|--6           D|--3
A|--11                          A|--6           A|--3           A|--x
E|--                            E|--4           E|--            E|--4
```

---

## LilyPond Pitch Mappings (sounding pitch, treble_8 clef)

| Chord    | LilyPond                  | Strings      | Frets |
|----------|---------------------------|--------------|-------|
| G5       | `<g,\6 d\5>`              | E:6, A:5     | 3, 5  |
| F5       | `<f,\6 c\5>`              | E:6, A:5     | 1, 3  |
| F5(hi)   | `<f\5 c'\4>`              | A:5, D:4     | 8, 10 |
| D/F#     | `<fis,\6 d\5>`            | E:6, A:5     | 2, 5  |
| Eb5      | `<ees\5 bes\4>`           | A:5, D:4     | 6, 8  |
| Bb5      | `<bes,\6 f\5>`            | E:6, A:5     | 6, 8  |
| Ab5      | `<aes,\6 ees\5>`          | E:6, A:5     | 4, 6  |
| Bbmaj7   | `<bes,\6 \tweak style #'cross a,\5 a\4 d'\3 f'\2>` | E:6–B:2 (A muted) | 6,x,7,7,6 |
| Gm7      | `<g,\6 \tweak style #'cross a,\5 f\4 bes\3 d'\2>` | E:6–B:2 (A muted) | 3,x,3,3,3 |
| Gbmaj    | `<ges,\6 des\5 ges\4 bes\3 des'\2 ges'\1>` | all 6 | 2,4,4,3,2,2 |
| Dbmaj    | `<des\5 aes\4 des'\3 f'\2>` | A:5–B:2    | 4,6,6,6   |
| Bbm7     | `<bes,\5 f\4 aes\3 des'\2 f'\1>` | A:5–e:1 | 1,3,1,2,1 |
| Amaj     | `<a,\6 e\5 a\4 des'\3 e'\2 a'\1>` | all 6  | 5,7,7,6,5,5 |
| Abmaj    | `<aes,\6 ees\5 aes\4 c'\3 ees'\2 aes'\1>` | all 6 | 4,6,6,5,4,4 |
| Abmaj hi | `<aes\5 ees'\4 aes'\3 c''\2>` | A:5–B:2  | 11,13,13,13 |
| Fm/C     | `<c\5 aes\4>`             | A:5, D:4     | 3, 6  |
| Fm/Ab    | `<aes,\6 f\4>`            | E:6, D:4     | 4, 3  |
| A5 (B3)  | `<a,\6 e\5>`              | E:6, A:5     | 5, 7  |
| E oct    | `<e,\6 e\5>`              | E:6, A:5     | 0, 7  |
| E5 (B3)  | `<e,\6 e\5 b\4>`          | E:6, A:5, D:4 | 0,7,9 |
| B5 (B3)  | `<b,\6 fis\5>`            | E:6, A:5     | 7, 9  |
| C#5 (B3) | `<cis\6 gis\5>`           | E:6, A:5     | 9, 11 |

---

## Song Structure

**Bar numbering is continuous throughout the song. Last mapped: bar 69 (Bridge 3).**

### Intro (Bars 1–8)
Pattern: G5 F5 | Eb5 Bb5 (×4)

| Bar | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|-----|---|---|---|---|---|---|---|---|
| | G5 F5 | Eb5 Bb5 | G5 F5 | Eb5 Bb5 | G5 F5 | Eb5 Bb5 | G5 F5 | Eb5 Bb5 |

### Verse 1 (Bars 9–16)
Identical to Intro.

### Bridge 1 (Bars 17–24)

| Bar | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 |
|-----|----|----|----|----|----|----|----|----|
| | Cm7 | Ebm7 | Bbmaj7 | Gm7 | Cm7 | Ebm7 | F5 | F5 |

### Chorus (Bars 25–35)

| Bar | 25 | 26 | 27 | 28 | 29 | 30 | 31 | 32 | 33 | 34 | 35 |
|-----|----|----|----|----|----|----|----|----|----|----|----|
| | Eb5 Bb5 | F5 G5 | Eb5 Bb5 | F5 F5(hi) | Eb5 Bb5 | F5 D/F# G5 | Eb5 Bb5 | F5 | Eb5 Bb5 | F5 | muted |

### Fill (Bars 36–39)
Bars 1–4 of Intro repeated.

### Verse 2 (Bars 40–47)
Identical to Verse 1.

### Solo 1 (Bars 48–55)

| Bar | 48 | 49 | 50 | 51 | 52 | 53 | 54 | 55 |
|-----|----|----|----|----|----|----|----|----|
| | Bb/Eb | Gm7 | Fmaj | Bb | Bb/Eb | Gm7 | F5 | F5(hi) |

### Bridge 2 (Bars 56–64)
Key: Bb minor (5 flats)

| Bar | 56 | 57 | 58 | 59 | 60 | 61 | 62 | 63 | 64 |
|-----|----|----|----|----|----|----|----|----|-----|
| | Gbmaj | Abmaj | Dbmaj Fm | Bbm7 Fm | Gbmaj | Abmaj | Amaj | Ab5/Ab bass/Abmaj | Abmaj |

### Bridge 3 (Bars 65–)
Key: C#m (4 sharps — F#, C#, G#, D#)

| Bar | 65 | 66 | 67 | 68 | 69 |
|-----|----|----|----|----|----|
| | A5→E5 | B5→C#5 | A5→E5 | B5 (driving) | A5→E5 (ending variant) |

---

## Bridge 2 Rhythm

**Bar 56** — Gbmaj: `(ee)e rq. [xxxxxx](ses)`
**Bar 57** — Abmaj: same rhythm as bar 56
**Bar 58** — Dbmaj → Fm: `q (ess)(ss [Fm]e) (ess)` — chord change mid-beam at 10/16
**Bar 59** — Bbm7 → Fm: same rhythm as bar 58
**Bar 60** — Gbmaj: `(ee) e re [xxxxxx](ses)(ses)`
**Bar 61** — Abmaj: `e e e re [xxxxxx](ses)q`
**Bar 62** — Amaj: `(ee)(ee)(ee)(ee)`
**Bar 63** — Ab5 → Ab bass (PM ×3) → Ab bass → Abmaj: `(e [4-----]e) [4-----](ee) [4-----](e [Abmaj]eee)` — palm mute first three `[4-----]`
**Bar 64** — Abmaj `h~q` (tied, 3 beats) + `[xxxxxx]q` slide down

---

## Section Analysis Notes

- **Intro/Verse:** vi–V–IV–I descending (or i–VII–VI–III in G minor). Power chords keep tonality ambiguous.
- **Bridge 1:** iim7–IVm7–Imaj7–vim7. Ebm7 is borrowed from parallel minor (IVm7). Ends on dominant hold (F5×2).
- **Chorus:** IV–I–V–vi ascending. Same pitch centres as intro but reordered — more energetic. D/F# in bar 30 is a chromatic bass passing note (F→F#→G).
- **Solo 1:** I/IV–vim7–V–I. Fully diatonic, no borrowed chords. First explicit appearance of major quality (Fmaj, Bb). Ends on dominant hold.
- **Overall arc:** Power chord ambiguity (intro/verse) → harmonic clarity and complexity (bridge) → energetic openness (chorus) → diatonic resolution (solo).
- **Bridge 2:** Key shift to Bb minor (5 flats). Opens with bVI–bVII (Gbmaj–Abmaj), then bIII–v (Dbmaj–Fm), repeating. Bar 62 introduces chromatic Amaj (VII♮, outside the key). Bar 63 builds tension on bVII (Ab) before bar 64 resolves to a sustained Abmaj with a slide-down release.
- **Bridge 3:** Key shift to C#m (4 sharps). Palm-muted power chord riff. Core pattern (bars 65, 67): A5→E5 (VI→III). Alternates with B5→C#5 (bar 66: VII→I) and a B5 driving bar (bar 68: q + sse×2). Bar 69 reprises the A5→E5 pattern with ending variant — last group is (ess): E5 eighth + E octave sixteenth pair (PM).

---

## Rhythm

Confirmed pattern: `q (e.s) (sse) (ess)` — applied to all bars except placeholders listed below.

**Two-chord bars** (split 9/16 + 7/16):
- Chord 1: q e. s s = **9/16**
- Chord 2: s e e s s = **7/16**

**Single-chord bars** (full bar, same rhythm): q e. s s s e e s s = 16/16

**Bar 23** — Bridge 1, F5 hold:
- `[13----]q` — F5
- `[1-----](ee)` — F bass (PM)
- `[1-----](ee)` — F bass (PM on 1st of pair, not 2nd)
- `[13----](ee)` — F5

**Bar 24** — Bridge 1, F5 hold:
- `[13----](s s rs s)` — F5
- `[13----](s rs s s)` — F5
- `re` — eighth rest
- `[xxxxxx]e` — muted chord
- `([xxxxxx]s [13----]e.)` — muted s + F5 dotted-eighth

**Bar 30** — Chorus, F5 → D/F# → G5:
- `[F5](ess)`
- `[D/F#](ess)`
- `[G5]q` — G5 quarter
- `[G5](ess)` — G5 re-attack

**Bar 33** — Chorus tail, Eb5 → Bb5:
- `[Eb5]h [Bb5]h`

**Bar 34** — Chorus tail, F5:
- `[13----](e [1-----]e)` — F5 e + F bass e (PM)
- `[1-----](e [13----]e)` — F bass e (PM) + F5 e
- `[13----]e` — F5 eighth
- `rq.` — dotted quarter rest

**Bar 35** — Chorus tail, muted:
- `rh re` — half rest + eighth rest
- `[xxxxxx](ss)` — muted sixteenth pair
- `[xxxxxx]q` — muted quarter

**Bar 54** — Solo 1, F5 hold:
- `(ee) (ee) (ee) (ee)[slide up]` — four beamed eighth pairs, slide up on last group

**Bar 55** — Solo 1, F5(hi) hold:
- `(ess) (sse) (ssss) (ess)`
