# meshcode-ai/skills

**76 open-source Agent Skills for business and code — SEO/AEO, marketing, copywriting, operations, business planning, research, executive/finance, and coding.** Knowledge-first skills (2KB each) for Claude Code, Codex, Cursor, Gemini CLI, and meshcode, following the open [Agent Skills](https://agentskills.io/specification) standard (`SKILL.md`). Every skill is refined knowledge — frameworks, thresholds, and output contracts — not script wrappers.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Skills](https://img.shields.io/badge/skills-76-blue)](#catalog)
[![Standard](https://img.shields.io/badge/agent--skills-spec-brightgreen)](https://agentskills.io/specification)

## Install

Easiest with [meshcode](https://meshcode.ai) (free desktop app): open your project, ask in chat **"show available skills"** then **"install the marketing skills"** — it fetches from these repos automatically.

Manual: download any repo zip → extract into your project's `.meshcode/skills/` → done. Also works in Claude Code (`~/.claude/skills/`), Codex, and Cursor. Skills appear in the next session: only name+description load into context (~80 tokens each), the body loads when the task matches. Or use the [skill index](index.json) with meshcode's remote `skills.urls`.

## Who this is for

- **Founders & operators** — market sizing, pricing, funnels, board updates without a consultant
- **Marketers & growth** — campaign audits, CRO, content strategy, AI-search visibility (AEO/GEO)
- **Agencies & freelancers** — repeatable audit frameworks with fixed output contracts
- **Anyone using Claude Code/Codex for business work** — not just code
- **Devs & AI-coding-agent users** — a design gate before implementation, test-case matrices, severity-graded code review

## Catalog

### SEO/AEO — [`meshcode-ai/skills-seo`](https://github.com/meshcode-ai/skills-seo)

| Skill | What it does |
|---|---|
| `seo-aeo-geo` | AI search optimization (AEO/GEO) |
| `seo-audit` | Full SEO/AEO audit orchestrator |
| `seo-backlinks` | Backlink profile analysis |
| `seo-content-eeat` | Content quality and E-E-A-T analysis |
| `seo-local` | Local SEO |
| `seo-schema` | Detect, validate, and generate Schema.org structured data as JSON-LD |
| `seo-technical-audit` | Technical SEO audit |

### Marketing — [`meshcode-ai/skills-marketing`](https://github.com/meshcode-ai/skills-marketing)

| Skill | What it does |
|---|---|
| `mkt-ad-creative` | Ad creative strategy |
| `mkt-analytics` | Analytics measurement plan |
| `mkt-attribution` | Attribution modeling |
| `mkt-churn-prevention` | Churn reduction |
| `mkt-community` | Community-led growth |
| `mkt-comparisons` | Comparison and alternative pages |
| `mkt-competitor-profiling` | Competitor research and profiling |
| `mkt-cro` | Conversion rate optimization for a specific page, form, or flow |
| `mkt-email-sequences` | Email sequence design |
| `mkt-funnel-audit` | Funnel journey diagnosis |
| `mkt-google-ads` | Google Ads strategy |
| `mkt-growth-loops` | Growth loops |
| `mkt-launch` | Product/feature launch |
| `mkt-marketing-psychology` | Behavioral psychology for marketing |
| `mkt-meta-ads` | Meta (Facebook/Instagram) ads |
| `mkt-offers` | Offer design |
| `mkt-onboarding` | User activation and onboarding optimization |
| `mkt-pricing` | Pricing and packaging |
| `mkt-product-marketing` | Product marketing foundation |
| `mkt-referrals` | Referral and affiliate program design |

### Copy & Content — [`meshcode-ai/skills-copy`](https://github.com/meshcode-ai/skills-copy)

| Skill | What it does |
|---|---|
| `copy-brand-voice` | Brand voice |
| `copy-cold-email` | Cold email writing |
| `copy-content-brief` | Content brief creation |
| `copy-content-strategy` | Content strategy |
| `copy-copy-editing` | Copy editing |
| `copy-copywriting` | Copywriting frameworks |
| `copy-email-sequences` | Email copywriting |
| `copy-humanize` | Remove AI-sounding phrasing |
| `copy-landing-copy` | Landing page copy |
| `copy-pr-outreach` | PR outreach |

### Operations — [`meshcode-ai/skills-ops`](https://github.com/meshcode-ai/skills-ops)

| Skill | What it does |
|---|---|
| `ops-capacity-planner` | Size an ops team (support, CX, IT, finance ops) that handles queued work |
| `ops-compliance-checklist` | Build a compliance checklist and evidence plan for an audit or policy rollout |
| `ops-internal-comms` | Draft a sequenced internal change announcement |
| `ops-knowledge-ops` | Audit and clean up a company wiki |
| `ops-meetings` | Design meetings that earn their cost |
| `ops-process-mapper` | Map an end-to-end business process (procurement, onboarding, incident handoff, approvals)  |
| `ops-procurement` | Annual spend audit and supplier rationalization |
| `ops-project-planning` | Turn a goal into an executable project plan |
| `ops-sop-builder` | Author a standard operating procedure (SOP) that an operator can execute without asking an |
| `ops-vendor-management` | Score and review third-party vendors |

### Business Planning — [`meshcode-ai/skills-biz`](https://github.com/meshcode-ai/skills-biz)

| Skill | What it does |
|---|---|
| `biz-business-plan` | Structures a business plan or lean canvas |
| `biz-competitor-profiling` | Profiles direct, indirect, substitute, and potential competitors |
| `biz-market-sizing` | Estimates market size with TAM/SAM/SOM using top-down, bottom-up, and analogous-market met |
| `biz-offer-design` | Builds a one-line value proposition and stacks offer components |
| `biz-prd` | Writes a PRD from an idea, meeting notes, or existing code |
| `biz-pricing-strategy` | Chooses among cost-plus, value-based, and competitor-based pricing, picks skimming vs pene |
| `biz-segmentation` | Segments a market using Kotler's five criteria (measurable, substantial, accessible, diffe |
| `biz-unit-economics` | Computes LTV, CAC, payback period, and contribution margin, applies the LTV:CAC ≥ 3 and pa |

### Research — [`meshcode-ai/skills-research`](https://github.com/meshcode-ai/skills-research)

| Skill | What it does |
|---|---|
| `res-competitor-research` | Competitor research |
| `res-customer-research` | Customer and user research |
| `res-deep-research` | Multi-source deep research with citation-grade synthesis |
| `res-dossier` | Structured dossier building |
| `res-litreview` | Structured literature review |
| `res-patent-landscape` | Patent landscape and freedom-to-operate analysis |
| `res-research-brief` | Research brief writing |
| `res-survey-design` | Survey and questionnaire design |

### Executive & Finance — [`meshcode-ai/skills-exec`](https://github.com/meshcode-ai/skills-exec)

| Skill | What it does |
|---|---|
| `exec-decision-memo` | Structures executive decisions |
| `exec-executive-mentor` | Executive mentoring for founders and C-level leaders |
| `exec-investor-update` | Writes monthly investor updates |
| `exec-leadership-comm` | Executive communication |
| `fin-forecast` | Forecasts revenue |
| `fin-negotiation` | Prepares negotiations |
| `fin-prospecting` | Defines ICP from top-customer cohorts, builds scored target lists, mixes outbound channels |
| `fin-revops` | Aligns sales, marketing, and CS operations |
| `fin-sales-enablement` | Builds sales enablement assets |
| `fin-sales-pipeline` | Manages the sales pipeline |

### Coding & Dev — [`meshcode-ai/skills-coding`](https://github.com/meshcode-ai/skills-coding)

| Skill | What it does |
|---|---|
| `dev-architecture` | System design before code — spike/bounded/architectural classification with approval gate |
| `dev-test-design` | Test-case matrix + red-green-refactor + evidence gate |
| `dev-code-review` | Severity-graded diff review with file:line evidence |

## Search & AI visibility

- Skill index for agents: [`index.json`](index.json) · AI-readable catalog: [`llms.txt`](llms.txt) · AI crawlers: fully allowed ([`robots.txt`](robots.txt))
- Each skill page is individually linkable: `https://skills.meshcode.ai/skills/<name>/SKILL.md`

## Standard

Every skill: `SKILL.md` with `name` (folder-matched), trigger-keyword `description`, `license`, `metadata.source` (origin + license trail). Bodies and trigger keywords are English. Per-skill source attribution lives in each SKILL.md `metadata.source`.

## License

MIT. Origin per skill in `metadata.source`.
