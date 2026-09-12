---
name: ops-vendor-management
description: Score and review third-party vendors — multi-dimensional vendor scorecard, SLA compliance, third-party risk classification, and a defensible KEEP/REVIEW/REPLACE renewal decision. Use when user says "vendor scorecard", "vendor review", "SLA compliance", "third-party risk", "TPRM", "renewal review". Distinct from ops-procurement (which vendors to buy).
license: MIT
metadata:
  source: "alirezarezvani/claude-skills business-operations/vendor-management@v2.8.0 (MIT)"
  category: ops
---

# Vendor Management — Scorecards, SLA, Risk

**Evaluate only right before renewal and you're already too late.** Quarterly or continuous performance reviews pre-decide half the renewal call.

## Scorecard (0–100, weights by industry)
| Dimension | SaaS | Fintech | Healthcare | Enterprise |
|---|---|---|---|---|
| Reliability (uptime, incidents) | 30% | 25% | 25% | 25% |
| Support (P90 response) | 15% | 15% | 15% | 20% |
| Security (certifications) | 25% | 30% | 35% | 25% |
| Commercial (renewal flexibility) | 15% | 15% | 10% | 15% |
| Strategic fit | 15% | 15% | 15% | 15% |

**Verdict**: ≥75 **KEEP** (normal) · 50–74 **REVIEW** (QBR mandatory before renewal) · <50 **REPLACE** (start exploring alternatives now; auto-renew is banned)

## SLA and Risk Judgment
- **SLA compliance**: monthly/quarterly compliance rate with improving/stable/degrading trend. **Flag credits-claimable**: ≥2 breaches in 12 months, or a quarterly rate more than 0.5pp under target.
- **4-vector risk** (Critical/High/Medium/Low): data sensitivity (PII · PHI · card) · financial exposure (spend × tier) · operational dependency (tier-1 without break-glass = Critical) · regulatory exposure.
- **Review cadence**: tier-1 quarterly / tier-2 semiannual / tier-3 at renewal. Demand the prior-year SOC 2 Type II **original report**, not a questionnaire.
- Tier by **operational dependency, not spend** — so you don't miss a critical low-spend vendor. When replacing or divesting, offboarding requires data deletion, access revocation, and key rotation.

## Output
```
# Vendor Scorecard — {period}
## Leaderboard (per-vendor 5-dimension scores + KEEP/REVIEW/REPLACE)
## SLA report (compliance rate, trend, claimable credits)
## Risk matrix (Critical/High + mitigations)
## Actions (KEEP top 3 / REVIEW QBR scheduling / REPLACE candidates + offboarding checklist)
```
