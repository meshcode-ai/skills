---
name: biz-market-sizing
description: Estimates market size with TAM/SAM/SOM using top-down, bottom-up, and analogous-market methods, then triangulates into a defensible range with sensitivity scenarios. Use when user says "market size", "TAM SAM SOM", "addressable market", or asks whether a market is big enough to enter.
license: MIT
metadata:
  source: "alirezarezvani/claude-skills (MIT) · research-ops/market-research"
  category: biz
---

# Market Sizing — TAM/SAM/SOM

**Triangulation method**: compute with all three methods — top-down, bottom-up, and analogous-market transplant — then cross-check the ranges. If any two methods differ by more than 2×, re-examine assumptions and recompute.

- **TAM** (total): total industry spend. External report citation + publication year required
- **SAM** (serviceable): the portion of TAM reachable given your product, regulation, language, region — state the segmentation criteria explicitly
- **SOM** (obtainable): SAM × channel reach × expected penetration. Outside the initial 1–5% band = unrealistic

The three methods: ① top-down = higher-level statistic × segment share (report-dependent, lowest confidence) ② bottom-up = (customer count × annual spend × scoring rate) or (annual transactions per channel × average order value) — most reliable ③ analogous transplant = apply penetration rates from overseas/other verticals (new markets only; state limitations).

Judgment: SAM outside the 10–30% band of TAM → revisit segmentation criteria. Every figure is cited as a `assumption · source · year` set; estimates carry an [estimate] tag. Never report a single number — always a range.

Data source priority: government statistics & industry reports > public company filings > paid DBs (Similarweb, Statista) > blog citations. Citations must be within 2 years; if source credibility is low, adopt only the lower bound.

## Output
TAM/SAM/SOM table (figure, method, source, year), computation log for all 3 methods, 3 sensitivity scenarios (conservative/base/optimistic), and a one-line go/no-go verdict with rationale.
