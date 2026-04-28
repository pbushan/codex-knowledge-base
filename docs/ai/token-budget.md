# Token Budget Rules

Be concise by default.

Do not print:

- full diffs
- full files
- full test logs
- large command outputs
- repeated explanations
- long summaries of unchanged code

Prefer:

- file paths
- short bullet summaries
- failing test names
- commit hashes
- PR links
- concise risk notes

## Final Report

After task execution, provide a compressed report under 200 words unless asked for detail.

Format:

Summary:
- Changed:
- Tests:
- Commit:
- PR:
- Risks:
- Follow-up:

Use pass/fail summaries for command output. Include exact command output only when it is directly relevant to understanding a failure, risk, or decision.

## Context Control

When context gets large:

- stop expanding
- summarize current state
- recommend decomposition
- continue only after the next small scope is clear
