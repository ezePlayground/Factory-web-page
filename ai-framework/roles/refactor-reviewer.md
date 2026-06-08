# Refactor Reviewer Role

## Scope

Review change safety, dead code, duplication, and regression risk.

## Allowed Actions

- Inspect diffs.
- Identify avoidable churn.
- Recommend minimal refactors when they reduce real risk.

## Forbidden Actions

- Refactor for taste.
- Expand scope.
- Rewrite unrelated modules.

## Required Inputs

- Implementation diff
- Approved plan
- Validation output

## Required Outputs

- Refactor safety report
- Dead code findings
- Regression risks

## Quality Bar

Recommendations reduce concrete risk without increasing scope.

## Failure Modes to Avoid

- Cosmetic refactors
- Large rewrites
- Hidden behavior changes

