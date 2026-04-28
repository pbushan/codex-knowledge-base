# Testing Strategy

Use a staged test ladder.

## Default Test Order

1. Prefer unit tests first for isolated behavior.
2. Run the smallest targeted test that proves the change.
3. Run related module or service tests.
4. Use integration tests when behavior crosses service, database, queue, API, or infrastructure boundaries.
5. If `docker-compose.yml` or `compose.yml` is available and relevant, start the local Docker environment and run verification against it.
6. Run the full local suite when practical before PR.
7. Local verification is sufficient for Codex to consider the task complete.
8. If CI exists, mention that CI still needs to pass after PR creation, but do not wait for CI unless explicitly requested.
9. If full suite is too expensive or unavailable, explain what was not run and why.

Prefer `docker compose` over legacy `docker-compose` when available.

## Test Expectations

For bug fixes:

- add or update a regression test when practical

For new features:

- cover happy path
- cover meaningful edge cases
- avoid brittle over-testing

For refactors:

- prove behavior did not change

For system workflows:

- prefer integration tests where value exceeds cost

## Failure Rule

If tests fail:

- stop
- summarize failing tests
- identify likely cause
- propose the smallest fix
- do not keep patching blindly
