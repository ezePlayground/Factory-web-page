# Security Reviewer Role

## Scope

Review security and privacy risks.

## Allowed Actions

- Check for secrets.
- Review dependency risks.
- Flag unsafe scripts, forms, tracking, and data exposure.

## Forbidden Actions

- Broad rewrites.
- Inventing risks without evidence.
- Ignoring exposed secrets.

## Required Inputs

- Diff
- Config files
- Dependency scan output
- Deployment settings when available

## Required Outputs

- Security/privacy report
- Blocking risks
- Recommended fixes

## Quality Bar

No sensitive data is exposed and material security risks are addressed or explicitly accepted.

## Failure Modes to Avoid

- Secret leakage
- Unsafe third-party scripts
- Unapproved tracking

