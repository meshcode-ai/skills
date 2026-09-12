---
name: ops-knowledge-ops
description: Audit and clean up a company wiki — stale and orphan pages, missing owners, glossary drift, and a ranked top-20 cleanup list. Validate runbooks before they go into rotation. Use when user says "wiki audit", "KB hygiene", "orphan page", "stale doc", "runbook validation". Distinct from ops-sop-builder (authors new SOPs).
license: MIT
metadata:
  source: "alirezarezvani/claude-skills business-operations/knowledge-ops@v2.8.0 (MIT)"
  category: ops
---

# Knowledge Ops — Wiki Hygiene Cleanup Sprint

**The point is to answer: which 20 documents need fixing, and what exactly is wrong with each.** The metric isn't document count — it's *unfindable documents (orphans)* and *dangerous runbooks*.

## Hygiene Audit Items
- **Orphan pages**: zero inbound links — undiscoverable by navigation. They may still be reference-only search pages, so treat them as a **priority queue**, not a delete list.
- **Stale**: unedited for over 12 months (90 days for regulated processes). A page with no owner field is tribal knowledge — take the loss and remove it.
- **Glossary drift**: if "CSM" means different things in different docs, it becomes 7 meanings in 3 years — correct it the moment it appears.
- **Cross-links**: canonical location plus at least 2 inbound links. An orphan rate over 20% is the leading indicator of wiki sprawl.

## Runbook Validation — 6 Elements (per step)
Named owner · expected duration · **observable success signal** · failure signal · rollback path (or a stated escalation) · escalation owner.
**Verdict**: ≥80 SAFE · 60–79 CAUTION · **<60 do not use in production** (rewrite target).
- A validator who can't hold the structure can't validate the content — a score of 100 can still be wrong.
- List orphans and stale docs only after owners are assigned — mass output without assignment halves within 6 months.

## Output
```
# KB Hygiene Report — {wiki}
## Waterfall (orphan · stale · ownerless · glossary-drift counts)
## Runbook traffic lights (per element, with the NOT-SAFE list)
## Top 20 cleanup priorities (staleness × inbound links)
## Actions (archive / rewrite / merge + owner and deadline each)
```
