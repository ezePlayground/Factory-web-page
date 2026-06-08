# Orchestrator Skills

This folder contains the primary human-led workflow for the Web Page Factory Framework.

The human calls one skill at a time:

```txt
new-idea -> discovery -> plan -> implementation -> deploy
```

Each skill owns one phase of the process and contains:

- `SKILL.md`: trigger rules, inputs, outputs, ambiguity policy, and anti-hallucination rules.
- `missing-input.response.md`: response contract when required human input is missing.
- `summary.response.md`: response contract when required human input is complete.
- `completion-checklist.md`: validation checklist before advancing.

## Core Rule

Human input is the source of truth. The AI may ask questions, organize information, propose options, and validate completeness, but it must not invent missing requirements or proceed to the next skill with incomplete required input.

Every summary must support `approve`, `modify`, and `reject`.

## Helper Skills

Helper skills may live under `skills/helper/`. They provide specialized artifacts inside a primary stage but do not advance the workflow.

- `frontend-design`: use during `plan`, `implementation`, and QA when the page needs distinctive frontend direction, static mockup approval, implementation guidance, or visual quality review.
