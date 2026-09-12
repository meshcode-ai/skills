---
name: seo-audit
description: Full SEO/AEO audit orchestrator — runs technical, content, schema, backlink, local, AI-search checks in one pass and merges a prioritized report. Use when user says "SEO audit", or wants an overall SEO health report for a site URL.
license: MIT
metadata:
  source: "AgriciDaniel/claude-seo@v2.3.1 (MIT)"
  category: seo
---

# SEO Audit — Orchestrator

Single entry point. Delegate per-dimension work to sibling skills and merge the results into one report.

## Pass Order
1. `seo-technical-audit` — blockers first (indexing suppression, robots, the 2MB cap, AI crawler access). No other fix recommendations until the blocker list is out
2. `seo-content-eeat` — top 5 pages by traffic/importance only (no full-site audits — poor cost/benefit)
3. `seo-schema` — detection/validation, gaps against page intent
4. `seo-backlinks` + brand-mention check (`seo-aeo-geo`)
5. `seo-local` — local/multi-location businesses only
6. `seo-aeo-geo` — citability score, per-platform verdict

## Judgment Rules
- Priority = (expected traffic impact) × (inverse of implementation difficulty). Not "easiest first" but "blocker → high-impact → quick win"
- If 2+ dimensions are broken on one page, group them under a single root cause (e.g. an SPA render failure causing noindex, thin content, and missing schema)
- Don't bound scope from free-tool data — state "this source can't see the full backlink picture" in the report

## Report Contract (fixed output format)
```
# SEO Audit — {domain} ({date})
## Verdict (3-line summary + grade A-F)
## Blockers (only what blocks indexing)
## Top 10 Actions — sorted by impact × effort, each with evidence + owning skill tag
## Appendix — per-dimension score table, data sources and their limits stated
```
Every claim cites evidence (URL/selector/bytes/source). Free-data limits go in the appendix — never hidden.
