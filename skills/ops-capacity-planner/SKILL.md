---
name: ops-capacity-planner
description: Size an ops team (support, CX, IT, finance ops) that handles queued work — utilization bands, demand P90, shrinkage-adjusted FTE, hiring sequence. Use when user says "capacity planning", "headcount plan", "utilization", "SLA understaffed". Not engineering velocity.
license: MIT
metadata:
  source: "alirezarezvani/claude-skills business-operations/capacity-planner@v2.8.0 (MIT)"
  category: ops
---

# Capacity Planning — Sizing a Queue-Processing Team

**A team at 100% utilization misses its SLA daily and burns out.** Judge by available time, demand distribution, and risk bands — not by headcount.

## Formula (baseline)
- **Required FTE** = (P90 daily volume × AHT) ÷ (1 person's daily available minutes × (1−Shrinkage) × target utilization)
  - Shrinkage = vacation, training, meetings, sick leave (non-work attrition, typically 25–40%)
- **Utilization bands**: <70 SAFE · 70–80 WATCH · **80–90 AT_RISK** · >90 CRITICAL (throughput collapse)
- Utilization spread across the team above 30pp = UNBALANCED → fix distribution before adding headcount

## Judgment Rules
- **Model demand as a distribution**: sizing to P50 breaches SLA on half the days; sizing to P99 overstaffs by 30–50%. **Size operations at P90**; treat P99 separately as a surge response plan.
- **No ramp stacking (1–4–20)**: the proficiency curve — expect 40% utilization at month 1, 70% at month 4, 100% at month 20. Never treat a new hire as ramped immediately.
- **Account for attrition**: at 30% annual turnover, a 20-person team needs budget to backfill ~6. "Net +5" is really "hire 11."
- **Manager trigger**: more than 7 ICs per manager breaks 1:1s and feedback → hire a manager before passing 10.
- **P99 surge response**: document one of — overflow tier, BPO reserve, or contracted on-call. "We'll figure it out then" is a fire visible to the CEO.

## Output
```
# Capacity Plan — {team} {quarter/year}
## Capacity scenarios (FTE at 70/80/90% utilization × P50/P90/P99, SLA breach probability, SAFE~CRITICAL)
## Current utilization (per-person traffic light + team verdict)
## Hiring sequence (by quarter, reflecting ramp and attrition, manager trigger quarter)
## P99 surge plan (unannounced, contracted reserve)
```
