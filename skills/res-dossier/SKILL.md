---
name: res-dossier
description: Structured dossier building — entity briefing packs on companies or people with verified facts, timeline, network map, and open questions. Use when user says "dossier", or needs a one-stop fact pack before a meeting.
license: MIT
metadata:
  source: "alirezarezvani/claude-skills@research/ (MIT)"
  category: research
---

# Dossier

## Fix the purpose
Every dossier starts from "who reads this, and to decide what". If the decision point (investment meeting, partnership negotiation, hiring) is known, prioritize the sections needed right before it.

## Fact-management discipline
- **3-way split of fact / estimate / interpretation**: tag every item [F] fact (with source), [E] estimate (basis + margin of error), [I] interpretation (author's view).
- Trust tiers: disclosures, courts, regulatory filings > official announcements, user-submitted documents > interviews, press > social & communities.
- Identity verification: guard against namesakes — cross-check affiliation, prior history, and 2+ public statements.
- Timelines are event-based (date | event | source). If the month is unknown, write "month unknown" — never fill it in arbitrarily.

## Structure (fixed 5 sections)
1. Snapshot (3 lines + 1 decision-relevant key fact)
2. Overview (legal information, business, current status)
3. Timeline (dense over the last 3 years)
4. Network (key people, stakes, partnerships — relationship types stated explicitly)
5. Risks & unverified — **"the section where you write down what you don't know; it always exists"**

## Output
```
# Dossier — {target} ({as-of date})
## Snapshot (3 lines + source trust tier)
## Fact table ([F/E/I] tags + sources)
## Timeline (last 3 years, event-based)
## Network map (person/org | relationship | basis)
## Unverified items + next verification steps (where to dig further)
```
