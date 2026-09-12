---
name: fin-forecast
description: Forecasts revenue — baseline plus weighted pipeline, commit/best-case categories, forecast accuracy tracking, and 13-week cash flow linkage. Use when user says "sales forecast", "revenue forecast", "forecast accuracy", "quota", or .
license: MIT
metadata:
  source: "alirezarezvani/claude-skills (MIT) · finance"
  category: exec
---

# Revenue Forecast & Cash Linkage

## 3-layer structure
1. **Base** — recurring revenue (subscription/repeat) + upcoming renewals. 100% only for signed contracts
2. **Weighted pipeline** — stage conversion rates (measured from historical cohorts) × amount. "Gut feel" allocation is an unrecorded bias
3. **Gap** — if 1+2 fall short of target, back-solve the number of new opportunities needed using the coverage formula

## Commit / Best-case / Pipeline
Structure the sales leader's verdict into 3 tiers: commit (≥90%) · best case (≥50%) · pipeline. Any executive override must come with a recorded reason — unrecorded overrides make forecast error impossible to learn from.

## Accuracy management
After month-end, track forecast-vs-actual error by cohort and sales leader and **target within ±10%**. Leaders with a consistent bias (always over/under) get their allocation weights adjusted.

## Cash linkage
Revenue ≠ cash. Convert forecast revenue into a collection schedule by payment terms (30/60/90 days) and feed it into the **13-week cash flow** — update weekly, and trace errors beyond 4 weeks down to the contract level. If runway is under 6 months, connect to spending and collection actions, not weight adjustments.

## Validation loop
Decompose forecast error by cause — pipeline omission (sales), stage bias (leader), recurring-revenue estimation error (finance). Ownership differs by cause, so a blended error alone cannot drive improvement.

## Output
3-layer forecast table (with assumptions), commit-classified list, error report, 13-week cash flow linkage table.
