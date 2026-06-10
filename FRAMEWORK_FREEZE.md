# Framework Freeze Policy

## Status

Not frozen.

The framework enters freeze mode only when this status is changed to `Frozen` by an approved maintenance decision.

## Purpose

Freeze mode protects the finished framework from direct human edits. After freeze, changes must be proposed, reviewed, validated, and recorded before they are merged.

## Protected Paths

- `AGENTS.md`
- `HANDOFF.md`
- `README.md`
- `CONTRIBUTING.md`
- `FRAMEWORK_FREEZE.md`
- `ROADMAP.md`
- `CHANGELOG.md`
- `SECURITY.md`
- `ai-framework/**`
- `skills/**`
- `schemas/**`
- `records/**`
- `scripts/**`
- `.github/**`

## Rule After Freeze

After freeze, humans must not manually modify protected framework files directly on `main`.

Allowed changes must use this maintenance workflow:

1. Open a maintenance request.
2. Create a branch.
3. Make the scoped change.
4. Run `bash scripts/validate-framework.sh`.
5. Update `HANDOFF.md`, `CHANGELOG.md`, and `ROADMAP.md` when relevant.
6. Open a pull request.
7. Merge only after validation passes.

## Branch Protection Required

Configure GitHub branch protection for `main`:

- Require pull requests before merging.
- Require the framework validation workflow to pass.
- Block direct pushes where possible.
- Require review before merge after freeze.

Repository administrators can technically bypass protections. This policy defines the required operating model for normal project use.

