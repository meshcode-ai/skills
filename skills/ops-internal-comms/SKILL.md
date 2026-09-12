---
name: ops-internal-comms
description: Draft a sequenced internal change announcement — re-org, tool rollout, policy change, layoff — with manager cascade, FAQ, and a touchpoint calendar. Use when user says "announcement", "all-hands", "re-org", "rollout comms", "manager talking points". Audience is employees, not customers.
license: MIT
metadata:
  source: "alirezarezvani/claude-skills business-operations/internal-comms@v2.8.0 (MIT)"
  category: ops
---

# Internal Comms — Change Announcement Package

**One announcement is not a communication plan.** The grounded floor for a behavior change is **5–7 touchpoints** (Prosci). If managers aren't pre-briefed, the announcement collapses in the field immediately.

## Tone · Scale Check
- **Scale grade**: low / medium / high / **disruptive**. A re-org (layoff) is always `disruptive` — downgrading it to "a minor restructure" locks in the failure mode.
- Tone bans: no "exciting news" framing for disruptive; no "minor change" for high.
- **Audience segmentation**: all-hands is not automatically right — managers / ICs / affected teams / unaffected teams each need a different frame.

## Sequence · Channels (ADKAR: Awareness → Desire → Knowledge → Ability → Reinforcement)
- **Cascade order**: managers → ICs (24–48h lead time + talking points); affected teams → everyone else. Never announce both at the same event.
- **Touchpoint calendar**: relative T-N / T+N dates, channel, owner, ADKAR stage, key message. Minimum 5, target 7, three or more channel types.
- **Match channel to scale**: when trust is at stake (high/disruptive), a synchronous channel (town hall, 1:1) is mandatory. Slack alone = banned.
- **Seed the FAQ ≥7**: reporting lines, compensation, roles, timing, why now, why us, geography. The question most likely to be buried goes first — omitting it becomes the Glassdoor narrative.
- **Named accountable owner**: at least one VP+ signs the announcement and attends the town hall. Don't hide the owner behind passive voice ("it has been decided").

## Output
```
# Communication Package — {change} (scale: {grade})
## Primary announcement (Kotter 8-step structure, named accountable owner)
## Touchpoint calendar (T±N | channel | owner | ADKAR | message)
## Manager talking points (3 expected Qs + unresolved items)
## FAQ (≥7 items)
## 30/60/90 success measures (attrition, pulse trust, cascade audit)
```
