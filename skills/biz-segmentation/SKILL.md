---
name: biz-segmentation
description: Segments a market using Kotler's five criteria (measurable, substantial, accessible, differentiable, actionable), scores segment attractiveness, and picks one target segment with a positioning line. Use when user says "market segmentation", "customer segments", "target customer", or "STP".
license: MIT
metadata:
  source: "alirezarezvani/claude-skills (MIT) · research-ops/market-research"
  category: biz
---

# Market Segmentation & Targeting

**Kotler's 5 segment criteria** — fail any one and the candidate is out: ① measurable (size and purchasing power can be computed) ② substantial (large and profitable enough) ③ accessible (reachable and promotable through channels) ④ differentiable (actually responds differently) ⑤ actionable (can be entered and served effectively).

Segmentation axes: B2C = geographic, demographic, psychographic, behavioral (spend, frequency, loyalty). B2B = firmographics (industry, revenue, headcount) + adoption stage + use case.

**Targeting**: once a segment passes all 5 criteria, attractiveness score = market growth + average order value + our fit − competitive intensity. Focus on the top 1 segment (no resource dilution). A ≥1.5× difference in response rate between segments is a signal that the split is valid.

One-sentence definition per segment: "_Customers with [behavioral trait] use us instead of [substitute] because [motivation]._"

Check: if that sentence can be used directly as ad copy, the segment is valid. Broad definitions like "all people in their 20s" signal segmentation failure — it must contain concrete behavior.

## Output
One-sentence definition + size estimate per segment, pass/fail table for the 5 criteria, attractiveness scorecard, chosen segment with rejection reasons for the rest, one-line positioning.
