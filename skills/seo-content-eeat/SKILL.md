---
name: seo-content-eeat
description: Content quality and E-E-A-T analysis — Google's Who/How/Why test, thin-content detection, AI-citation readiness, AI-typical phrasing and invisible Unicode watermark cleanup. Use when user says "content quality", "E-E-A-T", "thin content", "content audit", "humanize", "AI phrasing", or "invisible characters". Also use when the user asks why their content is not ranking, wants a content plan or refresh strategy, or asks whether AI will cite their writing.
license: MIT
metadata:
  source: "AgriciDaniel/claude-seo@v2.3.1 (MIT)"
  category: seo
---

# Content Quality & E-E-A-T

## Bar: Google's Who/How/Why
- **Who**: author shown, credentials, contact info
- **How**: method disclosed (tests, data, review). Disclose AI usage together with human review
- **Why**: is it genuinely helpful, or is search traffic the main goal — the latter is a failure

## Analysis Passes
- Thin: doorway pages, near-duplicate clusters, short posts with no unique data
- E-E-A-T (2025-09 QRG): experience markers, original images/data, primary-source citations, counterarguments addressed
- AI filler is not an auto-disqualifier — flag it as "needs human experience injection"
- Freshness: dateModified, byline, live internal links

## Draft Cleanup
Strip AI clichés ("delve", "in today's fast-paced world", "it's important to note"). Invisible Unicode (zero-width characters) = AI watermark → remove.

## Output
Per-dimension scores + problem excerpts + rewriting priorities. (AI citation readiness → `seo-aeo-geo`)
