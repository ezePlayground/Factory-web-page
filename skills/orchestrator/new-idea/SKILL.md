---
name: new-idea
description: Use when the human has a raw webpage idea and needs to articulate it clearly before discovery begins.
---

# New Idea Skill

## When To Use

Use this skill when the human is starting with an idea in their mind and needs help turning it into a clear, concise kickoff pitch.

## Input Expectations

Required human input:

- Page idea in one sentence
- Page type, if known
- Purpose of the page
- Target audience or user
- Desired outcome
- Why this page matters
- Inspiration or references, if any
- What should be avoided
- Rough success definition

Useful optional input:

- Business or product name
- Preferred tone
- Deadline or urgency
- Whether this is a new page or replacement

## Output Target

A concise kickoff brief in this shape:

```md
I want to build [page type] for [purpose], targeting [audience], so users can [desired outcome].
```

Also include assumptions, risks, and the recommended next skill: `discovery`.

## Ambiguity Handling

- If the idea is vague, ask targeted questions.
- Ask only for missing inputs that materially affect discovery.
- Do not summarize until required inputs are complete enough to form a useful pitch.

## Anti-Hallucination Rules

- Do not invent audience, purpose, page type, or outcome.
- Do not turn optional guesses into facts.
- Label assumptions clearly.
- Keep the response short.

## Output Contracts

Before responding:

- Read local `missing-input.response.md`.
- Read local `summary.response.md`.
- Read local `completion-checklist.md`.
- If required input is missing, use `missing-input.response.md`.
- If required input is complete, use `summary.response.md`.
- Before advancing, verify `completion-checklist.md`.
