---
name: mkt-email-sequences
description: Email sequence design — welcome, nurture, cart abandonment, re-engagement flows with timing, cadence, and copy structure. Use when user says "email sequence", "drip campaign", "welcome email", "email flow", "abandoned cart email". SMS is out of scope.
license: MIT
metadata:
  source: "coreyhaines31/marketingskills (MIT)"
  category: marketing
---

# Email Sequences — Lifecycle Mail Design

**A sequence's success is not open rate but the completion rate of the next action by the triggered recipient.** Separate newsletters (broadcast) from flows (trigger-based) first — flows create most of the revenue.

## 5 Required Flows (priority order)

1. **Welcome** — right after signup. 3~5 emails within 7 days. Email 1 = the promise (what and when they'll get), 2~3 = first value (direct activation link), 4~5 = proof and usage
2. **Abandoned cart** — 1 hour → 24 hours → 72 hours. Half of conversions happen in the first email. The copy's core is not a reminder but removing objections (shipping cost, security, sizing)
3. **Incomplete onboarding** — targets those who never hit the Aha moment, personalized on behavioral data
4. **Dormant re-engagement** — 30~60 days inactive. Those who fail to re-engage get delisted (delist) — list quality matters far more ruthlessly than open rate
5. **Post-purchase (winback/replenishment)** — placed to match the usage cycle, with the immediate thank-you separated from follow-up guidance

## Design Rules

- **Subject line**: 6~9 words; excluding the recipient's name wins on average — but if you have your own data, follow it. Emoji overuse hurts both deliverability and trust at once
- **Send time**: mornings Tue~Thu, though many B2C cases invert to evenings. Anchor to flow-entry timing, not batch send
- **One CTA rule**: one email = one purpose. A 5-link email dilutes clicks
- **List hygiene**: auto-remove hard bounces; delist after 6 months of no response, then run a re-permission campaign

## Output

```
# Email Sequence — {product/flow}
## Flow map (trigger | email count | interval | purpose)
## Per-email brief (3 subject options, body skeleton, single CTA, timing rationale)
## Segment rules (who enters / who is excluded)
## KPI (per-email completion rate; opens are reference only)
```
