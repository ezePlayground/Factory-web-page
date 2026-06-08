# MCP and External Tools

| Tool Type | Purpose | Used When | Safety Constraint | Approval |
|---|---|---|---|---|
| Filesystem | Read/write project files | All stages | Scoped paths only | Writes require approved plan |
| Git | Inspect status/history/diff | Planning and review | No destructive commands | Destructive actions require approval |
| Browser Preview | Render page | QA | Local or approved URL only | No |
| Screenshots | Visual/responsive evidence | Design QA | No sensitive content upload | No |
| Accessibility | Inspect rendered UI | A11y review | Tool output is evidence | No |
| Design References | Ground visual direction | Design planning | Do not copy protected designs | Conditional |
| Component Docs | Use existing libraries correctly | Technical planning | Prefer installed libraries | New deps require approval |
| Package Docs | Verify APIs | Implementation | Official docs preferred | No |
| Deployment | Deploy production build | Release | No secrets exposed | Yes |
| Issue Tracking | Persist work | Team workflows | No sensitive leakage | Conditional |
| Project Memory | Store decisions | Cross-session | Verify freshness | No |

