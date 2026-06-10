# Security Policy

## Supported Scope

This repository currently contains a markdown-first framework, not a deployed application. Security concerns usually relate to:

- exposed secrets or environment files
- unsafe deployment instructions
- unsafe third-party scripts recommended by the framework
- dependency or tool guidance added in future framework changes
- production pages generated from the framework

## Reporting

Report security issues privately to the repository owner. Do not open public issues for exposed secrets or sensitive vulnerabilities.

## Expectations

- Do not commit `.env` files or secrets.
- Do not add tracking, analytics, or third-party scripts without approval.
- Do not claim production readiness if sensitive data is exposed.
- Run `bash scripts/validate-framework.sh` before merging framework changes.

