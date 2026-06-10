# AGENTS.md

## Mission

Build production-ready webpages through human-led orchestrator skills, explicit input contracts, scoped execution, and deterministic validation.

## Core Operating Rules

- Use requested primary skills under `skills/orchestrator/`.
- Use helper skills under `skills/helper/` only inside the active primary stage.
- Read that skill's `SKILL.md` before responding.
- Consult the skill's local `missing-input.response.md` and `summary.response.md`.
- Ask for missing human input when requirements are incomplete.
- Keep answers short, structured, and actionable.
- Do not implement before the required approval gate is passed.
- Do not expand scope beyond the user-approved plan.
- Do not modify unrelated files.
- Do not invent missing requirements, content, design direction, technical constraints, approvals, deployment targets, or production URLs.
- Prefer deterministic tools over AI judgment where deterministic tools are better.
- Record major decisions, completed work, commands, risks, and next steps in `HANDOFF.md`.
- Update `HANDOFF.md` after every important event: approvals, completed skills, validation results, repository pushes, deployments, major decisions, and maintenance changes.
- Treat `AGENTS.md` as the operating manifest and `HANDOFF.md` as the resume state.

## Required Workflow

The primary workflow is the human-called skill sequence:

```txt
new-idea -> discovery -> plan -> implementation -> deploy
```

Skill files live under:

```txt
skills/orchestrator/
```

Each skill contains:

- `SKILL.md`
- `missing-input.response.md`
- `summary.response.md`
- `completion-checklist.md`

Helper skills may live under:

```txt
skills/helper/
```

Helper skills support planning, implementation, or QA inside a primary stage. They do not replace or advance the primary workflow.

## Required Approval Gates

Human approval is required before:

- Finalizing requirements
- Finalizing page strategy
- Finalizing information architecture
- Finalizing visual direction
- Starting implementation
- Adding dependencies
- Changing architecture
- Removing files
- Making destructive edits
- Deploying or preparing release

## Human Collaboration Rules

- Human input is the source of truth.
- AI asks questions until the current skill has enough input.
- AI may propose options, but the human must choose or approve before the workflow advances.
- Design direction, brand direction, architecture, implementation plan, final UI, and deployment require human approval.
- If visual direction is open, static mockup or equivalent visual preview approval is required before implementation.
- Every skill summary must support approve, modify, and reject.
- The final webpage UI must be reviewed and approved by a human before production readiness is claimed.
- Production readiness requires successful deployment and production verification without known bugs.

## Output Policy

- Be concise.
- Do not over-explain.
- Prefer short bullets, tables, checklists, and clear decisions.
- Do not include unsupported claims.
- Do not hide ambiguity.

## Roles

Roles are internal helpers used by the five orchestrator skills. They are not separate workflow stages.

- Orchestrator
- Requirements Analyst
- Product Strategist
- UX Architect
- Copywriter
- Visual Designer
- SEO Specialist
- Frontend Architect
- Frontend Implementer
- QA Reviewer
- Accessibility Reviewer
- Performance Reviewer
- Security Reviewer
- Refactor Reviewer
- Release Manager

## Helper Skills

- `frontend-design`: create distinctive, production-grade frontend direction, implementation guidance, static mockup requirements, and visual QA findings to avoid generic AI output.

## Primary Orchestrator Skills

- `new-idea`: turn a raw idea into a clear kickoff brief.
- `discovery`: collect the detailed human-provided brief.
- `plan`: create the approved implementation plan.
- `implementation`: build and validate the local webpage.
- `deploy`: verify, deploy, and return the production URL.

## Tool Policy

- Use deterministic tools for formatting, linting, type checking, tests, builds, accessibility checks, responsive screenshots, SEO checks, performance audits, dependency scanning, secret scanning, and diff inspection.
- Feed deterministic tool outputs back into the workflow as evidence.
- Run `bash scripts/validate-framework.sh` before committing framework maintenance changes.
- During `implementation`, auto-discover existing commands from project manifests and configs before asking the human.
- Do not add dependencies without approval.
- Do not deploy without approval.
- Do not run destructive commands without approval.

## Context Policy

- Read `AGENTS.md` first.
- Read `HANDOFF.md` before resuming any existing work.
- Load only the context required for the current skill.
- Verify current files before editing.
- Do not re-read the entire project unless the architecture is unknown.
- If `HANDOFF.md` conflicts with current files, pause and resolve the conflict.

## Mutation Policy

- Planning skills must not mutate tracked product files.
- Execution skills may only edit files named or implied by the approved implementation plan.
- Any deviation from the approved plan requires orchestrator review and, when scope or risk changes, human approval.
- Helper skills must stay inside the active primary skill's scope and approval gates.
- After framework freeze, protected framework files must only change through the maintenance workflow in `FRAMEWORK_FREEZE.md`.
