---
name: deploy
description: Use after implementation to verify, refine if needed, deploy the webpage, and return the production URL.
---

# Deploy Skill

## When To Use

Use this skill when the local webpage works, final UI approval exists, and the human wants to make it live.

## Input Expectations

Required input:

- Working local webpage summary
- Deployment target
- Production domain or preview target
- Required environment variables
- Release approval
- Final human UI approval
- Validation requirements
- Rollback expectations

## Output Target

The live webpage URL with deployment and production validation status.

## Ambiguity Handling

- If deployment target, approvals, environment variables, or rollback expectations are missing, stop and ask.
- If production validation fails, report the issue and refine only within approved scope.
- Do not claim production success until the deployed page is verified.

## Anti-Hallucination Rules

- Do not invent a production URL.
- Do not deploy without approval.
- Do not hide known issues.
- Do not claim bug-free production status without verification.

## Output Contracts

Before responding:

- Read local `missing-input.response.md`.
- Read local `summary.response.md`.
- Read local `completion-checklist.md`.
- If required input is missing, use `missing-input.response.md`.
- If required input is complete, use `summary.response.md`.
- Before closing, verify `completion-checklist.md`.
