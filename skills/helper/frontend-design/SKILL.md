---
name: frontend-design
description: Use as a helper skill during webpage planning, implementation, and QA to create distinctive, production-grade frontend interfaces, prevent generic AI slop, define approved visual direction, guide implementation, and review rendered UI quality.
---

# Frontend Design Skill

## When To Use

Use this helper skill inside:

- `plan`: when the webpage needs visual direction, layout patterns, component behavior, or a static mockup before implementation approval.
- `implementation`: when the implementer needs design-specific implementation guidance from the approved plan.
- QA/local review: when rendered screenshots or a local webpage need visual quality review.

This is a helper skill. It does not advance the primary workflow by itself.

## Required Context

- Approved strategy or discovery brief
- Audience and page goal
- Content facts, required sections, and avoid list
- Brand constraints, design references, or known preferences
- Target stack or implementation context when available
- Rendered screenshots or local URL when performing visual QA

If a distinctive direction is needed, read `references/aesthetic-playbook.md`. Use it as guidance, not a strict rule.

## Output Modes

### Planning Direction

Produce:

- 2-3 distinctive visual directions when direction is open.
- One recommended direction with short rationale.
- Typography, color, spacing, layout rhythm, component, state, motion, and interaction guidance.
- A single signature visual move that supports the page goal.
- Anti-slop constraints.
- Static mockup requirement and approval status when visual direction needs human approval.

### Implementation Guidance

Produce:

- Design implementation brief.
- Component and state checklist.
- Responsive rules.
- Interaction and accessibility requirements.
- Vercel-derived interface checks relevant to the page.

### Visual QA

Produce:

- Visual quality report based on screenshots, rendered page, or local URL evidence.
- Blocking, important, and polish issues.
- Differences from the approved design direction.
- A direct answer to: "Does this website look like an AI built it?" The accepted answer is no.
- Approval recommendation: approve, modify, or reject.

## Static Mockup Gate

When the visual direction is not already approved, require a static mockup before implementation starts.

The mockup can be an AI-generated image, design preview, or screenshot-style static composition. It must show the likely first viewport and enough lower-page structure for the human to judge the design direction.

Store approved mockup artifacts in `artifacts/mockups/` using:

```txt
YYYY-MM-DD-[project-or-page]-[direction-name]-vN.[png|jpg|webp|pdf]
```

Record approval in:

```txt
records/approvals/YYYY-MM-DD-[page]-mockup-approval.json
```

The human must approve, modify, or reject the mockup before implementation begins.

## Anti-Slop Rules

- Do not create generic SaaS-card layouts unless the approved direction requires them.
- Do not use decorative filler that does not support the page goal.
- Do not rely on a one-note palette.
- Do not use unsupported claims, fake metrics, fake logos, or fake testimonials.
- Do not copy protected designs.
- Do not create inaccessible visual choices.
- Do not use vague guidance like "modern and clean" without concrete design decisions.
- Always ask during visual QA: "Does this website look like an AI built it?" If the answer is yes, do not approve the design.

## Interface Quality Checks

Apply relevant checks from Vercel Web Interface Guidelines:

- Keyboard operability and visible `:focus-visible` states.
- Manage focus in modals, drawers, async flows, and error states.
- Correct link versus button semantics.
- Minimum hit targets: 24px desktop and 44px mobile.
- Browser zoom must not be disabled.
- Inputs must not lose focus or value after hydration.
- Do not block paste.
- Forms need labels, autocomplete where appropriate, validation, clear error messages, mobile input sizing, and first-error focus.
- Loading, empty, sparse, dense, and error states should be designed where relevant.
- Loading buttons keep the original label.
- URL state, deep links, back/forward behavior, and scroll restoration should work where relevant.
- Destructive actions require confirmation or undo.
- Motion should respect reduced-motion preferences.
- Avoid `transition: all`.
- Responsive behavior should be checked across mobile, laptop, and wide desktop.
- Images should have explicit dimensions to reduce layout shift.
- Metadata, `theme-color`, and `color-scheme` should match the interface when relevant.

## Output Contracts

Before responding:

- Read local `missing-input.response.md`.
- Read local `summary.response.md`.
- Read local `completion-checklist.md`.
- If required design input is missing, use `missing-input.response.md`.
- If required design input is complete, use `summary.response.md`.
- Before returning an approval recommendation, verify `completion-checklist.md`.
