# Skills

The primary skill system lives under `skills/orchestrator/`.

Each skill has:

- `SKILL.md`
- `missing-input.response.md`
- `summary.response.md`
- `completion-checklist.md`

## Primary Orchestrator Skills

| Skill | Trigger | Input | Output | Success Criteria |
|---|---|---|---|---|
| `new-idea` | Human has a raw webpage idea | Human idea and basic intent | Kickoff idea brief | Idea is clear, concise, and ready for discovery |
| `discovery` | Kickoff brief exists | Goal, features, audience, business context, scope | Detailed discovery brief | Human-provided requirements are complete enough for planning |
| `plan` | Approved discovery brief exists | Discovery brief, known facts, open IA/design decisions, constraints, functionality, validation requirements | Approved implementation plan | Implementer can build without making product/design decisions |
| `implementation` | Approved plan exists | Plan, target stack, assets, commands, env vars, approved dependencies, approved frontend design direction | Working local webpage | Local page runs and has no known blocking bugs |
| `deploy` | Local page works and release approval exists | Deployment target, env vars, final UI approval, release approval | Production URL | Production page is verified without known bugs |

## Helper Skills

Helper skills live under `skills/helper/`. They are invoked inside primary stages and never advance the workflow by themselves.

| Skill | Used Inside | Purpose | Output |
|---|---|---|---|
| `frontend-design` | `plan`, `implementation`, QA/local review | Create distinctive, production-grade frontend direction and prevent generic AI UI output | Design direction, static mockup requirement, implementation guidance, visual QA findings |

## Skill Contract Rule

Every skill must read its local `SKILL.md`, then use:

- `missing-input.response.md` when required human input is missing.
- `summary.response.md` when required input is complete.
- `completion-checklist.md` before advancing to the next skill.
