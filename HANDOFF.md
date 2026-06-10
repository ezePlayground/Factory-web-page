# HANDOFF.md

## Current Goal

Build the Web Page Factory Framework: a markdown-first AI orchestration framework for producing production-ready webpages through five human-led skills, approvals, deterministic validation, and persistent handoff state.

## User-Approved Scope

Create the framework structure and documentation artifacts, then refactor the workflow into five human-led orchestrator skills under `skills/orchestrator/`.

## Current Stage

Framework governance, freeze policy, schemas, sidecar records, and validation automation implemented and locally validated.

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
- Added GitHub remote `git@github.com:ezePlayground/Factory-web-page.git`.
- Pushed `main` to `origin/main`.
- Added framework freeze policy, roadmap, changelog, security policy, schemas, JSON sidecar records, validation script, GitHub workflow, issue templates, PR template, and mockup artifact rules.
- Replaced vague template placeholders with bracketed field prompts.
- Ran `bash scripts/validate-framework.sh`; validation passed.

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
- `FRAMEWORK_FREEZE.md`
- `ROADMAP.md`
- `CHANGELOG.md`
- `SECURITY.md`
- `/schemas/**`
- `/records/**`
- `/artifacts/mockups/**`
- `/scripts/validate-framework.sh`
- `/.github/**`

## Files Modified

- `AGENTS.md`
- `HANDOFF.md`
- `README.md`
- `CONTRIBUTING.md`
- `FRAMEWORK_FREEZE.md`
- `ROADMAP.md`
- `CHANGELOG.md`
- `SECURITY.md`
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
- `schemas/**`
- `records/**`
- `scripts/validate-framework.sh`
- `.github/**`

## Current Product State

The workspace contains a documentation-first framework that guides webpage production through five human-led skills from idea articulation through production deployment.

The framework now includes a helper skill for distinctive frontend design quality and static visual approval before implementation when design direction is open.

The project is pushed to GitHub at `git@github.com:ezePlayground/Factory-web-page.git`. Local `main` tracks `origin/main`.

The framework includes a freeze policy, validation script, GitHub workflow, JSON Schemas, and JSON sidecar records while keeping Markdown as the human-readable operating layer.

## Known Issues

- No executable CLI/state-machine runner exists yet.
- No MCP integrations are configured yet.
- Branch protection still needs to be configured manually in GitHub settings.
- Real JSON Schemas exist, but full JSON instance validation is deferred until a CLI or schema validator is approved.

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
- Local Git tracking is configured and pushed to `origin/main`.
- Freeze status starts as `Not frozen`.
- JSON sidecars are required for machine-checkable important-event state while Markdown remains the readable operating layer.

## Pending Decisions

- Whether to add a CLI runner for the state machine later. Tracked in `ROADMAP.md`.
- Which frontend stack should be the default webpage generator target. Tracked in `ROADMAP.md`.
- Which MCP servers and deployment platforms should be integrated first. Tracked in `ROADMAP.md`.
- Whether to convert core state from Markdown to JSON/YAML later. Tracked in `ROADMAP.md`.

## Next Recommended Steps

1. Run `bash scripts/validate-framework.sh`.
2. Commit and push the governance/validation pass.
3. Configure GitHub branch protection for `main`.
4. Run a manual simulation through all five skills plus `frontend-design`.
5. Test the static mockup approval gate before `implementation`.

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
- GitHub Readiness: Remote configured and `main` pushed to `origin/main`.
- Framework Validation: `bash scripts/validate-framework.sh` passed locally.

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
- `git remote add origin git@github.com:ezePlayground/Factory-web-page.git`
- `git push -u origin main`
- `git remote -v`
- `bash scripts/validate-framework.sh`
- `rg -n '\\.\\.\\.' AGENTS.md HANDOFF.md README.md CONTRIBUTING.md ai-framework skills FRAMEWORK_FREEZE.md ROADMAP.md CHANGELOG.md SECURITY.md`

## Commands Still Needed

- None for the markdown scaffold.
- `git add .`
- `git commit -m "Add framework governance and validation"`
- `git push`
- Manual workflow simulation is recommended for the new helper skill and static mockup gate.
- Configure GitHub branch protection manually after the workflow is pushed.

## Risks and Assumptions

- Assumption: The first version should be documentation-first, not an automated CLI.
- Assumption: Static mockups are sufficient as the pre-implementation visual approval artifact.
- Assumption: The repository should use the MIT license.
- Assumption: `HANDOFF.md` should be committed with the framework.
- Assumption: Freeze mode remains `Not frozen` until explicitly changed.
- Assumption: JSON sidecars are the current machine-checkable layer; full JSON/YAML core conversion is deferred.
- Risk: Without an executable runner, process compliance depends on agents following `AGENTS.md`.
- Risk: Tooling choices depend on the eventual webpage stack.
- Risk: GitHub admins can technically bypass branch protection; `FRAMEWORK_FREEZE.md` defines the expected operating model.

## JSON Sidecar Records

- Handoff state: `records/handoff-state.json`
- Approvals: `records/approvals/`
- Skill summaries: `records/skill-summaries/`
- Validation evidence: `records/validation-evidence/`
