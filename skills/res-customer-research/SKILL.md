---
name: res-customer-research
description: Customer and user research — interview guides, JTBD framing, evidence-based insight synthesis, and bias controls. Use when user says "customer research", "user research", or needs to understand why users buy, stay, or churn.
license: MIT
metadata:
  source: "alirezarezvani/claude-skills@research/ (MIT)"
  category: research
---

# Customer Research

## Interview design
- **Behavior-only questions**: "Walk me through the specific situation when you last solved {problem}." Opinion/hypothesis questions ("Would you want this feature?") are banned — responses are valid only as past behavior, not attitudes.
- Format: verify recent behavior → deep dive on one actual case (~20 min) → frustration points → current alternatives (competing product, spreadsheets, memory).
- Sampling: 5 people per segment = the pattern-capture threshold. If no common pattern emerges from 5, the segment definition is wrong.

## JTBD framing
Translate feature requests ("make the button bigger") into the higher-level job: "what was I trying to finish when this request came up, and when." A request ≠ a need. Treat requests as clues only, and always label your interpretation.

## Bias checklist
- Familiarity bias (interviewing people you know) · winner bias (current customers only) · recall bias (memory distortion) · hope bias (leading toward the answer you want) · active-user bias (never talking to churned users)
- **Churned-user interviews carry the most information** — aim for at least 3.
- Never state internal figures (frequency, conversion rate) as settled fact without cross-validation.

## Output
```
# Customer Research — {segment} (n={count})
## 3–5 key findings (each: evidence citation | frequency | counterexample)
## JTBD table (situation | definition of done | current alternative)
## Bias limits (who did we not talk to)
## Hypotheses to validate + next actions
```
