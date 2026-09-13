---
name: design-ui-audit
description: UI design review — grades hierarchy, spacing, typography, color, consistency, accessibility of a page or component set, then ranks fixes by impact. Use when user says "design review", "UI audit", "critique this UI", "why does this look off", or shares a URL/screenshot for design feedback. Building from scratch is design-homepage; token architecture is design-design-system.
license: MIT
metadata:
  source: "anthropics/skills frontend-design (Apache-2.0) — distilled; audit contract original"
  category: design
---

# UI Design Audit

A review, not a redesign: grade what exists, cite evidence, rank fixes. Audit execution against the product's own stated direction — don't impose a new identity.

## Audit axes — score A–F, each grade cites a specific element
1. **Hierarchy** — 1-second test: what reads first, second, third? If everything is emphasized, nothing is. Size/weight/color/position must pull the same direction.
2. **Spacing** — a system exists (4/8pt grid) or it doesn't. Tell: arbitrary values (13px, 27px). Rule: between-section whitespace > within-section; related items closer than unrelated.
3. **Typography** — ≤ 2 families, a real scale (ratio 1.25 or 1.333) not per-element sizes, line length < 80 chars, body ≥ 16px. Tells: ALL-CAPS everywhere, 3+ weights in one paragraph, single-word colored highlights in headlines.
4. **Color** — one 9-step neutral scale + 1–2 accents + status colors. Tells: several near-blacks, accent spent on decoration so it stops signaling, tinted neutrals that muddy contrast.
5. **Consistency** — same action = same look. Equal-weight buttons styled equally; one radius scale; one shadow recipe (≤ 3 elevations).
6. **Accessibility** — 4.5:1 text (3:1 large), visible focus ring, targets ≥ 44px, alt text, `prefers-reduced-motion`.

## Failure patterns to check explicitly
SaaS-card kit flattening hierarchy · decorative eyebrows/numbers/dividers carrying no information · fade-up on every section + hover on every card · more than one primary CTA style per viewport · live placeholder tells (lorem, gray boxes, default avatars).

## Priority formula
Priority = impact on the page's ONE goal × 1/difficulty. Blockers → high-impact → quick wins; never easiest-first.

## Output contract (fixed)
```
# UI Audit — {page} ({date})
## Verdict — 3 lines + overall grade
## Score table — axis | grade | evidence (selector/element)
## Top 10 fixes — what, why (axis), effort S/M/L, expected effect
## Out of scope — what needs a redesign, not an audit
```
"Feels cluttered" is not a finding; "7 competing h2 sizes in one viewport" is.
