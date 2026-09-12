---
name: biz-unit-economics
description: Computes LTV, CAC, payback period, and contribution margin, applies the LTV:CAC ≥ 3 and payback ≤ 12 months thresholds, and finds which lever (price, churn, CAC) moves profitability most. Use when user says "unit economics", "LTV", "CAC", "LTV CAC ratio", or .
license: MIT
metadata:
  source: "alirezarezvani/claude-skills (MIT) · finance/saas-metrics"
  category: biz
---

# Unit Economics — LTV / CAC

**Calculations**: LTV = ARPA × contribution margin rate ÷ monthly churn — must be on a net-profit basis (revenue basis overstates it). CAC = total acquisition cost ÷ new customers — include everything: salaries, tools, agencies — broken out per channel, not just an average. LTV:CAC ≥ 3 is healthy; below 3 = underinvestment (growth headroom) or overspending; below 1 = immediate stop-and-review. CAC payback ≤ 12 months (B2C ≤ 3–6 months); beyond that, cash-depletion risk.

**Lever identification**: check via sensitivity — a +10% price change hits LTV almost immediately; churn −1pp improves LTV proportionally (relative to existing churn); CAC −10% only shortens payback. Typically, improving price or churn yields a higher ROI than cutting CAC.

**Trap**: a blended average LTV:CAC offsets the early high cost of new channels against the low cost of mature ones, hiding the real state — always decompose by cohort and channel. Expect CAC to rise during testing and fall after maturity (exclude the first 3 months' cohorts from the verdict).

Order of judgment: ① Is contribution margin positive (if negative, growth itself amplifies losses) ② LTV:CAC verdict ③ Does payback fit the cash schedule ④ For improvement levers, evaluate in the order price > churn > CAC.

## Output
Calculation table for LTV, CAC, payback, and contribution margin (assumptions stated), per-channel comparison, 3-lever sensitivity table, improvement priorities (with expected-effect figures).
