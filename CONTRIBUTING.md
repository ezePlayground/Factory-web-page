# Contributing

## Principles

- Keep the framework markdown-first unless an architecture change is approved.
- Preserve the primary workflow: `new-idea -> discovery -> plan -> implementation -> deploy`.
- Treat helper skills as stage support, not workflow stages.
- Do not weaken approval gates.
- Do not invent requirements, content, design direction, technical constraints, approvals, deployment targets, or production URLs.
- Prefer concise, actionable contracts over long explanations.

## Editing Framework Docs

When editing policies, templates, or skill contracts:

- keep `AGENTS.md` and `HANDOFF.md` consistent
- update related completion checklists
- preserve approve, modify, and reject decision paths
- keep planning separate from implementation
- record major decisions, files changed, commands, risks, and next steps in `HANDOFF.md`

## Adding Skills

Primary orchestrator skills belong under `skills/orchestrator/` and must include:

- `SKILL.md`
- `missing-input.response.md`
- `summary.response.md`
- `completion-checklist.md`

Helper skills belong under `skills/helper/` and must use the same contract shape. Helper skills must stay inside the active primary skill's scope and approval gates.

## Validation

Before publishing changes, run a static review:

```sh
find . -maxdepth 6 -type f | sort
rg -n "TODO|FIXME|legacy plan input wording|legacy schema wording" AGENTS.md HANDOFF.md ai-framework skills README.md
git status --short
```

If the repository contains a generated webpage later, also run its discovered build, lint, typecheck, tests, accessibility, responsive, SEO, performance, security, and deployment checks where available.
