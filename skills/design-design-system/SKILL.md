---
name: design-design-system
description: Design system and design tokens — token layering (primitive → semantic → component), minimal token set, dark mode, and legacy migration mapping. Use when user says "design system", "design tokens", "token architecture", "dark mode tokens", "unify our styles", or when inconsistent colors/spacing across a product needs a system fix. Single-page design is design-homepage.
license: MIT
metadata:
  source: "anthropics/skills theme-factory & frontend-design (Apache-2.0) — distilled"
  category: design
---

# Design System / Tokens

A design system is decisions recorded once and referenced everywhere. Start with the smallest set that kills inconsistency — not a component library for its own sake.

## Token layers (keep them strictly ordered)
1. **Primitive** — raw values, no meaning: `gray-50…900`, `blue-500`, `space-4`. Never used directly in components.
2. **Semantic** — meaning-bound: `bg-surface`, `text-primary`, `border-subtle`, `accent-default`, `space-section`. Dark mode swaps *only* this layer.
3. **Component** — `button-primary-bg`, `card-padding`. Thin layer; most systems don't need it until component count > ~20.

## Minimal token set
- **Color**: neutral scale 9 steps + accent 1–2 + status 4 (success/warning/error/info) + each semantic role mapped. Near-black is `neutral-900`, not a random #0B0B0B per component.
- **Type**: display/h1–h4/body/small/caption; fluid clamp() where marketing meets product; ≤ 2 families, weights ≤ 4 per family.
- **Space**: 4pt base (4/8/12/16/24/32/48/64). Radius: 3 steps max. Shadow: 3 elevations max.
- **Motion**: duration tokens (fast/base/slow ≈ 150/250/400ms) + one easing family; reduced-motion flips durations to ~0.
- **z-index**: documented scale (sticky < overlay < modal < toast), no magic numbers.

## Migration rule (greenfield is easy; the real job is legacy)
New tokens don't replace old values by grep alone. Build a mapping table first: every legacy value → nearest token → delta (exact / visual match / deliberate change). Deliberate changes are a design decision list, reviewed before codemod. Ship in two steps: tokens alongside old values, then switch consumers.

## Output contract
1. Token inventory report: what exists today, clustered by value (find near-duplicates: #4B5563 vs #4A5568)
2. `tokens.json` (or CSS custom properties) — all three layers, dark-mode pairings included
3. Usage principles: 1 page — when to use accent, spacing rules, type roles
4. Migration mapping table with the deliberate-change list
5. Verification: grep for hardcoded values post-migration; report residue count
