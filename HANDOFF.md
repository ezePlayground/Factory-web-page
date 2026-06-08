# HANDOFF.md

## Current Goal

Build the Web Page Factory Framework: a markdown-first AI orchestration framework for producing production-ready webpages through five human-led skills, approvals, deterministic validation, and persistent handoff state.

## User-Approved Scope

Create the framework structure and documentation artifacts, then refactor the workflow into five human-led orchestrator skills under `skills/orchestrator/`.

## Current Stage

Framework prepared for local Git tracking and GitHub upload.

## Active Skill

None. Framework maintenance task completed.

## Last Completed Skill

Not applicable. This was framework maintenance, not a webpage production run.

## Skill Approval Status

Not applicable.

## Missing Inputs

None for this maintenance task.

## Completed Work

- Created root operating manifest: `AGENTS.md`.
- Created resumable state artifact: `HANDOFF.md`.
- Created `/ai-framework` framework documentation, role contracts, and templates.
- Added orchestration pattern notes based on modern AI workflow systems.
- Added `skills/orchestrator/` with five skills: `new-idea`, `discovery`, `plan`, `implementation`, and `deploy`.
- Added `SKILL.md`, `missing-input.response.md`, and `summary.response.md` to each skill.
- Updated framework docs to make the skill workflow the primary operating model.
- Added per-skill `completion-checklist.md` files.
- Fixed the `plan` skill approval flow so approval happens after the proposed plan is produced.
- Added command auto-discovery rules for `implementation`.
- Added approve/modify/reject revision loops for skill summaries.
- Clarified roles are helpers used inside skills, not workflow stages.
- Reviewed the full markdown framework and compared applicable UI guidance from Vercel Web Interface Guidelines.
- Added `frontend-design` as a helper skill for planning, implementation guidance, static mockup approval, and visual QA.
- Added the Aesthetic Playbook as frontend-design reference guidance, explicitly non-strict.
- Updated the `plan` skill to ask targeted questionnaires until blockers are resolved and to propose IA/design/architecture options when they are not already final.
- Added static mockup approval as the required visualization gate before implementation when visual direction is open.
- Added Vercel-derived interface quality checks to planning, implementation, QA, validation, and production-readiness artifacts.
- Added generic AI slop as an explicit framework failure mode and guardrail.
- Added GitHub-ready root files: `README.md`, `LICENSE`, `.gitignore`, and `CONTRIBUTING.md`.
- Fixed final review inconsistencies around helper skill paths, plan input descriptions, static mockup approval, and schema wording.
- Initialized local Git repository and prepared an initial commit.

## Files Created

- `AGENTS.md`
- `HANDOFF.md`
- `/ai-framework/**`
- `/skills/orchestrator/**`
- `/skills/helper/frontend-design/**`
- `README.md`
- `LICENSE`
- `.gitignore`
- `CONTRIBUTING.md`

## Files Modified

- `AGENTS.md`
- `HANDOFF.md`
- `README.md`
- `CONTRIBUTING.md`
- `ai-framework/skills.md`
- `ai-framework/workflow.md`
- `ai-framework/orchestrator.md`
- `ai-framework/human-collaboration-policy.md`
- `ai-framework/approval-policy.md`
- `ai-framework/context-policy.md`
- `ai-framework/global-rules.md`
- `ai-framework/failure-modes.md`
- `ai-framework/guardrails.md`
- `ai-framework/handoff-template.md`
- `ai-framework/templates/design-system.md`
- `ai-framework/templates/implementation-plan.md`
- `ai-framework/templates/production-readiness-report.md`
- `ai-framework/templates/qa-report.md`
- `ai-framework/quality-bar.md`
- `ai-framework/validation-checklists.md`
- `ai-framework/roles/orchestrator.md`
- `skills/helper/frontend-design/**`
- `skills/orchestrator/**`

## Current Product State

The workspace contains a documentation-first framework that guides webpage production through five human-led skills from idea articulation through production deployment.

The framework now includes a helper skill for distinctive frontend design quality and static visual approval before implementation when design direction is open.

The project now includes GitHub-facing documentation and is intended to be tracked locally with Git before remote upload.

## Known Issues

- No executable CLI/state-machine runner exists yet.
- No automated schema validation exists yet.
- No MCP integrations are configured yet.
- No GitHub remote has been created or pushed yet.

## Failed Attempts

- None.

## Decisions Made

- Framework starts markdown-first for clarity, auditability, and easy iteration.
- `AGENTS.md` is the operating manifest.
- `HANDOFF.md` is the resume and continuity artifact.
- Human approval is mandatory for requirements, strategy, IA, design, implementation, dependencies, architecture changes, destructive edits, and deployment.
- Production-ready requires human UI design approval and deployed production verification without known bugs.
- Human input is the source of truth.
- The primary workflow is now `new-idea -> discovery -> plan -> implementation -> deploy`.
- Each orchestrator skill must use local `SKILL.md`, `missing-input.response.md`, and `summary.response.md`.
- Each orchestrator skill now also uses local `completion-checklist.md`.
- Every skill summary supports approve, modify, and reject.
- `implementation` should auto-discover commands from project manifests/configs before asking the human.
- Helper skills live under `skills/helper/`, support primary stages, and do not advance the primary workflow.
- `frontend-design` is used during `plan`, `implementation`, and QA to prevent generic AI UI output.
- If visual direction is not already approved, a static mockup or equivalent visual preview must be approved before implementation.
- The Aesthetic Playbook is guidance, not strict style law.
- This pass remains markdown/checklist-based; no schemas, CLI runner, or automated state machine were added.
- MIT license selected.
- `HANDOFF.md` is intentionally included in the repository because it is part of the operating model.
- Local Git tracking is approved; remote creation and push are not part of this pass.

## Pending Decisions

- Whether to add a CLI runner for the state machine later.
- Which frontend stack should be the default webpage generator target.
- Which MCP servers and deployment platforms should be integrated first.
- Whether to add machine-readable schemas/checklists for skill outputs, approvals, validation evidence, and handoff state.
- Which GitHub remote URL and repository visibility to use later.

## Next Recommended Steps

1. Create a GitHub repository and add it as a remote when ready.
2. Push the local initial commit to GitHub.
3. Run a manual simulation through all five skills plus `frontend-design`.
4. Test `plan` with incomplete IA/design input and confirm it asks a questionnaire before producing a plan.
5. Test the static mockup approval gate before `implementation`.
6. Choose whether to add a CLI runner after the markdown workflow stabilizes.

## Validation Status

- Build: Not applicable yet.
- Lint: Not applicable yet.
- Typecheck: Not applicable yet.
- Tests: Not applicable yet.
- Accessibility: Not applicable yet.
- Responsive: Not applicable yet.
- Visual Design: Framework requires human approval, no webpage built yet.
- Content: Framework docs updated with helper skill, Aesthetic Playbook, questionnaire planning, static mockup gate, and interface checks.
- SEO: Framework includes SEO role and checks.
- Performance: Framework includes performance checks.
- Security: Framework includes security checks.
- Production Deployment: Not applicable yet.
- GitHub Readiness: Root README, MIT license, gitignore, contributing guide, and local Git tracking prepared.

## Commands Already Run

- `pwd`
- `rg --files`
- `ls`
- `git status --short`
- `sed -n ... AGENTS.md`
- `sed -n ... HANDOFF.md`
- `sed -n ... skills/orchestrator/**`
- `sed -n ... ai-framework/**`
- `find . -type f -not -path './.git/*' -not -path './node_modules/*' -maxdepth 5`
- `wc -l AGENTS.md HANDOFF.md ai-framework/*.md ai-framework/templates/*.md ai-framework/roles/*.md skills/orchestrator/*.md skills/orchestrator/*/*.md`
- `rg -n "TODO|FIXME|unknown|not applicable|approval|approve|final|placeholder|\\.\\.\\.|schema|MCP|dependency|deploy|production-ready|production readiness" AGENTS.md HANDOFF.md ai-framework skills`
- `mkdir -p skills/helper/frontend-design/references`
- `find skills/helper -maxdepth 4 -type f | sort`
- `rg -n "frontend-design|static mockup|Aesthetic Playbook|questionnaire|AI slop|Interface Quality|Vercel-derived|transition: all" AGENTS.md ai-framework skills`
- `find . -type f -not -path './.git/*' -not -path './node_modules/*' -maxdepth 6 | sort`
- `find . -maxdepth 2 -type f -name 'README*' -o -name 'LICENSE*' -o -name '.gitignore' -o -name 'CONTRIBUTING*' -o -name 'SECURITY*' -o -name 'CODE_OF_CONDUCT*'`
- `rg -n "TODO|FIXME|\\.\\.\\.|unknown|not applicable|generic|slop|schema|runner|MCP|Git|github|license|README|duplicate|workflow|helper|frontend-design|approval|approve|deploy|production" AGENTS.md HANDOFF.md ai-framework skills`
- `git init`
- `git add .`
- `git commit -m "Initial Web Page Factory Framework"`
- `git status --short`

## Commands Still Needed

- None for the markdown scaffold.
- Future executable implementation should add build/lint/test commands.
- Manual workflow simulation is recommended for the new helper skill and static mockup gate.
- Add and push a GitHub remote when the repository owner is ready.

## Risks and Assumptions

- Assumption: The first version should be documentation-first, not an automated CLI.
- Assumption: Static mockups are sufficient as the pre-implementation visual approval artifact.
- Assumption: The repository should use the MIT license.
- Assumption: `HANDOFF.md` should be committed with the framework.
- Risk: Without an executable runner, process compliance depends on agents following `AGENTS.md`.
- Risk: Tooling choices depend on the eventual webpage stack.
- Risk: No remote repository has been configured yet.
