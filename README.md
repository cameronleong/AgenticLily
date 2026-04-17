# AgenticLily

![AgenticLily](assets/banner.svg)

A music transcription workflow combining Claude AI with [LilyPond](https://lilypond.org/) to produce professional guitar sheet music from chord analysis conversations.

## What It Does

AgenticLily transcribes guitar songs through a structured conversation workflow:

1. **Tab input** — chord shapes are entered using a compact string notation
2. **Chord identification** — Claude identifies chord names, voicings, and harmonic function
3. **Rhythm notation** — durations are specified using a shorthand notation system
4. **Sheet music generation** — LilyPond source is written and compiled to PDF, producing a combined staff + tablature score

## Repository Structure

```
AgenticLily/
├── CLAUDE.md           ← workflow instructions for the Claude agent
├── README.md           ← this file
└── ArtistName/
    └── songname/
        ├── songname.ly     ← LilyPond source
        ├── songname.pdf    ← compiled sheet music
        └── notes.md        ← chord dictionary, bar structure, analysis
```

## Songs

| Song | Artist | Status |
|------|--------|--------|
| [夜隠染 (Yokaze)](MyGO!!!!!/yokaze/) | MyGO!!!!! | In progress |

## Notation Conventions

### Tab Input

Chord shapes are entered as 6-character strings representing strings low E to high e:

```
35----   ← G5 power chord (E:3, A:5, others not played)
13----   ← F5 power chord
-68676   ← Ebm7
```

- `-` = string not played
- `x` = muted string
- Two-digit frets use quotes: `-8"10"---`

### Rhythm Notation

| Symbol | Duration |
|--------|----------|
| `w` | whole note |
| `h` | half note |
| `q` | quarter note |
| `e` | eighth note |
| `s` | sixteenth note |
| `.` | dotted (×1.5) |
| `~` | tie |
| `()` | beam group |

Example: `q (e.s) (sse) (ess)` = one bar in 4/4

Groups can span chord changes — e.g. `(sse)` split as first `s` to the first chord and `se` to the second.

## Requirements

- [LilyPond](https://lilypond.org/download.html) for compiling `.ly` files to PDF
- Claude (via [Claude Code](https://claude.ai/code)) for the transcription workflow

## Compiling a Score

```bash
cd ArtistName/songname
lilypond songname.ly
```

Output: `songname.pdf`

## TODO

Script the initial transcription to ly file before using AI to fine tune. This should save some tokens and make it less expensive to use.
