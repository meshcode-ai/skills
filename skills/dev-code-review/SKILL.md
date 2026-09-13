---
name: dev-code-review
description: Code review with severity-graded findings and evidence per claim — reviews the diff against requirements, not files in isolation. Use when the user asks for a code review, PR review, or diff review, before merging a branch, or after completing a major feature. Also covers the protocol for receiving review feedback without performative agreement.
license: MIT
metadata:
  source: "obra/superpowers — requesting-code-review, receiving-code-review (MIT); awesome-skills/code-review-skill (MIT)"
  category: coding
---

# Dev Code Review

## Review Contract

Review the diff (base..head), never the file in isolation. Every finding cites file:line and states impact. No style nit without a rule or linter backing it.

Severity:

- **Critical** — correctness, data loss, security, concurrency hazards. Must fix before merge
- **Important** — design debt, missing tests for changed behavior, performance. Fix before proceeding
- **Minor** — nits. Note only, no gate

## Judgment Rules

- Review against requirements first — elegant code solving the wrong problem is Critical
- Missing or unwatched-fail tests for changed behavior = Important
- Flag shared-state and concurrency changes explicitly even when they look correct
- Group multiple symptoms under one root cause — one fix, one thread
- Write what's good too. One line. Reinforcing correct patterns is part of the review

## Output Contract

```
# Code Review — {PR or branch}
## Verdict — approve / request changes, 2-line rationale
## Critical — file:line, impact, fix direction (each)
## Important
## Minor
## What's good — one line
```

## Receiving Feedback Protocol

Read fully → restate the requirement in your own words → verify against the codebase → implement one item at a time, each with a test. No "you're absolutely right" before verification. If feedback is technically wrong for this codebase, push back with reasoning — blind implementation is worse than disagreement.
