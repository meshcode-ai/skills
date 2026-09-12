---
name: mkt-attribution
description: Attribution modeling — figures out which channels and touchpoints actually drive conversions and revenue. Use when user says "attribution", "which channel works", "UTM strategy", "multi-touch", "ROAS truth". Basic event setup is mkt-analytics.
license: MIT
metadata:
  source: "coreyhaines31/marketingskills (MIT)"
  category: marketing
---

# Attribution — Measuring Channel Contribution

**This skill judges which channels actually drive conversions and revenue.** Event install/tracking implementation (mkt-analytics) must come first — with broken measurement, an attribution model is decoration.

## Model Selection Criteria

| Model | Use when | Trap |
|---|---|---|
| Last-click | Baseline, floor | Fully cannibalizes top-of-funnel (awareness) channels |
| First-click | Judging acquisition expansion | Ignores retention |
| Linear | Equal credit across the journey | Ignores real contribution |
| Time-decay | Short purchase cycles | Unsuitable for long-cycle B2B |
| Data-driven | Only with sufficient data (1000+ conversions/mo) | Overfits at small scale |

- For budget reallocation decisions, review **at least 2 models in parallel** and mark channels whose ranking flips between models as "uncertain"
- UTM rule: fix 4 elements per campaign — `source / medium / campaign / creative` — with identical notation across the whole team. Channel-name drift is a larger error source than the model choice.

## Judgment Criteria

- **Incremental first**: correlation ≠ contribution. Verify with geo-holdouts or campaign pauses where possible
- Watch out for brand-search double counting: brand keyword CPC is mostly clicks that would have gone organic — interpret brand-campaign ROAS conservatively
- If offline/word-of-mouth conversions are large (20%+ of customer survey responses), state digital attribution's limits up front
- For platform measurement gaps like iOS SKAdNetwork, stating the uncertainty range takes priority over correction attempts

## Output

```
# Attribution Report — {period}
## Channel table (channel | contribution by model | uncertainty grade)
## Model conflicts (channels whose ranking flips + interpretation)
## Budget reallocation proposals (only with incremental evidence, in %)
## Measurement gaps declared (SKAD/cookies/offline)
```
