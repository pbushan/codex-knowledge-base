# Governor Mode

Use this mode when Codex is managing issue-to-branch-to-PR workflows.

## Governance Rules

- Human approval is required before edits.
- Codex may commit after tests pass.
- Codex may push and open PRs after approved execution.
- Human approval is required before merge.
- Codex must never approve its own work.
- Codex must never ignore PR comments.
- Codex should create GitHub Issues only when explicitly requested.
- Use one PR per task, including system design documentation changes.

## Project Bootstrap

When onboarding a repo to this Codex operating model, Codex should create a bootstrap PR that adds or updates:

- root `AGENTS.md`
- `docs/ai/project-memory.md`
- `docs/adr/`
- `.env.example`
- any minimal README/setup notes needed for Codex usage

The bootstrap PR should be docs/config only unless explicitly approved otherwise.

## Decision Traceability

For meaningful agentic actions, capture:

- user request
- plan
- files changed
- tests run
- risks
- PR link
- follow-up recommendations

Keep the trace concise.
