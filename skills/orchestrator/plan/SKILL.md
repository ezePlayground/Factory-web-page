---
name: plan
description: Use after discovery to create a decision-complete implementation plan for the webpage.
---

# Plan Skill

## When To Use

Use this skill when an approved discovery brief exists and the webpage needs a detailed implementation plan before coding.

## Input Expectations

Required input:

- Approved discovery brief
- Known required sections, desired outcomes, or open IA decisions
- Approved content facts and missing content flags
- Human design input, references, constraints, or preferences
- Brand direction, if known
- Architecture direction, if known
- Technical constraints
- Required functionality
- Success criteria
- Validation requirements

## Output Target

A proposed implementation plan that includes human-provided facts, resolved questions, proposed IA, section-by-section content requirements, design options or static mockup requirements, final selected or recommended design direction, brand direction, architecture, technical constraints, success criteria, validation requirements, and approved execution scope. Human approval happens after this proposed plan is produced and before `implementation`.

## Ambiguity Handling

- If goal, audience, content facts, required sections, functionality, architecture constraints, validation, or deployment expectations are unclear, ask a targeted questionnaire before planning.
- Keep asking concise follow-up questions until the plan can be decision-complete for implementation.
- Separate blockers from optional unknowns.
- If multiple implementation paths are viable, present options and a recommendation.
- If IA, visual direction, or architecture is not final, propose options and a recommendation instead of treating the missing decision as a blocker.
- If design direction is not visually approved, use the `frontend-design` helper skill and require a static mockup or equivalent visual preview for human approval before implementation.
- Do not advance to `implementation` until the human approves the proposed plan.

## Anti-Hallucination Rules

- Do not invent page content, brand rules, technical constraints, dependencies, or functionality.
- Do not assume approval.
- Do not treat proposed IA, design, or architecture options as approved until the human approves them.
- Do not start implementation.

## Output Contracts

Before responding:

- Read local `missing-input.response.md`.
- Read local `summary.response.md`.
- Read local `completion-checklist.md`.
- If required input is missing, use `missing-input.response.md`.
- If required input is complete, use `summary.response.md`.
- Before advancing, verify `completion-checklist.md`.
