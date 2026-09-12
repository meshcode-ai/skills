---
name: res-patent-landscape
description: Patent landscape and freedom-to-operate analysis — IPC/CPC classification mapping, assignee and citation clustering, white-space and risk screening. Use when user says "patent landscape", "FTO", or before launching a product in a crowded tech field.
license: MIT
metadata:
  source: "alirezarezvani/claude-skills@research/ (MIT)"
  category: research
---

# Patent Landscape

## Search design
- **Do not rely on keywords — IPC/CPC classification is the axis**: classification codes solve the problem of the same technology filed under different terms.
- Procedure: ① secure 3–5 representative patents → ② extract their IPC/CPC codes → ③ search classification codes in full, in parallel with technical terms → ④ expand via citations and cited-by.
- Use the **filing date (priority date)** for time series — registration dates distort.

## Landscape analysis
- **Assignee concentration CR5**: top-5 share > 50% = mature, high entry barriers; < 20% = fragmented.
- **Lifecycle**: filing trends per classification code. Growth-stage signals = rising counts + appearance of new entrants.
- **Citation clusters**: a persistently cited, strong citation axis = the technology core. Non-citing (independent) clusters = white-space candidates.
- **Patent family analysis**: country-expansion patterns of the same filing = commercialization signal (families covering major markets are the valid assets).

## FTO screening (3 risk factors)
**Validity** (annuities kept up, rights maintained) × **infringement likelihood** (representative claim vs. product configuration — literal + doctrinal reading) × **jurisdiction** (manufacturing and sales venues). Never assert infringement — hand off to a patent attorney for legal review.

## Output
```
# Patent Landscape — {technology} ({as-of date})
## Entry-barrier verdict (CR5 · lifecycle stage)
## IPC map (code | meaning | filing trend | key assignees)
## 3 white spaces + evidence
## Risk list (application no. | right holder | jurisdiction | 3-factor grade | response options)
```
