# GitHub Workflow

## GitHub Tooling

Use the GitHub CLI (`gh`) as the default GitHub integration tool.

Authentication rule:

- Load `CODEX_GITHUB_TOKEN` from the local `.env` file or current shell environment.
- Use it only for the current session.
- Never print the token.
- Never commit the token.
- Never write secrets into project files.
- If authentication fails, stop and explain the smallest fix needed.

## Environment Files

When required environment variables are discovered, create or update `.env.example` with placeholder values.

Rules:

- `.env.example` may be committed.
- `.env` must not be committed.
- Never copy real secret values into `.env.example`.
- Add comments only when they reduce setup ambiguity.

## Dirty Working Tree Rule

Before starting work, inspect the working tree.

If there are uncommitted changes:

1. Stop.
2. Summarize the dirty files.
3. Warn that continuing may mix user work with Codex work.
4. Ask whether to continue, stash, commit, or stop.

Do not proceed without explicit permission.

## Branching

Use one branch per approved task.

Branch format:

```text
ai/<task-type>/<short-description>
```

Examples:

```text
ai/bugfix/fix-order-status-transition
ai/feature/add-health-summary-endpoint
ai/test/add-consumer-integration-tests
```

Rules:

- Never work directly on `main` unless explicitly instructed.
- Start from the latest remote default branch.
- Do not reuse stale AI branches unless explicitly instructed.
- Keep one concern per branch.
- Prefer rebasing task branches on the latest default branch before PR updates, unless the repo convention prefers merge commits.
- Never rewrite shared human-authored branch history without explicit approval.

## Commit Style

Use Conventional Commits.

Examples:

```text
feat: add health summary endpoint
fix: handle missing order status safely
test: add regression coverage for issue pickup
refactor: simplify intake validation flow
docs: add ADR for review workflow
```

## PR Creation

A PR title should use Conventional Commit format.

A PR should include:

- purpose
- implementation checklist
- summary of changes
- tests run
- risks or limitations
- rollback notes for high-risk changes
- reviewer checklist for AI-generated PRs
- follow-up work if any

Use labels and PR descriptions to clearly distinguish AI-generated work from human-authored work.

Add useful labels when available, such as:

- `ai-generated`
- `needs-human-review`
- `high-risk`
- `docs-only`
- task-type labels such as `feature`, `bugfix`, `test`, or `refactor`

## Merge Rule

Codex must never merge PRs.
