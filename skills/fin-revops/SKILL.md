---
name: fin-revops
description: Aligns sales, marketing, and CS operations — single metric definitions, CRM hygiene rules, funnel number reconciliation, and a weekly reporting rhythm. Use when user says "RevOps", "revenue operations", "CRM data quality", "funnel reconciliation", or .
license: MIT
metadata:
  source: "alirezarezvani/claude-skills (MIT) · commercial"
  category: exec
---

# Revenue Operations (RevOps)

## Definitions before tools
Most metric disputes come from departments using different definitions. **One person owns the metric dictionary**: pipeline (= sum of in-flight opportunity amounts, including auto-close criteria), MRR (excluding affiliates), SQL definition, etc. Definition changes are versioned and announced to every department.

## CRM hygiene rules
- Stage moves require a buyer-evidence link (email, contract, meeting notes)
- Opportunities that go 2 weeks without a close-date update are auto-locked → unlocked after re-verification
- One owner per opportunity. Co-owned opportunities are excluded from aggregation

Introduce tools and automation only after these rules exist.

## Funnel number reconciliation
Once a month, align departmental report figures into one table: lead → SQL → opportunity → win conversion. If the cross-department gap exceeds 2 percentage points, check definitions and capture points. Fix marketing contribution and sales credit scope in a document to resolve "attribution disputes" systemically.

## Reporting rhythm
Weekly: pipeline change & sludge / Monthly: funnel conversion & reconciliation / Quarterly: CAC & payback by channel.

## Maturity diagnosis
Level 1: manual spreadsheets → Level 2: CRM hygiene rules established → Level 3: automation & triggers → Level 4: forecast accuracy ±10%. Introducing Level 3 tools below Level 2 produces garbage automation. RevOps performance is measured by forecast error improvement, not dashboard count.

## Output
Metric dictionary, CRM hygiene check results (n violations), list of cross-department figure mismatches with causes, reporting calendar.
