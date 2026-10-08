---
name: user-story
description: Write user stories with testable acceptance criteria from a PRD or idea — who, what, why, plus Given/When/Then criteria Kira can verify. Use for "user story", "write stories", "acceptance criteria".
---

# User Story

Bridges Yone's PRD and Hana/Sora/Kira. Output: `.design/<feature>-STORIES.md`.

## Format
```
### US-<n>: <short title>
As a <specific user, e.g. "IF project architect">,
I want <capability>,
so that <outcome they care about>.

Acceptance criteria:
- Given <state>, when <action>, then <observable result>
- Given ..., when <error case>, then ...
Notes: <constraints, out of scope>
Priority: Must | Should | Could
```

## Rules
- Real user roles from the project (not "a user").
- Every criterion is observable and testable; it feeds `/test-plan`.
- Include at least one error/empty case per story.
- Split stories that need more than ~5 criteria.
- Flag assumptions as questions for Yone.
