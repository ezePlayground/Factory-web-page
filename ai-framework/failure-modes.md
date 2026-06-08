# Failure Modes

Use this file during planning, execution, and review to catch common AI development failures.

## High-Risk Failures

- Acting before approval
- Inventing requirements
- Creating generic design
- Creating generic AI slop instead of a distinctive approved frontend direction
- Making unrelated edits
- Adding unapproved dependencies
- Skipping validation
- Claiming production readiness before deployment verification
- Producing inaccessible UI
- Producing weak or vague copy
- Ignoring SEO basics
- Skipping static mockup approval when visual direction was open

## Recovery Rule

When a failure is detected:

1. Stop the current skill.
2. Identify the exact artifact, diff, or tool output that proves the issue.
3. Assign the responsible role.
4. Fix only the scoped issue.
5. Re-run the relevant validation.
6. Update `HANDOFF.md`.
