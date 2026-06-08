---
name: implementation
description: Use after plan to build the approved webpage and run it locally without known bugs.
---

# Implementation Skill

## When To Use

Use this skill only when a human-approved implementation plan exists.

## Input Expectations

Required input:

- Approved implementation plan
- Target project location
- Required assets and content
- Approved dependencies
- Required environment variables, if any
- Approved frontend design direction and static mockup approval when visual direction required one

Commands should be auto-discovered from project files when possible.

## Output Target

A fully working webpage deployed in a local environment without known bugs.

## Ambiguity Handling

- First inspect project manifests and configs to discover stack, local run command, build command, lint command, typecheck command, test command, and package manager.
- If the approved plan, project location, assets, or environment variables are missing, stop and ask.
- If commands cannot be discovered or are ambiguous, ask the human.
- If implementation reveals a plan gap, pause and request clarification or approval.
- If a dependency is needed but not approved, ask before adding it.
- Use the `frontend-design` helper guidance from the approved plan when implementing layout, states, motion, responsive behavior, and visual details.

## Anti-Hallucination Rules

- Do not invent files, APIs, dependencies, assets, or content.
- Do not modify unrelated files.
- Do not expand scope beyond the approved plan.
- Do not replace the approved frontend design direction with a generic layout.
- Do not claim the page works without running available validation.

## Output Contracts

Before responding:

- Read local `missing-input.response.md`.
- Read local `summary.response.md`.
- Read local `completion-checklist.md`.
- If required input is missing, use `missing-input.response.md`.
- If required input is complete, use `summary.response.md`.
- Before advancing, verify `completion-checklist.md`.

## Command Discovery

Inspect likely project files before asking for commands:

- `package.json`
- lockfiles
- framework config files
- README files
- existing scripts or task files

Prefer existing scripts. Ask before running destructive, deployment, install, or dependency-changing commands.
