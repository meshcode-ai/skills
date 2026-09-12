---
name: mkt-funnel-audit
description: Funnel journey diagnosis — maps stages, quantifies drop-off, finds the leaking step and prioritizes fixes. Use when user says "funnel analysis", "funnel audit", "funnel diagnosis", "where are users dropping", "conversion funnel". Single-page conversion tests are mkt-cro, not this.
license: MIT
metadata:
  source: "coreyhaines31/marketingskills (MIT)"
  category: marketing
---

# Funnel Audit

A diagnosis skill for finding the bottleneck across the whole journey. Distinct in role from single-page conversion optimization (mkt-cro) — here we only establish "where it leaks" and delegate "how to fix it" to cro.

## Diagnosis Order

1. **Define stages** — acquisition → core action (signup/install) → first value experience (Aha) → paid conversion → repeat. Keep it to 4~7 stages. 8+ is over-fragmentation that can't be measured.
2. **Check measurement alignment** — per stage, is the event definition and unique-user basis the same. If definitions wobble, the entire funnel's numbers are discarded.
3. **Compute per-stage conversion** — both by session (acquisition) units and by cohort (time-held, recurring) units. Never conclude drop-off from single-session numbers alone.
4. **Identify the bottleneck** — narrow the cause candidates using the rules below.
5. **Prioritize** — drop-off rate × inverse of recovery difficulty × the stage's revenue contribution.

## Judgment Rules

- Only stage 1 (acquisition→action) is low and first-session quality metrics are also low → **channel/message mismatch** (a traffic problem, not a funnel page problem)
- One middle stage with uniquely high drop-off → **that stage's friction/expectation mismatch** → delegate to mkt-cro
- Last stage (checkout) drop-off → pricing/trust/risk issue → see mkt-offers, mkt-pricing
- Event gap between stages (missing only on a specific device/browser) → measurement issue → delegate to mkt-analytics
- Thresholds: >70% drop-off across 2+ stage transitions is a bottleneck candidate; >90% is a suspected structural defect
- Below 100 sessions, no statistical interpretation — report as observation only

## Output

```
# Funnel Diagnosis — {product} ({date})
## Stages (stage | conversion rate | drop-off | sample size)
## Top 3 bottlenecks (stage, drop-off, evidence, ≤2 cause hypotheses)
## Quick wins (executable within ≤1 week only)
## Next-action mapping (each bottleneck → mkt-cro / mkt-offers / mkt-analytics)
## Data limits (missing samples/definitions stated, never hidden)
```
