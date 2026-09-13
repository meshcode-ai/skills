---
name: seo-schema
description: Detect, validate, and generate Schema.org structured data as JSON-LD — organization/product/FAQ/article/local-business templates, validation against schema.org + rich-result requirements. Use when user says "schema", "structured data", "rich results", "JSON-LD", or "markup". Also use when the user asks about rich results, star ratings in search, or wants Google to better understand their page structure.
license: MIT
metadata:
  source: "AgriciDaniel/claude-seo@v2.3.1 (MIT)"
  category: seo
---

# Schema.org (JSON-LD First)

## Detection
Scan page source for `<script type="application/ld+json">`. Mark microdata/RDFa as legacy. Cross-check found types against page intent — a product page with no `Product` is a gap.

## Validation
- Parses as JSON; `@context: https://schema.org`; `@type` valid
- Check required + recommended properties per type. Rich-result eligibility follows the Google Search Gallery — **state that only some types produce rich results**, and don't build expectations around types that don't
- Unify entities under one `@id`; link Organization ↔ WebSite ↔ breadcrumb to each other via `@id` references

## Core Generation Templates
Organization (`sameAs` with Wikidata/LinkedIn/YouTube — GEO entity crossover), WebSite, BreadcrumbList, Article (+author), Product (+offers, aggregateRating), FAQPage, LocalBusiness (→`seo-local`), HowTo, VideoObject.

## Rules
- No markup of hidden content; no fake reviews/ratings (penalty)
- Complete required fields before optional ones — partial implementation is riskier than none
- FAQPage only for Q&A actually displayed on the page

## Output
Found-vs-missing table, validation errors with line numbers, paste-ready JSON-LD blocks, expected rich-result impact per type.
