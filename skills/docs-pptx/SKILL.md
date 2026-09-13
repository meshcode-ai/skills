---
name: docs-pptx
description: Presentation generation — deck storyline, slide-by-slide outline, chart choice, and generating/editing .pptx files with overflow and font QA. Use when user says "make a presentation", "build a deck", "PowerPoint", "pptx", "investor deck slides", or needs slides from notes/data. Written reports are docs-docx; visual identity beyond the deck is design-design-system.
license: MIT
metadata:
  source: "original — distillation of pptxgenjs/python-pptx tool docs and deck craft; pattern: agentskills.io"
  category: docs
---

# Presentation (PPTX) Generation

Slides are a delivery medium for one argument, not a document. Decide the argument before generating a single slide.

## Step 0 — Scope
Audience, decision wanted, and slot length. Slide budget ≈ 1–2/min (a 20-min all-hands ≈ 15–25 slides). If notes exceed the slot, cut content — never shrink type below legibility to fit.

## Storyline (pyramid: conclusion first)
Summary slide with the ask → 3 supporting arguments max, one slide each (deeper data on backup slides) → risks/objections pre-answered → next action with owner+date. Every slide gets ONE message stated in its title (a claim, not a topic label — "Churn drops 40% after onboarding v2", not "Onboarding analysis").

## Slide craft
- **Chart by question:** comparison → bar · trend → line · composition → 100% stacked · relationship → scatter · single number → big-number callout. Kill pie charts > 5 slices and dual axes. Label directly on marks instead of legends where possible.
- **Type floor:** title ≥ 28pt, body ≥ 18pt, nothing below 14pt. Projected decks ≠ emailed decks — design for the back row.
- **Density:** ≤ 6 bullets × ≤ 6 words is a ceiling, not a goal — one message per slide beats any rule. If a slide needs narration to be understood later, put the detail in the speaker notes.
- **Consistency:** one master layout set, one palette, one type scale. Decorative structure (numbered sections) only if the deck is actually sequential.

## Generation route
New deck → pptxgenjs (layout control, repeatable) or python-pptx. Editing an existing company template → edit content against its layouts; slide reorder/delete means touching `p:sldIdLst`, content lives in `slideN.xml` — verify by reopening, never trust raw XML edits blind.

## QA (required before delivery — file AND visual)
1. Text overflow: longest string per textbox at target font size — autofit lies
2. Fonts: no unintended fallback (missing font substitutes silently and shifts layout)
3. Charts: axis ranges honest (zero baseline for bars), units on labels
4. File integrity: reopen/convert to images and eyeball every slide — broken files ship otherwise
5. Content: numbers match the source data, no placeholder text

## Output contract
1. Outline: slide # | title-as-claim | content type (text/chart/big-number/image) | speaker-note gist → **get approval before generating**
2. The .pptx file
3. QA report: overflow/font/chart findings and what was fixed
