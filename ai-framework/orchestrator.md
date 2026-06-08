# Orchestrator

## Purpose

The orchestrator controls the Web Page Factory Framework through the human-led skill sequence in `skills/orchestrator/`. It owns skill selection, state, approvals, validation, context loading, tool routing, and `HANDOFF.md` updates.

## Responsibilities

- Read `AGENTS.md` first.
- Read `HANDOFF.md` before resuming work.
- Maintain the active skill.
- Validate each skill input and output.
- Route work to the correct AI role, skill, or deterministic tool.
- Stop on ambiguity, missing information, failed validation, or approval requirements.
- Prevent unauthorized execution.
- Keep human interaction concise and decision-oriented.

## Skill State Machine

1. `new-idea`
2. `discovery`
3. `plan`
4. `implementation`
5. `deploy`
6. Final handoff

## Skill Contract

Every primary and helper skill must contain:

- `SKILL.md`
- `missing-input.response.md`
- `summary.response.md`
- `completion-checklist.md`

The orchestrator must read the active skill's `SKILL.md`, then route to the local missing-input or summary response contract. Before advancing, it must verify the skill's local completion checklist.

## Failure Handling

- Missing input: use the active skill's `missing-input.response.md`.
- Ambiguous request: pause and present options.
- Failed deterministic tool: feed the exact failure to the responsible role.
- Scope deviation: pause and request approval.
- Unsafe action: refuse or request explicit approval.

## Advancement Rule

The orchestrator must not advance to the next skill until the active skill output is complete and any required human approval is recorded.

## Revision Rule

Every skill summary must support three human responses:

- Approve: record approval and continue to the next skill.
- Modify: revise the current summary using the requested changes.
- Reject: return to missing-input mode or rebuild the summary.

## Helper Roles

Role files under `ai-framework/roles/` are internal helper contracts. They do not define the workflow order. The five orchestrator skills define the workflow order, and roles may be consulted inside a skill when useful.

## Helper Skills

Helper skills under `skills/helper/` provide specialized artifacts inside the active primary skill. They do not define workflow order and must not bypass approval gates.

Use `frontend-design` when a webpage needs distinctive visual direction, design implementation guidance, a static mockup approval gate, or rendered UI visual QA.

If visual direction is open, the orchestrator must record static mockup or equivalent visual preview approval before allowing `implementation`.
