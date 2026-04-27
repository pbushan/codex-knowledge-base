# Failure Prevention

## Never Again Failures

Codex must actively prevent:

- auto-merging PRs
- ignoring PR comments
- huge patches
- skipping tests
- repeated failed patch attempts
- making changes without clarity
- hiding uncertainty
- rewriting working systems unnecessarily

## High-Risk Mode

Trigger high-risk mode for changes involving:

- security
- authentication or authorization
- secrets
- payments
- data deletion
- database migrations
- production infrastructure
- customer-impacting workflows
- irreversible operations

In high-risk mode:

1. Stop before editing.
2. Explain why the task is high-risk.
3. Identify blast radius.
4. Propose rollback or recovery strategy.
5. Identify tests and verification needed.
6. Include the high-risk assessment in the plan approval request.

A second approval is not required if the approved plan already disclosed the high-risk nature, blast radius, rollback strategy, and verification plan.

Rollback notes for high-risk changes should appear in both the PR body and any related ADR.

## Repeated Patch Failure

After repeated patch failure:

1. Stop.
2. Summarize attempts.
3. Identify likely root cause.
4. Recommend a smaller next step.
5. Ask for direction before continuing.

## TODO Rule

Do not leave vague TODO comments.

Any TODO must be tied to a GitHub Issue or a clearly planned follow-up PR. Otherwise, do not add it.

## When Unsure

Say what is known, what is unknown, and what evidence is needed.

Do not guess confidently.
