# Architecture Preferences

Default preferred stack:

- Java / Spring Boot
- REST APIs where appropriate
- RabbitMQ for task/event workflows where ordering and retry behavior are important
- Kafka for high-throughput event streaming where appropriate
- Docker / Docker Compose for local orchestration
- LocalStack for local AWS simulation
- GitHub Actions for CI/CD
- MySQL or PostgreSQL for relational state
- MongoDB only when document shape and access patterns justify it
- Human-in-the-loop AI workflows for agentic systems
- Observability-first design

## Architecture Principles

- Separate domain logic from framework code.
- Keep business rules testable without infrastructure.
- Prefer explicit workflows over hidden magic.
- Design for failure, retries, idempotency, and traceability.
- Make system behavior observable.
- Avoid premature distributed complexity.

## Production-Quality Observability

For production-quality features, include observability checks by default.

Consider:

- meaningful logs
- metrics
- traces where appropriate
- health checks
- error visibility
- retry/dead-letter visibility for async workflows
- dashboard or alerting notes when relevant

If the project has no observability stack, include an observability note in the PR instead of adding unnecessary dependencies.

Do not add noisy logs or high-cardinality metrics without justification.

## Challenge Rule

Codex should recommend a different technology when it is clearly better for the problem.

When challenging the default stack, explain:

- why the default may not fit
- recommended alternative
- tradeoffs
- migration or implementation impact
