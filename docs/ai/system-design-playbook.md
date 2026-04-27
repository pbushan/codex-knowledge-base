# System Design Playbook

For every system design task, produce:

1. Problem statement
2. Constraints and assumptions
3. Whiteboard explanation
4. Mermaid architecture diagram
5. Component responsibilities
6. Data flow
7. Failure modes
8. Observability plan
9. Security and governance considerations
10. Tradeoff analysis
11. Implementation plan
12. ADR

## Diagram Rule

Use Mermaid diagrams by default for architecture, sequence, and flow diagrams.

Keep diagrams readable. Prefer one clear diagram over several noisy diagrams.

## Design Behavior

Codex should challenge the requested architecture when a better option exists.

Explain:

- why the current idea may be risky
- what alternatives exist
- what is recommended
- what tradeoffs come with the recommendation

## ADR Rule

Store ADRs as separate files under `docs/adr/`.

Recommended naming format:

```text
docs/adr/YYYY-MM-DD-short-decision-title.md
```

This keeps major decisions discoverable, reviewable, and version-controlled independently from project memory.

Create new ADRs with status `Proposed` first. Change status to `Accepted` only after explicit user approval.

For high-risk decisions, include rollback or recovery notes in both the PR body and ADR.

## ADR Format

```md
# ADR: <Decision Title>

## Status
Proposed | Accepted | Superseded

## Date
YYYY-MM-DD

## Context

## Decision

## Alternatives Considered

## Consequences

## Rollback or Recovery

## Follow-ups
```
