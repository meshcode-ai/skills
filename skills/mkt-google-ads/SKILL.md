---
name: mkt-google-ads
description: Google Ads strategy — campaign structure, keyword intent tiers, match types, bid budgets, Quality Score, Performance Max judgment. Use when user says "Google Ads", "SEA", "PPC", "keyword bidding". Meta/social ads are mkt-meta-ads.
license: MIT
metadata:
  source: "coreyhaines31/marketingskills (MIT)"
  category: marketing
---

# Google Ads — Search Ads Operating Judgment

**Search ad structure must be organized by "intent precision."** Mixing keywords breaks QA and budget control simultaneously.

## Campaign Structure Rules

- Separate by intent tier: brand / competitive alternative (competitor name + alternative) / problem-solving (how-to) / direct product (category term). Budgets are separate, so combining them lets brand cannibalize the rest
- One theme per ad group, ≤20 keywords. Beyond that, ad copy can't cover the keywords → QS drops
- Match type handling: broad match is for exploration (negatives must be airtight); phrase match is the workhorse of profit campaigns. Word match is mostly a legacy form

## Judgment Criteria

- **Target QS (Quality Score) ≥7** — ad relevance (keyword directly in copy), landing page match (keyword ↔ landing headline), expected CTR
- Without conversion tracking, don't judge on CPC alone — start CPA judgment only after at least 30 conversions/month
- Performance Max only takes inputs (creative, conversions) and can't see structure — split asset groups by theme when feeding, and monitor brand keyword cannibalization
- Budget judgment: check whether the top 20% of keywords drive 80% of revenue; delegate long-tail to automation
- Negative keywords are refreshed weekly from the search-terms report, not set once at campaign launch

## Output

```
# Google Ads Plan — {product/period}
## Campaign map (by intent tier | budget % | expected CPA evidence)
## Ad group–keyword table (theme, match type, expected search volume)
## Landing match rules (landing headline per ad group)
## Negative seed list
## Weekly review checklist (search terms, QS, budget burn rate)
```
