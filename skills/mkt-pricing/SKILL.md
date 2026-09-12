---
name: mkt-pricing
description: Pricing and packaging — model selection, tier design, WTP research, price change plans. Use when user says "pricing strategy", "pricing model", "packaging", "WTP". Single promo/offer design is mkt-offers.
license: MIT
metadata:
  source: "coreyhaines31/marketingskills (MIT)"
  category: marketing
---

# Pricing — Pricing & Packaging Strategy

**Price is the only lever among the 4Ps that fully determines margin.** A 1% price increase usually lifts profit ~10% (assuming price elasticity <1). It's a far bigger lever than copy or ads, so don't leave it for last — put it first in line to validate.

## Model Selection

| Model | Fits | Risk |
|---|---|---|
| Per-seat/user | Collaboration tools | Gate spread is slow |
| Usage | Infrastructure/API | Revenue unforecastable |
| Hybrid | Most B2B SaaS | Billing design is complex |
| Flat price | Simple products | Misses segment margin |

## Tier Design (3 tiers as the default, never exceed 4)

- Place the best-selling tier in the middle (visible default = middle, premium acts as the anchor)
- Differentiate tiers only **where value accumulates** (e.g. team features, API, SSO). Arbitrary feature gating causes churn and complaints
- Do the top 20% of payers sit on the top tier? If not, redesign the tier boundaries

## WTP Research & Price Changes

- Customer research asks not "how much would you pay" but **trade-off questions against alternatives** (current substitute cost, reaction to competitor comparisons)
- Derive a candidate range with the Van Westendorp 4 questions (too expensive / cheap / too expensive to consider / too cheap to trust), then A/B within that range
- **Price increase execution rule**: existing customers get at least 60 days advance notice plus a grandfathering option (1-year grace). Unnotified increases are the #1 cause of churn and review explosions

## Output

```
# Pricing Proposal — {product}
## Model selection + rationale (including usage volatility)
## Tier table (tier | price | target | included value | 20% goal)
## WTP evidence (research method + result summary)
## Price change execution plan (including communication, existing-customer rules)
## Expected impact (conversion/LTV estimates, assumptions stated)
```
