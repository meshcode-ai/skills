---
name: ops-meetings
description: Design meetings that earn their cost — decide the type, build a decision-grade agenda with DRI, and calculate the burn rate. Use when user says "meeting agenda", "retro", "1:1", "standup", "who should attend". Also kills meetings that should not exist.
license: MIT
metadata:
  source: "meshcode curation — High Output Management (Grove), Amazon Working Backwards, agile retro canon (MIT-derived)"
  category: ops
---

# Meetings — Type, Agenda, and Incineration

**The default for a meeting is "don't hold it."** If you can cut it, cut it; if it stays, shape it to its type. Every meeting costs attendees × hourly rate × minutes (10 × ₩60k × 60 min = ₩600k).

## Choose the Type (pick one first)
| Type | Purpose | Output | Length |
|---|---|---|---|
| Decision | Reach a conclusion | Decision record + DRI | 30–45m |
| Standup | Coordinate | Remove blockers | ≤15m |
| 1:1 | Coaching, trust | The reportee holds the floor | 30m |
| Retro | Improve | ≤3 action items | 45–60m |
| Brainstorm | Diverge | Candidate list | 60m |
| Informational | Broadcast | → replace with a doc/video |

## Agenda Protocol
- No meeting without a **one-line purpose + an explicit decision to be made**. Name one DRI (single decider); attend only if you're needed to decide or execute.
- For decision meetings, send the **pre-read (opener) at T-24h** and spend meeting time only on discussion and deciding.
- Facilitation: diverge (2 minutes each) → converge → **explicit consensus/decision method** (DRI calls it / majority / no objections) → close.
- **Roles**: facilitator, note-taker (or auto-recording), timekeeper.
- **Close-out accounting**: record decisions, actions (owner + deadline), and parked items, and distribute within 24h. Not written down means the meeting didn't happen.

## Meeting Incineration Criteria
- If it's among decision/advice/notice and is **notice alone** → make it a document · over 8 attendees → make attendance optional · a retro-loop pattern (same discussion 2+ times) means you failed to name the bottleneck → hand off to `ops-process-mapper`.

## Output
```
# {Type} Agenda — {topic} ({date} · {n}p)
## Attendees (DRI, roles, required vs optional)
## Agenda (item | owner | target time)
## Pre-read materials (T-24h)
## Decision · action template (with owner + deadline)
```
