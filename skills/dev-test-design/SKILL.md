---
name: dev-test-design
description: Test design before implementation — turns requirements into a test-case matrix (happy path, boundary values, invalid input, edge cases) and enforces red-green-refactor. Use when the user asks to design tests, write a test plan, raise coverage, or review test quality. Also use before implementing any feature or bugfix.
license: MIT
metadata:
  source: "obra/superpowers — test-driven-development, verification-before-completion (MIT)"
  category: coding
---

# Dev Test Design

## The Iron Law

```
NO PRODUCTION CODE WITHOUT A FAILING TEST WATCHED FIRST
```

A test that never failed is unverified — you don't know it tests the right thing. Wrote code before the test? Delete it and start fresh, don't keep it as "reference".

## Test-Case Matrix (design phase, before any code)

For each behavior, generate rows in priority order:

| Row type | Question it answers |
|---|---|
| Happy path | Does the main flow work end to end |
| Boundary values | Off-by-one, empty, max, exactly-at-limit |
| Invalid input | Wrong type, missing field, oversized — error path is behavior too |
| Regression | Recreate the past bug that this fixes |
| Concurrency/idempotency | When state or retries are involved — only then |

Prioritize business-critical paths first, then boundaries, then regressions. Cut nice-to-have rows openly — say which and why.

## Red-Green-Refactor

1. Write the failing test. RUN it. Read the failure output and name the expected error
2. Write the minimal code that passes
3. Refactor with the bar green

## Judgment Rules

- Test behavior, not implementation — a pure refactor must not break tests
- Name tests as specifications ("rejects invoice over 10M") — the test suite is the spec
- Mock at system boundaries only. Over-mocking hides integration bugs
- A flaky test is a bug. Quarantine and fix it — never ship a retry loop
- Coverage % is a smell finder, not a goal. The matrix is the goal

## Verification Gate

Completion claims require fresh evidence — the test command run in this turn with 0 failures in its output. "Should pass" is not evidence.
