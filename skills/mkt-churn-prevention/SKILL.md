---
name: mkt-churn-prevention
description: Churn reduction — cancellation flows, save offers, dunning/payment recovery, health scoring. Use when user says "reduce churn", "cancellation flow", "save offer", "failed payments", "dunning". Activation problems are mkt-onboarding.
license: MIT
metadata:
  source: "coreyhaines31/marketingskills (MIT)"
  category: marketing
---

# Churn Prevention

**Churn is not an event; it is the outcome of accumulated failures.** Polishing the cancellation screen is the last lever — before that, risk-signal-based interventions create most of the margin.

## 3 Defense Layers (in priority order)

1. **Prevention (detect risk while they're still active)**
   - Churn prediction signals: lengthening login gaps, stopped core-feature usage, teammate departures, latent issues buried in support tickets
   - Health score = availability (recent activity) 40 + depth (core-feature usage) 30 + relationship (team size, account age) 30
   - Human outreach only for the bottom 20% of scores — blanket outreach just raises cost
2. **Structure (cancellation flow)**
   - A single unified "cancel subscription" button is mandatory (legal requirement + trust). Offer options only in the churn window: pause (up to 3 months), downgrade, reason survey
   - Reason survey = 3 options + free text, placed before cancellation completes. If "price" dominates, it's a packaging problem, not a discount problem
3. **Recovery (failed payments)**
   - Most payment-failure churn is technical — a 3-touch dunning sequence (card renewal reminders) recovers 5~15%. Immediate subscription cancellation is the biggest mistake

## Judgment Criteria

- Churn baseline: 1~3% monthly for B2B SaaS, 5~10% for B2C subscriptions. Exceeding that is a product problem, not a marketing one — churn this skill can't cover escalates to onboarding/product
- Retention math: LTV = ARPU / churn rate. Halving churn doubles LTV — which justifies raising the allowable CAC accordingly
- Overusing save offers (discounts) teaches a churn pattern and blocks price increases — once a year, limited to specific segments

## Output

```
# Churn Prevention Plan — {product}
## Churn reason analysis (survey/data based, with %)
## Health score design (weights + intervention threshold)
## Cancellation flow redesign (3 options + reason survey)
## Dunning sequence (timing + copy skeleton)
## Expected impact (churn rate target in % points, LTV effect)
```
