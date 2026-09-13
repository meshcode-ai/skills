---
name: video-shorts
description: Short-form video (Shorts/Reels/TikTok) creation — clip selection from long-form, 9:16 reframing, burned-in captions, safe zones, render and QA. Use when user says "make shorts", "cut clips from this video", "vertical clips", "9:16", "Reels", "TikTok edit", or wants to repurpose a long video into shorts. Script writing is video-script; titles/thumbnails are video-packaging.
license: MIT
metadata:
  source: "timscheuerai/content-vault shorts-* (MIT), danvega/skills shorts — distilled"
  category: video
---

# Shorts Creation

Curate, don't fill quota. A video with one great moment yields one short; one with nothing clippable yields zero plus a report saying why. A mediocre short costs channel credibility — **when in doubt, leave it out.**

## Step 1 — Select clips (transcript first)
Read the transcript; keep moments that survive being ripped out of context:
- **Self-contained** — no "as I showed earlier", no dangling references. If the first sentence needs setup, it fails.
- **Hook in the first ~2s** — question, bold claim, number, "the biggest mistake people make with X".
- **One idea with a payoff** — ends on the answer/punchline, not mid-thought. Target 30–60s; a killer 25s beats a padded 60s.
Boundaries: start 0.15s before the hook word, end 0.3s after the payoff word (ASR timestamps are ±100–300ms). Print the plan (timestamp, hook line, suggested title, skip reasons) before rendering.

## Step 2 — Reframe to 9:16 (1080×1920)
Classify footage from 3 extracted frames — don't guess.
- **Talking head** → face-centered crop at full height, static per clip (even pixel width — odd widths break x264).
- **Screen share** → stacked layout: content region on top (60–65% height), camera bubble below. Full-frame screen scaled to 1080 wide is unreadable on a phone.
- Clips that switch modes mid-way: split the reframe at the switch.
Verify by extracting a frame of the OUTPUT: content legible at phone size, no clipped heads.

## Step 3 — Captions (non-negotiable)
Most viewers watch muted. Word-follow "pop" style (1–3 words visible, heavy sans, active word highlighted) is the standard. Place at ~70% height — clear of faces, above the platform UI zone (bottom ~350px and right edge are covered by title/buttons). Match caption fps to source.

## Platform specs — verify at upload time, they move
YouTube Shorts ≤ 3 min · IG Reels ≤ 3 min · TikTok ≤ 10 min. All 9:16 vertical. Keep the actionable core in the first 30s regardless of ceiling.

## Render & QA
Cut with seek flags BEFORE `-i` (after keeps original timestamps → captions drift); loudness normalize to ≈ −14 LUFS; even resolutions only; hook-card overlays must be time-bounded or the encode never ends. QA each short: mid-clip frame + hook frame (captions on, framing right), duration in range, audio normalized.

## Output contract
```
CLIP 1 ★★★  0:42–1:18 → 36s out (talking-head, captions: pop)
  Hook: "..." · Suggested title: ...
Skipped: 6:10 — references earlier demo, not standalone.
```
Deliver files + this table + QA notes. Keep intermediates so re-requests ("use a different caption style") are seconds-fast.
