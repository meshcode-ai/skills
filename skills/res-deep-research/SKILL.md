---
name: res-deep-research
description: Multi-source deep research with citation-grade synthesis — frames the question, gathers primary/official sources, resolves conflicts, delivers a sourced verdict. Use when user says "deep research", "research this thoroughly", or asks a broad factual question needing verified web sources.
license: MIT
metadata:
  source: "alirezarezvani/claude-skills@research/ (MIT)"
  category: research
---

# Deep Research

## Question framing
Before investigating, fix three things: ① the core question (one sentence) ② the decision it serves (what decision will this inform) ③ the completion criterion (what answer counts as "research done"). If the use is unclear, narrow the scope and state it.

## Confidence hierarchy (prioritize strictly in this order)
1. **Primary sources**: original data, papers, filings, regulatory documents, official specs
2. **Official reports**: governments, regulators, standards bodies, major research firms
3. **Industry sources**: vendor whitepapers, conference talks — declare interests
4. **Press & blogs**: prefer corroboration over exclusives. If they contradict the top 3 tiers, do not adopt them

## Conflict resolution rules
- Conflicting figures: suspect differences in period, sample, and definition first. Cite both side by side and include "why they differ" in the conclusion.
- Single-source claims are labeled as hypotheses, left in falsifiable form (search terms, sources).
- Recency: for tech, pricing, and regulation, prefer sources within 12 months. An older official figure can beat a newer press figure — cite both and state the as-of date.
- Non-web sources (user-supplied documents, official data rooms, etc.) are treated as top-tier primary sources, with the source itself named.

## Output
```
# Deep Research — {topic} ({date})
## One-line conclusion (≤3 lines)
## Key facts table (fact | source URL | source tier 1–4 | confidence)
## Counterarguments & unverified items
## Next 3 research steps (or state "research complete")
```
