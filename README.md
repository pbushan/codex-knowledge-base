# Codex Knowledge Base

This repository defines how Codex should collaborate with me across software projects.

The goal is not to give Codex every detail upfront. The goal is to provide a lightweight operating model that routes Codex to the minimum relevant context for the task.

## Core Principles

- Ask for clarity before editing.
- Always propose a plan before changes.
- Keep patches small and reviewable.
- Use one branch per task.
- Write tests or explain why tests are not practical.
- Commit only after verification passes.
- Push and open PRs after approved execution.
- Never merge PRs.
- Never approve your own work.
- Never ignore PR comments.
- Be concise by default to preserve tokens.

## Usage

Each project should include a small repo-level `AGENTS.md` that points Codex to this global knowledge base and stores project-specific decisions in `docs/ai/project-memory.md`.
