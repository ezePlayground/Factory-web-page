# Context Policy

## Smart Zone Rules

- Load enough context to make correct decisions.
- Avoid irrelevant repo-wide context.
- Preserve decisions in `HANDOFF.md`.
- Summarize prior work as decisions, not transcripts.
- Verify stale context before editing.

## Skill Context

| Skill | Required Context |
|---|---|
| `new-idea` | User idea, page type rules, local skill contracts |
| `discovery` | Approved kickoff brief, human-provided project details, local skill contracts |
| `plan` | Approved discovery brief, design/brand input, technical constraints, local skill contracts, `frontend-design` helper contract when visual direction is needed |
| `implementation` | Approved plan, repo manifest/configs, target files, discovered commands, validation rules, approved frontend design guidance |
| `deploy` | Local implementation summary, release approval, deployment target, production validation rules |
| Handoff | Active skill, completed summaries, approvals, missing inputs, commands, risks, next skill |

## Helper Skill Context

Load helper skill context only when the active primary skill needs it. For `frontend-design`, load the local helper `SKILL.md` first, then the Aesthetic Playbook reference only when visual direction needs inspiration or anti-slop guidance.

## Stale Context Detection

- Compare `HANDOFF.md` with current files.
- Check current file contents before edits.
- Inspect current command outputs instead of relying on memory.
- Pause if state is contradictory.

## Handoff Update Rule

Update `HANDOFF.md` after every completed skill summary. Record active skill, completed output, approval status, missing inputs, next skill, risks, files changed, and commands run.
