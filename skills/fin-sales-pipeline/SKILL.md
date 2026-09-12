---
name: fin-sales-pipeline
description: Manages the sales pipeline — buyer-evidence stage criteria, pipeline coverage ratio (3x), sales velocity formula, win rate consistency, and stalled deal cleanup. Use when user says "sales pipeline", "pipeline coverage", "deal stages", "sales velocity", or "stalled deals".
license: MIT
metadata:
  source: "alirezarezvani/claude-skills (MIT) · commercial"
  category: exec
---

# Sales Pipeline

## Stage definitions — buyer-evidence based
Move stages from sales activities to **actions the buyer took**: discovery → meeting held → needs agreed (documented) → pricing presentation agreed → contract review. Activity-based stages are usually front-loaded, inflating the pipeline.

## Coverage ratio
Target ÷ average deal size = required number of opportunities. On new pipeline, **3x coverage** is the baseline — the longer the cycle and the lower the win rate, the more you need 4x+. Multiplying by stage conversion rates yields the required opportunities per stage. Coverage is built linearly every week, not in the final week.

## Velocity · win rate
**Pipeline velocity = #opportunities × average deal size × win rate ÷ average cycle length (days)**. Use sensitivity to pick which of the 4 levers to move. Win rate requires definition consistency — removing cancelled opportunities from the denominator inflates it (keep the as-of-opportunity-creation basis).

## Sludge removal
Deals with 2 consecutive non-responses, or that sit in one stage beyond 2 cycles, are auto-flagged → keep or kill decisions with rationale. A low performer's tell is not opportunity count but stage-move speed.

## Output
Opportunities and conversion rate per stage table, coverage diagnosis (× vs. target), sensitivity across the 4 velocity elements, disposition of 3 sludge deals.
