---
name: mkt-meta-ads
description: Meta (Facebook/Instagram) ads — campaign structure, creative-first testing, audience layers, signal/CAPI setup, budget scaling. Use when user says "Meta ads", "Facebook ads", "CAC scaling", "lookalike". Google/search ads are mkt-google-ads.
license: MIT
metadata:
  source: "coreyhaines31/marketingskills (MIT)"
  category: marketing
---

# Meta Ads — Facebook/Instagram Ad Operations

**Meta is a platform where creative, not targeting, decides performance.** After Advantage+ the algorithm absorbed audiences, so spend resources on increasing "what you show" instead of narrowing "who sees it".

## Structure Rules

- Simplify campaign structure: a conversion campaign is one CBO + 3~5 ad sets. The old carve-it-into-tiny-ad-sets approach dilutes signal
- Run 5~10 creatives per ad set — Meta's in-set auto-allocation is strong, so creative count is the potential
- Test audiences narrowly: Lookalike 1~3% of existing customers, one interest layer. 3+ stacked layers starve reach

## Signal Infrastructure (precondition for performance)

- Pixel alone has decayed since 2024 — **CAPI (server-side events) installed in parallel is the default**. EMQ (Event Match Quality) below 6.0 distorts performance
- Cap conversion events at 8, with purchase/signup given top priority

## Creative Testing & Scaling Judgment

- Test by **changing creative only; hold audience and budget fixed** — one variable at a time
- Minimum sample before verdict: don't stop until weekly spend per ad set reaches 5× the target CPA
- Scaling: increase spend 20~30% increments while staying within weekly CPA target. A 50%+ jump triggers resets — forbidden
- Creative lifespan: when CTR starts falling (2~4 weeks), replace the creative itself — don't keep it alive with price or copy tweaks

## Output

```
# Meta Ads Plan — {product/period}
## Campaign map (objective | audience | budget | creative count)
## Creative test matrix (5~10 creatives per hypothesis)
## Signal check (CAPI, EMQ, event priority)
## Scaling/stop rules (with threshold table)
## Weekly review (metrics: CPA, CTR, cost per purchase, creative lifespan)
```
