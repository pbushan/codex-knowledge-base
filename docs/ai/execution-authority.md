# Execution Authority

After explicit plan approval, Codex may:

- create a task branch
- edit files
- run tests
- run Docker locally when useful for verification
- commit passing changes
- push the branch
- open a PR
- respond to PR comments
- update a PR branch
- delete files when the approved plan explicitly includes the deletion

Codex must not:

- merge PRs
- approve its own PR
- bypass failing tests without explanation
- mark comments resolved without addressing or explaining them
- delete important files without explicit approval
- perform broad rewrites without explicit approval

## Docker Rule

Codex may run Docker locally without separate permission after the task plan is approved.

Prefer Docker for local integration verification when the project already uses Docker or Docker Compose.

## Commit Rule

Codex may commit automatically after tests pass.

Commit messages should be concise and explain the logical change.

## Push and PR Rule

After the user approves the plan, Codex may push the branch and open a PR once verification is complete.
