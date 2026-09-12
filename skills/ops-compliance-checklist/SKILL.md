---
name: ops-compliance-checklist
description: Build a compliance checklist and evidence plan for an audit or policy rollout — control mapping, evidence cadence, and audit-readiness verdict. Use when user says "compliance checklist", "audit readiness", "SOC 2", "ISO 9001", "GDPR checklist". For SOP authoring use ops-sop-builder.
license: MIT
metadata:
  source: "meshcode curation — ISO 9001:2015 §7.5, SOC 2 Trust Services Criteria, Gawande Checklist Manifesto (MIT-derived)"
  category: ops
---

# Compliance Checklist — Controls, Evidence, Audit Readiness

**Most audit findings stem not from a missing control but from a control that was never "documented with evidence."** A checklist is the start of quality assurance, not the end (Gawande).

## Checklist-Writing Principles
- Each item is **verb + object + a verifiable criterion** (e.g. "Access review complete — reconciled against per-system account list"). Vague phrasing ("managed appropriately") is banned; the verification method is stated in the item itself.
- Length fits one screen (≤10–15 items). Beyond that it's a procedure, not a checklist.
- **Bake the verdict into the item**: a 3-value "compliant / non-compliant / N/A" plus a mandatory evidence link. "Generally compliant" is an un-auditable verdict.
- Assign each item a **named owner** and a cadence (daily / quarterly / annual).

## Regulatory Profile (pick one)
- **SOC 2**: map to the Trust Services Criteria (security, availability, confidentiality, integrity, privacy); retain evidence ≥12 months.
- **ISO 9001**: §7.5 documented information — approval, review, version, change history; state the review cadence for controlled documents.
- **HIPAA/GDPR**: data classification (PII/PHI), least privilege, processing records, breach notification procedure.
- **None**: confirm "no applicable regulation" explicitly after checking data classes — silent denial is itself an audit risk.

## Evidence Plan
- For each control, table the **evidence type, collection cadence, storage location, and collector**. Manual evidence is the #1 automation candidate.
- **Pre-emptive verification**: close self-inspection non-conformities with corrective actions before the public audit.

## Output
```
# Compliance Checklist — {regulation · scope}
## Control matrix (control | criterion | verification | cadence | owner | evidence location)
## Evidence collection plan
## Pre-inspection results (compliant / non-compliant / N/A + top 3 gaps)
## Audit-readiness verdict (READY / GAP: {items})
```
