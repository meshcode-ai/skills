---
name: mkt-cro
description: Conversion rate optimization for a specific page, form, or flow — audits friction, prioritizes fixes, designs experiments. Use when user says "CRO", "increase conversions", "landing page conversion", "optimize this page", "form abandonment". Whole-journey diagnosis is mkt-funnel-audit.
license: MIT
metadata:
  source: "coreyhaines31/marketingskills (MIT)"
  category: marketing
---

# CRO — Conversion Rate Optimization

**Experimentation/improvement skill for raising conversion on a limited surface (landing page, form, checkout screen).** Whole-funnel diagnosis is mkt-funnel-audit; experiment design procedure is mkt-ab-testing.

## 5-Dimension Page Audit (priority order)

1. **Message-market fit** — does the headline match the visit's intent source (ad copy, search intent)? The biggest lever is the message, not the design.
2. **Value clarity** — the 5-second test: if you can't tell what you get here or why you should do it here, it fails. The hero is "what + who + why now".
3. **Friction** — number of form fields, required info, unexpected costs, forced account creation, slow LCP (drop-off spikes past 3 seconds).
4. **Trust signals** — concrete numbers, real customer counts, guarantee policies, reviews. Abstract superlatives ("the best") are worthless.
5. **CTA** — one primary CTA per screen, starts with a verb, reverses risk ("start free, no card").

## Prioritization

Rank by ICE (Impact × Confidence × Ease, each 1~10). But:
- Subjective scores with no confidence evidence are capped at Confidence ≤5
- Message-vs-message tests (copy) are low risk so run first; layout and structure changes come later
- Below 1000 sessions/month, A/B tests are meaningless — ship the change and compare before/after instead

## Output

```
# CRO Audit — {URL/screen}
## Verdict (3 lines + #1 conversion bottleneck)
## Audit table (dimension | issue | severity | evidence)
## Top 5 experiment candidates (hypothesis: "if A then B, C rises by %", ICE, risk)
## Immediate fixes (concrete at the code/copy level)
## Measurement definition (success metric, whether micro-conversions included)
```
