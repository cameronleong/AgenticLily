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
| 夜隠染 (Yokaze) | MyGO!!!!! | `MyGO!!!!!/yokaze/` | In progress — bars 1–55 mapped, rhythm `q (e.s) (sse) (ess)` applied to all bars except placeholders 23, 24, 30, 33, 34, 35, 54, 55 |
