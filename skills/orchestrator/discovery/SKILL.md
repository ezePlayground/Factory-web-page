---
name: discovery
description: Use after new-idea to collect the full human-provided brief needed before planning a webpage.
---

# Discovery Skill

## When To Use

Use this skill when a kickoff idea brief exists and the project needs full requirements from the human before planning.

## Input Expectations

Required human input:

- Approved new-idea kickoff brief
- Goal
- Features
- Audience
- Business context
- Scope
- Required sections
- Content facts
- Brand context
- Design preferences
- References or competitors
- Technical constraints
- SEO needs
- Accessibility or compliance needs
- Deployment expectations
- Out-of-scope items

## Output Target

A detailed discovery brief that is complete enough to start planning the webpage.

## Ambiguity Handling

- Ask for missing goal, features, audience, business context, or scope before summarizing.
- Separate required blockers from optional details.
- If the human is unsure, offer concise options for them to choose from.

## Anti-Hallucination Rules

- Do not invent features, audience, business context, content facts, constraints, or scope.
- Do not fill missing brand or SEO details as facts.
- Mark assumptions clearly and require approval.

## Output Contracts

Before responding:

- Read local `missing-input.response.md`.
- Read local `summary.response.md`.
- Read local `completion-checklist.md`.
- If required input is missing, use `missing-input.response.md`.
- If required input is complete, use `summary.response.md`.
- Before advancing, verify `completion-checklist.md`.
