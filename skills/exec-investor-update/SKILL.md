---
name: exec-investor-update
description: Writes monthly investor updates — highlights, lowlights, metric tables, and specific asks — with consistent metric definitions and runway narrative. Use when user says "investor update", "board report", or .
license: MIT
metadata:
  source: "alirezarezvani/claude-skills (MIT) · finance"
  category: exec
---

# Investor Update

## Fixed structure (monthly, readable in 15 minutes)
1. **Highlights** — up to 3 best things this month, in numbers
2. **Lowlights** — **bad news first, and fast**. A hidden fact shatters all trust in the next round
3. **Metrics** — one table: MRR, net retention (NRR), new customers, churn & channels, cash balance & runway. Shown against last month and target
4. **Ask** — connections, advice, hiring help needed, **specifically**. Write "nothing major" and nobody helps

## Metric definition consistency
Document the MRR inclusions (bookings, VAT, credits) and keep them identical every month — if the definition changes, trend comparison becomes meaningless. When scaling to a board report, add **performance – metrics – strategy progress – risks – requests** to the same skeleton. Runway is always the 3-item set: balance + monthly burn + months remaining. In bridge or emergency phases, attach a 13-week cash flow summary.

## Tone rule
Never attach two narratives to one number (e.g., "MRR is growing… although churn is worrying"). One conclusion per message. When 10 investors can quote the same sentence, referrals happen.

## Failure patterns
Marking "no problems" (→ trust collapse next month), swapping metrics monthly (→ no trends), sending without an ask (→ investor engagement opportunity lost). Fix the send to within the first 5 business days of the month — the rhythm itself is a signal.

## Output
1 monthly update (4 sections), metric definition table, next month's actions and send reminder.
