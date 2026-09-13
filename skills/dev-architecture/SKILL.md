---
name: dev-architecture
description: System design before code — classifies a request as spike, bounded, or architectural and produces the right design artifact with an approval gate. Use when the user asks to design a feature or system, compare technical approaches, structure a new project, write an ADR, or when a change crosses module boundaries or alters interfaces others depend on.
license: MIT
metadata:
  source: "obra/superpowers — brainstorming, writing-plans (MIT)"
  category: coding
---

# Dev Architecture — Design Before Code

## Classify First (say it out loud before the first question)

- **Spike** — a feasibility question ("can we...", "is it possible"). Output is an answer, not kept code. No design doc. Anything built stays labeled throwaway
- **Bounded** — a well-scoped change to a flow that already exists in this repo. Short design IN CHAT (a few paragraphs) covering problem, approach, rejected alternatives, touched files. Then STOP
- **Architectural** — new subsystem, new project, or changes that restructure component boundaries or interfaces. Full spec + implementation plan

When in doubt between two paths, take the heavier one. "Bounded" requires the flow to already exist in code — understanding what kind of app this is does not make a task bounded.

## The Gate

No implementation action until the human approves the stated design. The ceremony scales with the task — the approval gate never does.

## Judgment Rules

- Design units with clear boundaries and one responsibility each. Files that change together live together — split by responsibility, not technical layer
- Follow established codebase patterns. Don't unilaterally restructure an existing style — propose the split in the design instead
- YAGNI — cut everything not required now. DRY only at the third repetition
- Each plan task must produce independently testable software. If two tasks can't be reviewed separately, fold them into one
- State trade-offs as "we get X, we pay Y" — a design with no stated cost is a guess

## Output Contract

**Bounded (chat only):** problem → approach (2-3 sentences) → rejected alternative (1 line) → touched files → wait for approval.

**Architectural (design doc):**
```
# Design — {feature} ({date})
## Context & goals (goals AND non-goals)
## Decision table — option | trade-off | why picked
## Interfaces — module boundaries, contracts, data shapes
## File map — new/changed files with one-line responsibility each
## Task breakdown — each task with its test criteria
## Risks — what breaks if an assumption is wrong
```
