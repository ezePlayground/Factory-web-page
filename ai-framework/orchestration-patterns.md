# Modern Orchestration Patterns

This framework adopts orchestration patterns common in current agentic engineering systems:

- Explicit state machines instead of unconstrained agent loops.
- Durable state and resumability for long-running workflows.
- Human-in-the-loop gates for high-risk or subjective decisions.
- Separate agent roles with bounded scopes.
- Deterministic tools for formatting, linting, testing, building, scanning, and deployment checks.
- Audit trails through handoff files, reports, commands, and approval records.
- Context control to prevent stale, irrelevant, or excessive context.
- Tool permissions based on risk.
- CI-style evidence before release.

## Reference Patterns

- LangGraph: state, memory, and human-in-the-loop orchestration.
- CrewAI Flows: controlled flow orchestration, state, persistence, and resume.
- Microsoft Agent Framework: explicit workflows, robust state management, and human-in-the-loop scenarios.
- Microsoft Conductor: declared workflow topology, isolated agent sessions, skills, MCP configuration, and human gates.
- Allma-style mixed human/AI workflow orchestration: auditable stateful workflows with evidence and guardrails.

## Application to Web Page Factory

- The orchestrator owns the workflow topology.
- Roles do not decide global next steps.
- Humans approve requirements, strategy, IA, design, execution, and release.
- AI proposes options and produces artifacts.
- Deterministic tools verify implementation quality.
- `AGENTS.md` provides shared rules.
- `HANDOFF.md` provides durable state.

