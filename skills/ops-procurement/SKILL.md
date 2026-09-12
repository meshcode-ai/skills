---
name: ops-procurement
description: Annual spend audit and supplier rationalization — categorize spend, find the Pareto-20% driving cost, detect duplicate tools, and plan risk-balanced consolidation. Use when user says "spend audit", "SaaS audit", "spend categorization", "supplier consolidation", "renewal calendar". Distinct from ops-vendor-management (scores vendors you keep).
license: MIT
metadata:
  source: "alirezarezvani/claude-skills business-operations/procurement-optimizer@v2.8.0 (MIT)"
  category: ops
---

# Procurement — Spend Categorization and Supplier Consolidation

**Deciding what to buy, from whom, and on what cadence.** Evaluating vendors already chosen is `ops-vendor-management` territory.

## Categorization and Prioritization
- **Categorize by what is purchased, not by supplier name** (even Workday splits into HR and finance modules). Align to UNSPSC → Class → Family → Segment.
- **Pareto**: the top 20% of categories drive 80% of spend — start with the top 5 YoY-increase categories.
- **Maverick spend**: out-of-PO spend runs 10–40%. Sub-$5k approvals are the gateway to SaaS sprawl (death by a thousand SaaS) — set a threshold plus a single named owner.

## Bottleneck and Risk Judgment
- **Purchase cycle**: per-category request→approval→issue P50/P90. More than 2× the category median = a bottleneck category (usually legal or security review).
- **Balance consolidation risk**: find feature-overlap clusters (e.g. 3 monitoring tools) — but **never consolidate when switching cost exceeds the savings**. Tier-1 single-sourcing is allowed **only with a documented 72-hour break-glass plan**.
- **Untangle renewal clustering**: 3+ renewals in the same month = zero negotiating leverage → spread them across the renewal calendar.
- **Risk flags**: low-spend, high-dependency vendors can't be tiered by spend (the Target HVAC incident) — tier by dependency instead.

## Output
```
# Procurement Review — {period}
## Category breakdown + Pareto (top 5 YoY increases)
## Top 3 bottleneck categories (cycle P90 + cause)
## Top 5 consolidation opportunities (projected savings − switching cost, risk flag)
## Renewal calendar (cluster-breaking plan)
## Tier-1 single-source exposure points (state "hold consolidation" where break-glass is missing)
```
