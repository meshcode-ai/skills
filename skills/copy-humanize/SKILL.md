---
name: copy-humanize
description: Remove AI-sounding phrasing — cliché opener deletion, varied sentence rhythm, concrete experience injection, and a human-sounding rewrite pass. Use when user says "humanize", "make it sound human".
license: MIT
metadata:
  source: "blader/humanizer (MIT)"
  category: copy
---

# Humanize — Killing AI Clichés

AI detection trips on **rhythm and specificity**, not on any particular word. The goal isn't prettier sentences — it's keeping what a person actually experienced.

## Delete Immediately (opening clichés)

"In today's fast-paced world", "the era of X has arrived", "X is the key to Y", "in conclusion", "let's look at", "importantly", "game-changer", "innovative/comprehensive/seamless". Delete every opening declaration — go straight to the topic.

## Replace Immediately

- "Welcome to the world of X" → delete
- "very / extremely / remarkably" → a number, or delete
- "helps with" → "cuts X by"; list-form "and… and… and…" → split into short sentences
- 3+ consecutive emoji, over-bolding, decorative markdown → remove

## Building Rhythm

Vary sentence length randomly between 12 and 35 words. Sentences all about the same length is the single biggest AI tell. Don't repeat the same opening word across consecutive sentences.

## Injecting Specificity (5 questions before rewriting)

1. Is there a moment where I directly lived this? → insert one sentence
2. Is there an adjective I could replace with a number?
3. Can I state a counter-example or limit? (Admitting a weakness is a shortcut to trust)
4. Can I address one person instead of "you all"?
5. Can I end on a next action or a question instead of a summary?

## Output

A delete/replace list (original → changed) + the full rewrite + remaining AI-pattern flags (checklist items not yet satisfied). Detector-score estimates are reference only — specificity is what matters.
