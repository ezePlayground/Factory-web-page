# Roadmap

Future improvements that are intentionally not implemented yet.

## Deferred

| Item | Status | Notes |
|---|---|---|
| CLI/state-machine runner | Deferred | Add after the markdown workflow is manually proven. |
| End-to-end example simulation | Human-owned | The first full example run will be provided or run by the human. |
| MCP integrations | Deferred | Choose specific MCP servers and tools before adding setup. |
| Default frontend stack policy | Deferred | Decide only if the framework later scaffolds webpages itself. |
| Stack-specific validation tools | Deferred | Add guidance for Next, Vite, Astro, static sites, or other stacks later. |
| Release/versioning model | Deferred | Consider version tags and release process after the framework stabilizes. |
| JSON/YAML core state conversion | Review later | Current decision uses JSON sidecars. Reassess whether moving core state from Markdown to JSON/YAML would increase stability. |

## Active Follow-Up

- Configure GitHub branch protection for `main` after validation workflow is pushed.
- Run `bash scripts/validate-framework.sh` before future commits.

