---
name: docs-pdf
description: PDF production — print vs screen route selection, page layout, font embedding, and export verification for reports, ebooks, and one-pagers. Use when user says "make a PDF", "export to PDF", "print-ready", "ebook", "PDF report", or a deliverable must ship as PDF. Editable documents are docs-docx; slides are docs-pptx.
license: MIT
metadata:
  source: "original — distillation of weasyprint/chrome-print/LaTeX tool docs; pattern: agentskills.io"
  category: docs
---

# PDF Production

PDF is a *destination format* — everything is frozen, so every decision (page size, fonts, breaks) must be right before export. Route first, design second.

## Route selection (decide before building anything)
- **Screen report / one-pager / ebook** → HTML + CSS → headless-Chrome/weasyprint print. Best layout control per page, easy iteration.
- **Text-heavy formal doc with equations/long tables** → LaTeX or pandoc→PDF. Best typographic defaults, worst iteration loop.
- **Already a .docx that must stay identical** → export from the office suite, don't rebuild.
- **Form/fillable** → build interactive PDF directly (AcroForm), don't rasterize.

## Layout rules
- Page setup first: size (A4 vs Letter — pick the reader's convention), orientation, margins ≥ 15mm; print adds 3mm bleed only when the printer asks.
- Running header (short title) + footer (page x of y) from page 2; cover page unnumbered.
- Never split: a table across pages without a repeated header row, a heading from its first paragraph, a figure from its caption.
- Type: body ≥ 10.5pt/1.5 for screen, ≥ 10pt for print; measure 60–75 chars; hyphenation off for CJK-heavy text.

## The three silent failures (always check)
1. **Fonts not embedded** — recipient sees substituted type and reflowed layout. Verify embedding, not just "font looks fine here".
2. **Rasterized text** — image-based export breaks search, copy, and accessibility. If it must be scanned, add an OCR text layer.
3. **File bloat** — unoptimized 300dpi screenshots in a screen PDF. Compress images to ~150dpi for screen, keep 300dpi for print.

## Accessibility floor
Tagged structure (headings/reading order), alt text on meaningful images, text contrast ≥ 4.5:1, bookmarks for docs > 10 pages, document metadata (title/lang) set.

## QA before delivery
Open the exported file itself (not the source): page count matches, no clipped text at margins, links resolve, images sharp at 100% zoom, file size sane for its channel (email attachment vs web download).

## Output contract
1. Route decision + why (1 line), page spec (size/margins/typography)
2. The PDF
3. QA report: embedding check result, page count, size, accessibility items
