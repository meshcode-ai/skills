---
name: ops-project-planning
description: Turn a goal into an executable project plan — WBS, critical path, buffer rules, RACI, RAID log, and milestone acceptance criteria. Use when user says "project plan", "WBS", "milestone", "Gantt", "risk register", "RACI". For headcount sizing use ops-capacity-planner.
license: MIT
metadata:
  source: "meshcode curation — PMBOK, Critical Chain (Goldratt), RACI canon, agile DOD (MIT-derived)"
  category: ops
---

# Project Planning — WBS, Critical Path, Risk

**The unit of a plan is a verifiable deliverable, not a task.** "Stuck at 80% for 3 weeks" is not done until it's 100% done (Brooks's Law).

## WBS and Schedule
- **WBS**: goal → milestone → deliverable-level tasks (small enough for one person to finish in 2–4 days). If it doesn't decompose into deliverables, you can't measure progress.
- **Critical path**: the longest path. Every day it slips, the project slips a day — adding people to non-critical work won't help.
- **Buffer rule**: put **10–15% of total duration** as an integration buffer at the end of the project. Per-task personal buffers are banned — they scatter and hide slack (and induce multitasking and student syndrome).
- **Parallelization limit**: one person can't hold 2+ critical tasks at once — resource constraints can exceed the critical path (PMBOK Resource-Leveling).

## RACI and Risk
- **RACI** (rows = tasks, columns = roles): R (one or more executors) · **A (single accountable, approval authority)** · C (consulted) · **I (informed)**. Two A's means nobody is accountable.
- **RAID log**: risks (probability × impact High/Med/Low) · assumptions · issues · dependencies. Each risk gets a **response (avoid / transfer / mitigate / accept)** + trigger + owner.
- **Definition of Done**: write acceptance criteria for each deliverable at planning time (undefined = scope dispute later).
- Scope changes require approval with stated impact (deadline, cost, quality). No verbal scope changes.

## Output
```
# Project Plan — {name}
## Milestones and tasks (WBS, deliverable-level, owner, duration)
## Critical path + integration buffer (10–15%)
## RACI matrix
## RAID log (response + trigger per risk)
## Defined of Done (DoD) · scope-change rules
```
