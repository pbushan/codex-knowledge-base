# Repo Codex Instructions

Use my global Codex knowledge base for operating rules.

Global KB location:
`~/.codex/knowledge-base/AGENTS.md`

Project memory:
`docs/ai/project-memory.md`

Architecture decisions:
`docs/adr/`

Do not read the full global KB by default. Classify the task and read only the relevant files.

## Project Quality Mode

Current mode: TBD

At project setup, ask once:

Is this project intended to be:

1. Prototype/spike-quality
2. Portfolio-quality
3. Production-quality

Persist the answer in `docs/ai/project-memory.md` and do not ask again.

## Repo Rules

- Never work directly on `main` unless explicitly instructed.
- Inspect the working tree before starting; stop and ask if it is dirty.
- Always create one branch per approved task.
- Always ask for plan approval before editing.
- Keep PRs focused and reviewable; do not enforce fixed line-count or file-count limits.
- Use Conventional Commits for commits and PR titles.
- Use `gh` CLI for GitHub operations.
- Load `CODEX_GITHUB_TOKEN` from `.env` or shell environment for the current session only.
- Create or update `.env.example` when required env vars are discovered.
- Docker may be run locally after plan approval without separate permission.
- Prefer unit tests first unless behavior crosses service boundaries.
- If Docker Compose is available and relevant, run local verification against it.
- Local verification is sufficient; do not wait for CI unless explicitly requested.
- Update README/docs when behavior, setup, APIs, or workflows change.
- Commit after tests pass.
- Push and open PR after approved execution.
- Add useful PR labels such as `ai-generated`, `needs-human-review`, `high-risk`, and `docs-only` when available.
- Preserve separation between AI-generated and human-authored work through branch names, labels, and PR descriptions.
- Never merge PRs.
- Trigger high-risk mode for security, auth, secrets, payments, data deletion, migrations, production infrastructure, and performance-sensitive changes.
- Ask before modifying generated files, lock files, or vendored code.
- Do not create random TODOs. Add TODOs only when tied to a GitHub Issue or planned follow-up PR.
