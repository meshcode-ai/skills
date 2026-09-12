---
name: ops-sop-builder
description: Author a standard operating procedure (SOP) that an operator can execute without asking anyone — 5W2H structure, observable success signals, rollback and escalation per step. Use when user says "SOP", "runbook", "how to document this process". Distinct from ops-knowledge-ops (audits an existing wiki).
license: MIT
metadata:
  source: "alirezarezvani/claude-skills business-operations/knowledge-ops@v2.8.0 (MIT)"
  category: ops
---

# SOP Authoring — Procedures People Can Actually Execute

**An SOP's quality is measured by whether someone can finish without asking anyone.** Assume it rots within 6 months, and never author a document without an owner and a review cadence.

## Choose the Form (decide first)
| Form | Use for | Core |
|---|---|---|
| SOP | Standard procedure for recurring work | Full 5W2H |
| Runbook | Incident / event response | Signals, rollback, escalation |
| Checklist | Verifying a single procedure | ≤10 items, verifiable verbs |

## 5W2H Skeleton
- **Who** RACI (one named owner) · **What** deliverable · **When** trigger + frequency · **Where** system/tool · **Why** purpose + regulatory basis · **How** steps · **How-much** cost, duration

## Step-Writing Rules (no compromise)
- Every step needs 6 elements: **named owner** ("the team" is banned) · expected duration · **observable success signal** ("HTTP 200 from /healthz", "Slack `done` reaction" — "looks fine" is banned) · failure signal · **rollback path** (or "cannot be undone → escalate to X") · escalation owner.
- **Never write only the happy path**: give recovery procedures separately for the top 2 failure modes.
- Regulated scope (PHI / SOX / ISO 13485) requires version, approval, and audit-trail sections — omitting them is itself an audit finding.

## Output
```
# SOP — {process name} v{n} (owner: {name}, review cadence: {90d|365d})
## 5W2H summary
## Step table (step | owner | success signal | rollback | escalation)
## Top 2 failure modes + recovery procedures
## Regulatory and approval block
```
Any runbook scoring below 60 is barred from production use and marked as a rewrite target.
