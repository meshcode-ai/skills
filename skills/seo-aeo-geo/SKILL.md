---
name: seo-aeo-geo
description: AI search optimization (AEO/GEO) — AI Overviews, ChatGPT search, Perplexity visibility. Citability, brand-mention strategy, AI crawler access, platform-specific optimization, llms.txt reality check. Use when user says "AEO", "GEO", "AI Overviews", "AI search visibility", "AI citations", or "LLM optimization".
license: MIT
metadata:
  source: "AgriciDaniel/claude-seo@v2.3.1 + zubair-trabzada/geo-seo-claude (MIT)"
  category: seo
---

# AEO / GEO — AI Search Optimization

## Framing
Google's official stance: **AI search optimization is just SEO**. Where community strategies conflict with Google, Google wins — and flag the contradiction in the report. Ruled invalid by Google: llms.txt as a ranking factor, chunking tuned for LLMs, rewriting sentences for AI, mention farming.

## Core Signal: Brand Mentions > Backlinks (Ahrefs 2025-12, 75k brands)
YouTube ~0.74 > Reddit/Wikipedia high > LinkedIn mid > DR (backlinks) ~0.27 weak.
Domains cited by both ChatGPT and AI Overviews on the same query: **~11%** → per-platform optimization is mandatory.

## Checklist
1. Citability: answer-first opening, paragraphs quotable without context, concrete numbers, question-form headings
2. Entities: consistent brand representation across site · Wikidata · LinkedIn · YouTube
3. Crawler access: open OAI-SearchBot, Claude-SearchBot, PerplexityBot, Googlebot (→ `seo-technical-audit`)
4. Per-platform: ChatGPT = Bing + Reddit/YouTube / Perplexity = own crawl + citations / AI Overviews = Google index
5. Freshness: dates, updates, and byline shown

## Output
Per-dimension 0-100 scores, per-platform verdict, top 5 fixes ranked by expected citation impact.
