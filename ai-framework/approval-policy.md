# Approval Policy

## Approval Types

- Explicit approval: proceed as written.
- Conditional approval: proceed only after incorporating conditions.
- Rejection with feedback: revise the artifact.
- Request for alternatives: present 2-3 options and a recommendation.

## Mandatory Gates

- `new-idea` kickoff brief confirmation
- `discovery` detailed brief approval
- `plan` proposed implementation plan approval after the plan is produced
- Final local implementation review
- New dependencies
- Architecture changes
- File removal
- Destructive edits
- Final UI design
- Deployment or release preparation

## Orchestrator Behavior

- Pause at each gate.
- Present only the decision needed.
- Record approval in `HANDOFF.md`.
- Do not continue execution until approval is clear.
- If the human requests modifications, revise the current skill summary.
- If the human rejects the summary, return to missing-input mode or rebuild the summary.
