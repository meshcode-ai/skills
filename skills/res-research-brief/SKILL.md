---
name: res-research-brief
description: Research brief writing — turns a fuzzy topic into a scoped, decision-oriented brief with questions, success criteria, and an executable plan others can run. Use when user says "research brief", or needs to hand off a research task with clear scope.
license: MIT
metadata:
  source: "alirezarezvani/claude-skills@research/ (MIT)"
  category: research
---

# Research Brief

## The brief's job
Fix **"what decision, and what answer lets me make it"**, not "what to investigate". If the investigation itself is the goal, that's execution, not a brief (→ `res-deep-research`).

## Components (6 sections)
1. **Context & purpose**: why now, and the single decision this output will inform — in one sentence.
2. **3–5 core questions**: each with a one-liner "if we get this answer, what do we do". Each question must be independently searchable.
3. **Scope & exclusions**: included regions, periods, languages + **what is explicitly excluded**. A brief without exclusions has failed scoping.
4. **Success criteria**: pre-agree what level of evidence (number of primary sources, sample size, etc.) counts as "research complete".
5. **Constraints**: deadline, confidentiality, accessible data, excluded channels.
6. **Output contract**: audience (decision-maker), length, lead-in format.

## Quality check
- Is every question observable — rewrite any "what do you think"-style opinion question.
- Plan for missing data: define "if no primary sources, the second-tier fallback evidence" alongside.
- Is it a scope achievable in 2 weeks of research — if not, split into 3 questions and write a separate brief.

## Output
```
# Research Brief — {topic}
## Decision sentence (the one decision this research informs)
## Core questions (question | if answered → action | success criteria)
## Scope · exclusions · constraints table
## Research plan (approach per source tier + output format)
```
