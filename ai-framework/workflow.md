# Workflow

The primary workflow is a human-called skill sequence under `skills/orchestrator/`.

```txt
new-idea -> discovery -> plan -> implementation -> deploy
```

| Skill | Input | Output | Human Approval |
|---|---|---|---|
| `new-idea` | Raw human idea | Kickoff idea brief | Human confirms brief |
| `discovery` | Kickoff brief + detailed human input | Detailed discovery brief | Human approves brief |
| `plan` | Approved discovery brief | Decision-complete implementation plan | Human approves plan |
| `implementation` | Approved plan | Working local webpage | Human reviews local result |
| `deploy` | Working local page + release inputs | Production URL | Human approves release |
| Handoff | Final state | Updated `HANDOFF.md` | No |

## Skill Output Rule

Each skill must consult:

- `SKILL.md` for trigger, input, and output rules.
- `missing-input.response.md` if human input is incomplete.
- `summary.response.md` if human input is complete.
- `completion-checklist.md` before advancing.

## Helper Skill Rule

Helper skills under `skills/helper/` may be used inside a primary skill when specialized output is needed. They do not create new workflow stages.

Use `frontend-design` during:

- `plan`: to propose distinctive visual directions, define frontend patterns, and require a static mockup when visual approval is needed.
- `implementation`: to provide design implementation guidance from the approved plan.
- QA/local review: to compare rendered screenshots against the approved design direction.

## Revision Rule

Every skill summary must ask for one of:

- Approve
- Modify
- Reject

## Production-Ready Definition

A webpage is production-ready only when:

- Approved requirements are satisfied.
- Approved scope is followed.
- Final UI design is reviewed and approved by a human.
- If visual direction was open, a static mockup or equivalent visual preview was approved before implementation.
- Deterministic validation passes or exceptions are explicitly accepted.
- The page is deployed to production.
- Production verification finds no known bugs.
- `HANDOFF.md` and deployment instructions are current.
