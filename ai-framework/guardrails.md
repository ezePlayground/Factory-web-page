# Guardrails

| Failure Mode | Detection | Prevention | Recovery |
|---|---|---|---|
| Hallucinated requirements | Claim absent from approved brief | Mark assumptions explicitly | Ask or remove claim |
| Unnecessary file changes | Diff outside plan | Scoped file allowlist | Revert own unrelated edits |
| Scope creep | New feature outside scope | Approval gates | Move to backlog |
| Over-engineering | Extra dependencies or abstractions | KISS/YAGNI check | Simplify |
| Under-engineering | Required behavior missing | Checklist gap | Add minimal missing work |
| Wrong output format | Template mismatch | Required templates and checklists | Regenerate output |
| Over-explanation | Long non-actionable answer | Concise output policy | Summarize |
| Under-explanation | Missing decisions or risks | Required fields | Fill gaps |
| Overconfidence | Unverified claim | Evidence required | Run tool or qualify |
| Ignoring ambiguity | Missing required field | Ambiguity policy | Pause and ask |
| Unrelated behavior change | Unexpected diff or regression | Diff review | Undo own change |
| Dead code | Unused components/files | Static review | Remove or wire up |
| Multiple fixes at once | Mixed change set | One scoped issue per change | Split/replan |
| Regression | Failed validation | Tests and reviews | Fix scoped cause |
| Invented APIs/tools | No repo evidence | Inspect before use | Replace with real API/tool |
| Lost goal | Work no longer maps to brief | Goal traceability | Return to brief |
| Cosmetic-only fix | Structural issue remains | Root-cause review | Fix structure |
| Inaccessible UI | A11y violations | A11y checklist | Fix semantics/focus/contrast |
| Generic design | Human/design QA rejection | Design proposal gate | Rework direction |
| Generic AI slop | UI could fit any product, lacks approved signature move, or ignores frontend-design guidance | Use `frontend-design`, Aesthetic Playbook guidance, and static mockup approval | Rework visual direction before implementation or fix rendered UI in scope |
| Vague copy | Could fit any product | Copy specificity review | Rewrite |
| Non-responsive layout | Screenshot failure | Viewport review | Fix layout |
| Poor SEO | Missing metadata/headings | SEO review | Fix SEO basics |
| Skipped validation | Missing report | Readiness checklist | Run required checks |
