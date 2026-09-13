---
name: design-homepage
description: Homepage and landing page design — structure, hero, visual hierarchy, motion restraint, and AI-template tells. Use when user says "design a homepage", "landing page design", "hero section", "website design", or asks to build/redesign a marketing site. Component-level review is design-ui-audit; tokens are design-design-system.
license: MIT
metadata:
  source: "xiaopu-ai/web-design (MIT), anthropics/skills frontend-design (Apache-2.0) — distilled"
  category: design
---

# Homepage / Landing Design

Design like a lead whose client has rejected every templated proposal: the subject's real world (industry, materials, vernacular) is where distinctive choices come from.

## Step 0 — Pin before any pixel
Confirm: what is sold, to whom, and the ONE action the page drives. A kids' toy and a fintech dashboard must not share a look.

## Structure (conversion order)
Hero (identity + promise + primary CTA) → problem in the user's words → solution / max 3 capability blocks → proof (real numbers, logos, testimonials — or explicitly marked placeholders) → pricing or FAQ → CTA repeated. Cut any section that doesn't move the visitor down this order.

## Judgment rules
- **Hero = the most characteristic thing in the subject's world**, in its most fitting form: headline, live demo, image, interactive moment. "Big number + small label + gradient" is the default treatment — only use it when it's genuinely best.
- **Type carries personality.** 1–2 families; if two, clearly distinct. Line length < 80 chars; serif body gets more line-height. Pick faces deliberately, not by habit.
- **Structure encodes information.** 01/02/03 numbering only when content truly is a sequence; every eyebrow/divider/border must carry meaning.
- **One orchestrated motion moment** (a load sequence or single reveal) beats scattered effects. Fade-up per section + hover on every card is the AI default; motion answering a user action is always welcome. Respect `prefers-reduced-motion`.
- **Spend boldness in one place**, keep the rest quiet. Before shipping, remove one decoration.

## AI-template tells — suspect when stacked regardless of subject
cream bg (~#F4F1EA) + serif + terracotta (~#D97757) accent · near-black + one acid accent · broadsheet hairlines with 0 radius · SaaS-card kit (identical rounded cards, one radius, same rgba(0,0,0,.1) shadow, gradient washes) · tracked ALL-CAPS eyebrows, 'A · B · C' middots, 'WORD — fragment' labels, tinted black (#0B0B0B), mono small labels, '→' on every link. All legitimate for some briefs — the failure is using them *regardless of subject*. A pinned brief always wins.

## Quality floor
Responsive to 360px, visible keyboard focus, 4.5:1 contrast (3:1 large/UI), reduced-motion, no layout shift.

## Output contract
1. Design plan: 4–6 named hex values + type roles + ASCII wireframe + the one thing unique to this subject
2. Self-review: any part generatable from a generic prompt → revise, say what changed
3. Build → screenshot critique (mobile + desktop)
4. Report: plan, what was cut, quality-floor checklist
