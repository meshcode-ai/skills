---
name: docs-docx
description: Document generation — report/proposal structure, heading hierarchy, styles, and producing verified .docx files via pandoc or docx libraries. Use when user says "write a report", "make a document", "Word file", "docx", "proposal document", or needs a formal long-form document delivered as a file. Slides are docs-pptx; print-ready PDF is docs-pdf.
license: MIT
metadata:
  source: "original — distillation of pandoc/tool docs and document craft; pattern: agentskills.io"
  category: docs
---

# Document (DOCX) Generation

A document is read, searched, and edited by others after you leave. Structure and styles are the product; prose fills them.

## Step 0 — Type decides structure
Report (findings → evidence → recommendations) · proposal (problem → options → recommendation → cost/timeline) · memo (BLUF: bottom line up front, 1 page preferred) · spec/contract draft (numbered clauses, defined terms). Confirm type + audience + length expectation before writing. When the reader is an executive: summary page first, always.

## Structure rules
- Cover (title, author, date, version) → 1-page executive summary → body → appendix. The summary is written LAST but placed first.
- Heading depth ≤ 3 levels; every heading is a claim or a clear topic — "Market shrunk 12%" beats "Market situation".
- Tables carry numbers, prose carries meaning — never dump a table without the sentence that says what it proves. Long tables go to appendix; reference them.
- One idea per paragraph; paragraphs ≤ 5 sentences. Front-load the point (readers skim first sentences).

## Styles are not decoration
Use real Word heading styles — they generate the TOC, navigation pane, and accessibility structure. Body text uses the body style, not manual bolding. Page breaks before major sections; header/footer with title + page numbers. If the org has a template, its styles win.

## Generation route
Markdown source → pandoc with a `reference.docx` template (fastest, best for text-heavy docs) · full layout control → docx libraries (docx-js / python-docx) · editing an existing file → modify content against its styles; never pretty-print the underlying XML (corrupts the file).

## QA (required — never deliver unverified)
1. Reopen or extract text and verify: no truncation, no mangled characters (Korean/CJK font fallback is the classic break)
2. Tables intact at page width; no orphan headings (heading at page bottom, content on next page)
3. TOC fields up to date; page numbers render
4. Compare against source data: every number traceable

## Output contract
1. Outline (section | purpose | evidence needed) → approval for long docs (> 5 pages)
2. The .docx file
3. QA report: verification method + findings + fixes
