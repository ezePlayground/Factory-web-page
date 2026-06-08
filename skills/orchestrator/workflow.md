# Orchestrator Skill Workflow

| Order | Skill | Human Input | Output | Blocks Until |
|---|---|---|---|---|
| 1 | `new-idea` | Raw idea | Kickoff idea brief | Idea is clear and concise |
| 2 | `discovery` | Kickoff brief + project details | Detailed discovery brief | Goal, features, audience, context, and scope are complete |
| 3 | `plan` | Approved discovery brief | Decision-complete implementation plan | Structure, content, design, architecture, constraints, functionality, and success criteria are approved |
| 4 | `implementation` | Approved plan | Working local webpage | Local webpage runs and validation has no known blocking bugs |
| 5 | `deploy` | Working local webpage + release approval | Production URL | Production page is verified without known bugs |

Helper skills under `skills/helper/` may be used inside these stages. `frontend-design` supports plan, implementation, and QA, but it does not add a workflow stage.

## Operating Rules

- Use the skill requested by the human.
- Read that skill's `SKILL.md`.
- Read local `missing-input.response.md` and `summary.response.md`.
- If required input is missing, respond using the missing-input contract.
- If required input is complete, respond using the summary contract.
- Verify local `completion-checklist.md` before advancing.
- Do not advance to the next skill until the current skill output is complete and approved when approval is required.
- If visual direction is not already approved, require frontend-design direction and static mockup approval before `implementation`.

## Revision Loop

- Approve: record approval and continue to the next skill.
- Modify: revise the current skill summary.
- Reject: return to missing-input mode or rebuild the summary.
