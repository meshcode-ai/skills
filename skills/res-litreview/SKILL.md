---
name: res-litreview
description: Structured literature review — search strategy, inclusion/exclusion screening, quality appraisal, and synthesis map of a research field. Use when user says "literature review", "lit review", or needs to map what is already known about a topic.
license: MIT
metadata:
  source: "alirezarezvani/claude-skills@research/ (MIT)"
  category: research
---

# Literature Review

## Search strategy
- Separate databases: academic (Google Scholar, Scopus, PubMed, etc.) vs. industry (reports, blogs) — do not mix them in one section.
- Search terms: 2–3 core concepts × synonyms/English aliases. Record which query was run on which database (reproducibility).
- Snowballing: expand citations and cited-by of 3 representative papers one generation at a time. Discovery usually saturates at 20–40 papers total.

## Screening criteria (PRISMA flow)
1. Title/abstract → include/exclude. **Record a one-line exclusion reason for each** (to address bias disputes later).
2. Full-text appraisal: ① study-design tier (experiment > cohort > cross-sectional > case report) ② sample size & representativeness ③ data & code availability ④ journal/source credibility ⑤ conflicts of interest & funding.
3. Duplicate studies of the same finding count as 1 meta-unit — organize by finding, not by study.

## Synthesis principles
- The unit is the **finding**, not the study name: what was found, in whom, how it was established.
- Split findings into 3 groups: replicated / single-study / conflicting. Interpret conflicts via sample, period, and measurement differences where possible.
- Mark research gaps explicitly as "unknown". Do not manufacture conclusions without evidence.

## Output
```
# Literature Review — {topic}
## Position paper (3 lines: what is settled in this field)
## Findings table (claim | replication level | strongest evidence | conflicting?)
## Gaps & limitations (by study design)
## Search log (database · query · included/excluded counts)
```
