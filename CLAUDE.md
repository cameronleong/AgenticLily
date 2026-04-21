# AgenticLily — Claude Instructions

## Project Overview

AgenticLily is a music transcription workflow. Songs are analysed chord-by-chord via conversation, then rendered as professional sheet music using LilyPond. Each song lives under its own path: `ArtistName/songname/`.

---

## Principles

1. **Accuracy** — never state something unless confident. If unsure, say so explicitly. Do not fill gaps with plausible-sounding information.
2. **No assumptions** — do not assume intent, chord names, or context. Surface ambiguities and ask.
3. **Verify before naming** — always look up official spellings, Japanese titles, and artist stylizations rather than guessing.

---

## Transcription Workflow

1. User keys in chord shapes as tab strings
2. Claude identifies chord names and voicings
3. User specifies rhythm using duration notation
4. Claude generates and compiles LilyPond source to PDF
5. Notes file is maintained per song with full chord dictionary, bar structure, and analysis

---

## Tab Input Convention

- String order: low E → high e (6 characters): e.g. `35----`
- `-` = string not played (skip), `x` = muted (deadened)
- Two-digit frets use quotes: `-8"10"---`
- Slash chords: X/Y means chord X with Y as the lowest (bass) note

---

## Rhythm Notation Convention

| Symbol | Value |
|--------|-------|
| `w` | whole note |
| `h` | half note |
| `q` | quarter note |
| `e` | eighth note |
| `s` | sixteenth note |
| `.` | dotted (×1.5) |
| `~` | tie |
| `()` | beam group |

- Groups can span chord changes: e.g. `(sse)` split as first `s` to chord 1, `se` to chord 2
- Always verify total duration adds up to the bar before writing LilyPond

### Rests

`r` prefix + duration letter: `rs` `re` `rq` `rh` — sixteenth, eighth, quarter, half rest. Dotted: `rq.` = dotted quarter rest.

### Chord shape brackets

Square brackets within a rhythm string specify which voicing to use:

| Form | Meaning |
|------|---------|
| `[13----]q` | Tab shape, quarter note |
| `[1-----](ee)` | Single-string shape, beamed eighths |
| `[F5](ess)` | Chord name, beamed group |
| `[xxxxxx]e` | Fully muted/dead strum, eighth |

When no bracket is given, the bar's primary chord is assumed.

### Re-attack notation

`[G5]q(ess)` — chord struck as a quarter, then re-attacked as a beamed `(ess)` group. Two separate attacks on the same chord within the bar.

### Articulation tags

- `0` in a tab string = open string (e.g. `4660--` = E fret 4, A fret 6, D fret 6, G open)
- Tied note: `h tied into q` or `h~q` — half note tied to quarter (chord held 3 beats); LilyPond: `<chord>2~ <chord>4`
- `(ee)[slide up]` — last note of the group gets `\glissando` to first note of next bar
- `slide down` as trailing articulation on a chord or dead note — rendered as `\bendAfter #-5`
- Palm muting stated as trailing prose: *"palm mute the [1-----]"* — applies to every occurrence of that shape in the bar; rendered as a text spanner:
  ```lilypond
  \override TextSpanner.bound-details.left.text = \markup { \small \bold "P.M." }
  note\startTextSpan note note\stopTextSpan
  ```
  Place the `\override` immediately before the first spanned note. `\palmMuteOn/Off` exists in 2.24 but only changes noteheads to triangles — do not use it.

---

## LilyPond Settings

- **Paper:** A4, 0.5cm margins all sides
- **Staff size:** 11
- **Clef:** `treble_8` (guitar transposition — sounding pitches in source, displayed one octave higher)
- **String numbers:** suppressed (`\override Staff.StringNumber.stencil = ##f`)
- **Chord names:** `\set chordChanges = ##t` (show only on change)
- **Output:** PDF (no `--png` flag)
- **Layout:** 4 bars per line using `\break`, section labels using `\mark \markup { \bold "Section" }`
- **Bar numbers:** `barNumberVisibility = #all-bar-numbers-visible` in `\layout { \context { \Score ... } }`
- **Variable names:** LilyPond identifiers cannot contain digits — use words or Roman numerals (e.g. `barCmvii` not `barCm7`, `barFpow` not `barF5`)
- **Compilation:** `lilypond filename.ly` from the song directory

### Muted strings in tab notation

**Full muted strum (`xxxxxx`):** use all 6 open strings with `\deadNote` — the chord contents don't affect the x display, but all 6 strings must be present:
```lilypond
\deadNote <e,\6 a,\5 d\4 g\3 b\2 e'\1>8
```

**Single muted string within a fretted chord** (e.g. `6x776-`, `3x333-`, `4x3---`): use `\tweak style #'cross` on the muted string's note inside the chord — open string pitch, correct string number:
```lilypond
<bes,\6 \tweak style #'cross a,\5 a\4 d'\3 f'\2>
```
Omitting the muted string entirely shows `-` (gap), not `x`.

---

## File Structure

```
AgenticLily/
├── CLAUDE.md
├── README.md
└── ArtistName/
    └── songname/
        ├── songname.ly     ← LilyPond source
        ├── songname.pdf    ← compiled output
        ├── songname.png    ← PNG snapshot if generated
        └── notes.md        ← chord dictionary, bar structure, analysis
```

---

## Song Notes Files

Each `notes.md` contains:
- Key, BPM, time signature
- Full chord voicing dictionary (tab notation + ASCII diagram)
- LilyPond pitch mappings (sounding pitches + string assignments)
- Complete bar-by-bar progression with section labels
- Per-section harmonic analysis
- Confirmed rhythm patterns

Always read the song's `notes.md` at the start of a session before continuing transcription work.

---

## Active Songs

| Song | Artist | Path | Status |
|------|--------|------|--------|
| 夜隠染 (Yokaze) | MyGO!!!!! | `MyGO!!!!!/yokaze/` | In progress — bars 1–69 mapped. Bridge 3 (65–) in C#m (4 sharps), palm-muted power chord riff. Last mapped: bar 69. |
