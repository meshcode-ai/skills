---
name: biz-prd
description: Writes a PRD from an idea, meeting notes, or existing code — problem, goals/non-goals, user stories, FR/NFR, success metrics, MoSCoW priority, and acceptance criteria. Use when user says "PRD", "product requirements document", "code to PRD", or "feature spec".
license: MIT
metadata:
  source: "alirezarezvani/claude-skills (MIT) · product-team/code-to-prd"
  category: biz
---

# PRD (Product Requirements Document)

**Fixed structure**: ① Problem/opportunity (whose, why now) ② Goals / non-goals (explicitly state what's out of scope — without them you get scope creep) ③ User stories (_As a ~ I want ~ so that ~_) ④ Functional requirements FR (each = ID + Given/When/Then) ⑤ Non-functional requirements NFR (performance, security, availability — with numbers) ⑥ Success metrics (measurable before/after, ≤3) ⑦ Dependencies, risks, open questions.

**Decision criteria**: requirements must be verifiable — never "fast", say "within p95 200ms". A PRD without non-goals must not be approved. Prioritize with MoSCoW (Must/Should/Could/Won't) — Must contains only survival conditions for this release; the combined Should+Could total stays at or below 2× the Must count. For NFRs, specify only those that deviate from the team's defaults (listing everything is noise).

Code → PRD: read existing code, issues, and conversations and deserialize them into the structure above — promoting implicit decisions in the code (error policies, defaults) into explicit requirements.

Quality gate: does each FR contradict a non-goal, are NFRs testable numbers, can success metrics be measured on a dashboard — if any answer is no, reject and fix. A PRD is a record of decisions, not an essay (decisions left as open items come back as rework during implementation).

## Output
Full PRD (markdown), MoSCoW priority table, open questions & risks list, approval checklist.
