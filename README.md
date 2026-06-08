# Web Page Factory Framework

A markdown-first AI orchestration framework for producing production-ready webpages through human-led skills, approval gates, scoped execution, deterministic validation, and persistent handoff state.

## Purpose

This framework gives an AI coding agent a controlled process for turning a webpage idea into a verified production release without inventing requirements, skipping approvals, or claiming readiness before evidence exists.

The framework is intentionally documentation-first. Agents follow explicit markdown contracts, checklists, and handoff records. No CLI runner, schema validator, or automated state machine is included yet.

## Primary Workflow

The human calls one primary orchestrator skill at a time:

```txt
new-idea -> discovery -> plan -> implementation -> deploy
```

| Skill | Purpose | Output |
|---|---|---|
| `new-idea` | Turn a raw webpage idea into a concise kickoff brief | Approved kickoff brief |
| `discovery` | Collect the detailed human-provided project brief | Approved discovery brief |
| `plan` | Create a decision-complete implementation plan | Approved implementation plan |
| `implementation` | Build and validate the local webpage | Working local webpage |
| `deploy` | Verify, deploy, and return the production URL | Verified production release |

Each primary skill lives under `skills/orchestrator/` and contains:

- `SKILL.md`
- `missing-input.response.md`
- `summary.response.md`
- `completion-checklist.md`

## Helper Skills

Helper skills live under `skills/helper/`. They support a primary stage but do not advance the workflow by themselves.

Current helper skill:

- `frontend-design`: creates distinctive, production-grade frontend direction, prevents generic AI UI output, defines static mockup approval requirements, supports implementation, and reviews rendered UI quality.

When visual direction is open, `frontend-design` requires a static mockup or equivalent visual preview before implementation begins.

## Framework Map

```txt
AGENTS.md                       Operating manifest for agents
HANDOFF.md                      Current state, decisions, risks, and resume notes
ai-framework/                   Core policies, roles, templates, and validation guidance
skills/orchestrator/            Primary five-stage workflow skills
skills/helper/frontend-design/  Frontend design quality helper skill
```

## Production-Ready Definition

A webpage is production-ready only when:

- approved requirements are satisfied
- approved scope is followed
- final UI design is reviewed and approved by a human
- required static mockup approval exists when visual direction was open
- deterministic validation passes or exceptions are explicitly accepted
- the page is deployed to production
- production verification finds no known bugs
- `HANDOFF.md` and deployment instructions are current

## Using The Framework

1. Read `AGENTS.md`.
2. Read `HANDOFF.md` before resuming work.
3. Call the current primary skill under `skills/orchestrator/`.
4. Use the skill's local `SKILL.md`, response templates, and checklist.
5. Invoke helper skills only inside the active primary stage.
6. Stop at approval gates until the human approves, modifies, or rejects.
7. Update `HANDOFF.md` after completed skill summaries or framework maintenance.

## GitHub Status

This repository is prepared for local Git tracking and GitHub upload. Remote creation and push are intentionally left to the repository owner.
