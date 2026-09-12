---
name: exec-decision-memo
description: Structures executive decisions — option set, reversibility test, weighted criteria, premortem, and a reviewable decision record. Use when user says "decision memo", "how to decide", or "premortem".
license: MIT
metadata:
  source: "alirezarezvani/claude-skills (MIT) · c-level-advisor"
  category: exec
---

# Decision Memo — Executive Decisions

## Premise
A good decision ≠ a good outcome. A decision memo is not a proof of the right answer but a **time-stamped judgment record** — only when the procedure and assumptions survive does it become a learning asset.

## Structure
1. **Problem definition** — one sentence. Mix the problem definition into the options and nobody will agree
2. **≥2 options + do nothing** — a single option isn't a decision, it's execution approval
3. **Explicit criteria** — strategic fit, impact scale, cost of reversal, urgency. Fix weights in advance and score
4. **Assumption register** — 2–3 core assumptions per option, with validation method and deadline
5. **Premortem** — if it failed 6 months from now, record 3 likely causes first (blocks hope bias)
6. **Decision & deadline** — who decides, and the review point (2 weeks for reversible decisions; quarterly for semi-permanent ones)

## Discriminator
When cost of reversal is low, speed wins (trim documentation). When brand, regulation, or impossibility of exit are entangled, classify as semi-permanent and force a review loop.

## Quality gate
- "2 options but one is a copy of the other" → effectively 1 option. Generate a real alternative and restart
- If you score by criteria, then change the weights because you dislike the result, that decision is struck from the record
- A decision memo without a review point must not be approved

## Output
1 decision memo (6 sections), criteria-by-option scorecard, premortem results, review schedule.
