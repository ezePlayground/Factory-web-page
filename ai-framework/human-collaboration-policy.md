# Human Collaboration Policy

## Principle

Human input is the source of truth. AI asks, organizes, proposes, validates, implements approved plans, and reports evidence.

## Skill Collaboration Flow

1. Human calls one skill: `new-idea`, `discovery`, `plan`, `implementation`, or `deploy`.
2. The skill checks its required input.
3. If input is missing, the skill uses `missing-input.response.md`.
4. If input is complete, the skill uses `summary.response.md`.
5. Human approves the summary when approval is required.
6. The next skill may start only after the previous output is complete.

## Helper Skill Collaboration

- Helper skills may be invoked inside the active primary skill.
- Helper skills do not advance the workflow.
- `frontend-design` may contribute design direction, implementation guidance, static mockup requirements, and visual QA.
- If visual direction is open, the human must approve a static mockup or equivalent visual preview before implementation begins.

## Communication Rules

- Keep answers concise.
- Ask direct questions.
- Avoid long explanations unless requested.
- Show recommendations with short rationale.
- Do not continue past approval gates.
- Do not invent missing input.
