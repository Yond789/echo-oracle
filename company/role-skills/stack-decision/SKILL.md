---
name: stack-decision
description: Record a technology choice as an Architecture Decision Record — context, options, decision, consequences — and update STACK.md. Use for "stack decision", "which should we use", "write an ADR".
---

# Stack Decision (ADR)

Output: `ADR/NNNN-<slug>.md` and a one-line entry in `STACK.md`. Humans make the final call; the ADR records options and the recommendation.

## Process

1. Inputs: `/research` output or equivalent evidence. No ADR without at least two real options.
2. Evaluate against stated constraints: client rules (e.g. allowed vendors, no paid SaaS without approval), team skills, existing stack, cost (one-off and monthly), lock-in, security, operability.
3. Recommend one, state the trade-off accepted, and what would make you revisit.

## Format

```
# ADR NNNN — <decision>
Status: Proposed | Accepted (by <human>, <date>) | Superseded by NNNN
## Context
## Options
| Option | Pros | Cons | Cost |
## Decision
## Consequences (good / bad / follow-ups)
## Revisit when
```

Notify Echo (`/talk-to echo "ADR NNNN proposed"`) so STACK.md and the knowledge map stay in sync.
