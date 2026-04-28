# PR Review Handling

Before changing code in response to PR feedback, classify all comments.

## Comment Categories

### Must-fix

Fix comments related to:

- correctness
- security
- data loss
- broken tests
- broken happy-path behavior
- production reliability risk

### Good suggestion

Consider comments related to:

- readability
- maintainability
- naming
- test coverage improvement
- minor design cleanup

### Not fixing

Do not fix when:

- the suggestion is out of scope
- it increases complexity without enough value
- it conflicts with project direction
- it belongs in a separate PR

Explain why.

## Required Review Response

Before edits, state:

- comments being addressed
- comments not being addressed
- reason for each non-fix
- expected verification

Never ignore review comments.
