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
```

---

## LilyPond Pitch Mappings (sounding pitch, treble_8 clef)

| Chord  | LilyPond                  | Strings      | Frets |
|--------|---------------------------|--------------|-------|
| G5     | `<g,\6 d\5>`              | E:6, A:5     | 3, 5  |
| F5     | `<f,\6 c\5>`              | E:6, A:5     | 1, 3  |
| Eb5    | `<ees\5 bes\4>`           | A:5, D:4     | 6, 8  |
| Bb5    | `<bes,\6 f\5>`            | E:6, A:5     | 6, 8  |

---

## Song Structure

**Bar numbering is continuous throughout the song.**

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

---

## Section Analysis Notes

- **Intro/Verse:** vi–V–IV–I descending (or i–VII–VI–III in G minor). Power chords keep tonality ambiguous.
- **Bridge 1:** iim7–IVm7–Imaj7–vim7. Ebm7 is borrowed from parallel minor (IVm7). Ends on dominant hold (F5×2).
- **Chorus:** IV–I–V–vi ascending. Same pitch centres as intro but reordered — more energetic. D/F# in bar 30 is a chromatic bass passing note (F→F#→G).
- **Solo 1:** I/IV–vim7–V–I. Fully diatonic, no borrowed chords. First explicit appearance of major quality (Fmaj, Bb). Ends on dominant hold.
- **Overall arc:** Power chord ambiguity (intro/verse) → harmonic clarity and complexity (bridge) → energetic openness (chorus) → diatonic resolution (solo).

---

## Rhythm

Confirmed pattern: `q (e.s) (sse) (ess)` — applied to all bars except placeholders listed below.

**Two-chord bars** (split 9/16 + 7/16):
- Chord 1: q e. s s = **9/16**
- Chord 2: s e e s s = **7/16**

**Single-chord bars** (full bar, same rhythm): q e. s s s e e s s = 16/16

**Placeholder bars** (whole rests — rhythm not yet confirmed, will be revisited):
- Bar 23, 24 — Bridge 1 F5 hold
- Bar 30 — Chorus F5 D/F# G5 (three chords, non-standard)
- Bar 33, 34, 35 — Chorus tail (Eb5 Bb5, F5, muted)
- Bar 54, 55 — Solo 1 F5 / F5hi hold
