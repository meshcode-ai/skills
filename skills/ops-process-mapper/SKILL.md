---
name: ops-process-mapper
description: Map an end-to-end business process (procurement, onboarding, incident handoff, approvals) in BPMN-style swimlanes, measure cycle time, and rank bottlenecks by severity. Use when user says "process map", "bottleneck", "BPMN", "cycle time". Distinct from ops-sop-builder (documents execution, not flow).
license: MIT
metadata:
  source: "alirezarezvani/claude-skills business-operations/process-mapper@v2.8.0 (MIT)"
  category: ops
---

# Process Mapping — Flow, Bottlenecks, Cycle Time

**Most lead time comes from queueing, not from processing.** So this skill's job isn't to list steps — it's to quantify "where work waits" and name the single constraint.

## Notation (BPMN-style, plain text)
- **Event** `○` start / `◎` end · **Activity** `[ ]` task · **Gateway** `⟨?⟩` split (exclusive) / merge
- **Swimlane** = per owner. An arrow crossing lanes → a handoff (the most hidden waste)
- Tag each step with a type: `processing` / `queue` / `rework`

## Measurement and Judgment
- **Value-add ratio VA%** = Σ processing time / total elapsed. Verdict: **>25% healthy · 10–25% average · <10% waste-heavy**
- **Little's Law**: throughput ≈ WIP / lead time. WIP ↓ → lead time ↓ (fix by capping input, not by adding people)
- **3 bottleneck-detection rules**: ① P50 exceeds 2× the average processing step ② queue exceeds 40% of total cycle ③ rework rate exceeds 15%
- **Focus on the constraint (Goldratt)**: never optimize a non-bottleneck step — speeding up the front just piles inventory in front of the bottleneck. Queue bottlenecks are solved only by smaller batches and fewer handoffs, never by more headcount.

## Question Sequence (one at a time)
1. Measured data or an estimate? → measured first
2. As-is or to-be? → as-is first
3. What are the handoff wait time, batch size, and rework rate, respectively?

## Output
```
# Process Map — {process name}
## Swimlane diagram (lane = owner, step tagged with type + P50/P90)
## Cycle time (overall P50/P90, VA%, queue%, rework%)
## Top 3 bottlenecks (severity CRITICAL/HIGH + root hypothesis + one action each)
## Recommended intervention (concentrate resources on the single constraint; explicitly forbid non-constraint optimization)
```
