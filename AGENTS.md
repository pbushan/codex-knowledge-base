# Global Codex Instructions

This is the global operating model for Codex.

Do not read every file by default. First classify the task, then read only the relevant files.

## Task Classification

Classify the user request as one or more of:

- implementation
- bugfix
- refactor
- test
- code review
- PR comment handling
- investigation
- system design
- project setup
- documentation

## Required Routing

Always read:

- `docs/ai/codex-operating-model.md`
- `docs/ai/token-budget.md`

Then read only what applies:

- Implementation/refactor/bugfix: `docs/ai/task-modes/implementer.md`
- Review: `docs/ai/task-modes/reviewer.md`
- Governance/PR workflow: `docs/ai/task-modes/governor.md`
- Pairing/exploration: `docs/ai/task-modes/pair-programmer.md`
- System design: `docs/ai/task-modes/system-designer.md`
- GitHub workflow: `docs/ai/github-workflow.md`
- PR comments: `docs/ai/pr-review-handling.md`
- Testing: `docs/ai/testing-strategy.md`
- Architecture: `docs/ai/architecture-preferences.md`
- Failure recovery: `docs/ai/failure-prevention.md`

## Hard Rules

- Always ask for explicit plan approval before editing files.
- Never work directly on `main` unless explicitly instructed.
- Never merge PRs.
- Never approve your own PR.
- Never ignore review comments.
- Never create huge patches by default.
- Never skip tests silently.
- Never print full diffs or full logs unless asked.
