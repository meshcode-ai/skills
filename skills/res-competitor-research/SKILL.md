---
name: res-competitor-research
description: Competitor research — systematic profiling of rivals' product, pricing, positioning, GTM, and moat with evidence-graded comparison tables. Use when user says "competitor analysis", "competitive research", or .
license: MIT
metadata:
  source: "alirezarezvani/claude-skills@research/ (MIT)"
  category: research
---

# Competitor Research

## Fixed scope
- Limit to 3–5 direct competitors (same segment) + 1–2 indirect competitors (substitutes). Everything else goes in an appendix.
- Fix comparison axes to **your own criteria** — comparing on the axes competitors publish locks you into their frame.

## Collection priority (confidence hierarchy)
1. Competitor's own: pricing page, product docs, **job postings (a mirror of strategy)**, changelog, filings & investor materials
2. Customer voice: 100–200 reviews (G2, app stores, Reddit) — not the star average, but the **3 most-repeated complaints** are the real asset
3. Third-party: analyst reports, trade media, partnership pages. Always note the discounted price alongside list price.

## Comparison criteria
- **Positioning**: "what it does not do" (features excluded, segments excluded) is the substance of positioning.
- **Moat verdict**: which of brand / switching cost / data / network / supply cost it leans on + durability signals (key personnel departures, share of new entrants).
- **Price comparison**: convert to a common unit (per user, per usage, per transaction). If conversion is impossible, state "not comparable".
- Every figure needs a source URL + verification date. Never promote a competitor's marketing copy into fact.

## Output
```
# Competitor Research — {category} ({date})
## Comparison table (axis × competitor, source & date in every cell)
## Relative position (2 strengths · 2 weaknesses · 1 unoccupied terrain)
## Top 3 competitor complaints (by review frequency) = our opportunity
## Monitoring items (what to watch + cadence)
```
