---
name: res-survey-design
description: Survey and questionnaire design — sampling plan, sample-size math, question wording, order and non-response bias checks, analysis-ready instrument. Use when user says "survey design", or needs quantitative validation of a hypothesis.
license: MIT
metadata:
  source: "alirezarezvani/claude-skills@research/ (MIT)"
  category: research
---

# Survey Design

## Sampling plan
- First distinguish the survey's purpose: **proportion estimation** vs. **group comparison** — the math differs.
- Minimum sample for proportion estimation: at 95% confidence, ±5% margin, assuming p=0.5 → **n≈384** (a benchmark independent of population size). ±3% requires n≈1067.
- Group comparison: minimum 100 per group; for a medium effect size (d=0.5), n≈64 per group.
- Proportional allocation: distribute to match population distribution (age, region, channel). **Bias arises from the sampling procedure, not the sample itself** — randomness and channel diversification are key.

## Question design principles
- 1 question = 1 concept. No double negatives, no jargon.
- Options: MECE + "other (specify)" + "don't know" kept separate — folding "don't know" into "other" skews the distribution.
- Order bias: split key evaluation questions before and after explanations to test the priming effect. Past-behavior questions are more accurate than attitude questions.
- One consistent scale: use a single 5-point Likert throughout; add 2 bipolar items to test response consistency.
- Pilot n=20–30: check drop-off points, completion time, and ambiguous items, then revise.

## Bias checks
Non-response bias (compare respondents vs. non-respondents) · self-selection bias (diversify recruiting channels) · social desirability bias (state anonymity explicitly, place sensitive questions later).

## Output
```
# Survey Instrument — {purpose}
## Sampling design (population · channels · n rationale · allocation)
## Questionnaire (question | type | scale | order | measured variable)
## Bias risk table (bias | mitigation)
## Analysis plan (cross-tabs & tests, pre-registered variables)
```
