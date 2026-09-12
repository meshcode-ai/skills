---
name: seo-backlinks
description: Backlink profile analysis — referring domains, anchor text distribution, toxic link detection, competitor link gap. Works with free sources (Common Crawl, Moz free tier, Bing Webmaster). Use when user says "backlinks", "link profile", "referring domains", "anchor text", "toxic links", "link gap", "disavow", or "backlink audit".
license: MIT
metadata:
  source: "AgriciDaniel/claude-seo@v2.3.1 (MIT)"
  category: seo
---

# Backlink Profile

## Data Sources (Free First)
Common Crawl index (always available), Moz free tier, Bing Webmaster. **Always state which sources you used and their coverage limits** — never present free-source data as complete. Paid APIs only when the user has keys.

## Framework
- Referring domains ÷ total links ratio collapsing = link-scheme smell
- Exact-match anchors >~20% = over-optimization risk
- Toxic links: link networks, irrelevant or spam-adjacent sites → disavow candidates only when evidence exists
- Competitor gap: domains linking to 2+ competitors but not us = outreach targets

Correlation with AI citations is weak (~0.27) vs brand mentions (~0.74) → run alongside `seo-aeo-geo`.

## Output
Health 0-100, anchor distribution table, evidence-backed toxic candidates, top 10 gap domains.
