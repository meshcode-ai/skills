---
name: video-script
description: Video script writing — cold-open structure, retention checkpoints, hook formulas, and timed outlines for long-form and shorts. Use when user says "video script", "write a script", "YouTube video outline", "shorts script", "hook ideas", or has a topic and needs a shootable script. Clip editing is video-shorts; titles/thumbnails are video-packaging.
license: MIT
metadata:
  source: "timscheuerai/content-vault (MIT), danvega/skills — distilled; structure contract original"
  category: video
---

# Video Script

Retention is the product. Every structural choice answers one question: why would the viewer still be here at second 30, minute 2, minute 8?

## Long-form structure
1. **Cold open (0–15s)** — start with the result, the conflict, or the boldest claim. Never a greeting, channel intro, or "in this video we'll…". The title/thumbnail made a promise; the first 15 seconds must confirm it.
2. **Roadmap (15–30s)** — one sentence: what they'll walk away with, and the one thing that makes it worth the wait.
3. **Body** — chapters of 60–120s each, each opening with its own mini-hook and closing with a mini-payoff. Plant **retention checkpoints**: open loops ("the third one is where it breaks"), payoffs spaced ≤ 90s apart, pattern interrupts (demo, cutaway, prop) every ~30s of talking head.
4. **Climax** — the payoff the title promised, delivered before the wind-down.
5. **CTA — exactly one.** Two CTAs halve both.

## Shorts script (≤ 60s target)
Hook (1 sentence, first 2s) → lead (what & why it matters, ≤ 5s) → body (one idea, one proof) → payoff → loop ending (cut so the end feeds the hook — replays count double).

## Hook formulas (pick by content type)
Number/contrarian ("90% get X wrong") · question the viewer already has · result-first ("this took 4 hours → 4 minutes") · stakes ("if you do X, you'll lose Y") · demonstration opening mid-action · named enemy ("stop doing X") · curiosity gap with a concrete noun. Ban list: greetings, channel intros, "before we start", hedging.

## Timing math
Speech ≈ 250–300 words/min (Korean ≈ 300–350 syllables/min). Script to the slot: a 10-min video is ~2,500 words of speech + demo breathing room. Mark non-speech beats inline `[B-roll: …]`, `[cut to screen]`, `[pause]` — a script without visual direction produces talking-head soup.

## Output contract
```
# Script — {title} · target {mm:ss}
## Cold open (0:00–0:15) — verbatim lines
## Chapter n ({start}–{end}) — hook line · beats · retention device used · visual direction
## CTA — verbatim, one
## Hook variants — 5 title/thumbnail-aligned alternates for A/B (packaging handoff)
```
Deliver the script + the checkpoint map (where each retention device sits on the timeline).
