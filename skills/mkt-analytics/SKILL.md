---
name: mkt-analytics
description: Analytics measurement plan — event tracking design, GA4 structure, KPI tree, data quality audit. Use when user says "analytics setup", "event tracking", "measurement plan", "KPI definition", "GA4". Channel attribution logic is mkt-attribution.
license: MIT
metadata:
  source: "coreyhaines31/marketingskills (MIT)"
  category: marketing
---

# Marketing Analytics — Measurement Design

**Decide what you measure, when, and how first; pick the tool afterward.** Tools (Google Analytics, PostHog, etc.) are just options — without a plan, any tool produces garbage.

## KPI Tree (top → bottom)

1. **North Star** — a direct proxy for the value the product creates (e.g. weekly active teams, not logins)
2. **Input metrics** — the 3~5 behaviors that move the North Star (early activation rate, weekly retention, paid conversion rate)
3. **Diagnostic** — used to trace root causes. Anything below level 3 stays off the dashboard (50 metrics = 0 metrics)

## Event Design Rules

- Event naming: `object_action` in lowercase snake_case (`checkout_started`); no past tense, no duplicates
- Cap core events at **≤15**. Pull context from properties instead of adding events
- Every event must carry either `user_id` (post-login) or an anonymous ID (pre-login) — otherwise sessions can't be stitched
- Explicitly separate micro- vs macro-conversions: only macro (purchase etc.) counts as a KPI; micro (clicks etc.) is diagnostic

## Quality Audit Checklist

- No double-fired events (triggered from both modal and redirect paths)
- Test traffic and internal IPs filtered out
- No conflicts between per-channel UTM auto-rules and manual tagging
- Debugging: verify one real user's journey captures end-to-end on the timeline before shipping

## Output

```
# Measurement Plan — {product}
## KPI Tree (North Star → inputs → diagnostics)
## Event spec table (event name | properties | trigger point | owning screen)
## Quality defects list (if any, by severity)
## Implementation checklist (with review criteria)
```
