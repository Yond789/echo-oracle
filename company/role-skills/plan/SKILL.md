---
name: plan
description: Sora's phase plan — break a feature into small, dependency-ordered, independently verifiable tasks Haru can execute without asking questions. Planning only, no implementation. Use for "plan", "break this down", "make a PLAN.md".
---

# Plan

Output: `.planning/<phase>-PLAN.md` in the project repo. **Do not implement.**

## Process

1. **Inputs:** REQUIREMENTS (from Yone/Echo), RESEARCH, ROADMAP phase. Missing requirements → ask, don't invent.
2. **Subtract first:** what existing code, docs or features can be removed or reused so the plan gets smaller?
3. **Tasks:** each one is
   - atomic: one concern, one commit, at most ~5 files
   - verifiable: states its done-criteria as an observable check (command + expected result)
   - reachable: all inputs exist before it starts (check APIs, access, credentials, data)
4. **Waves:** group tasks by dependency. Tasks in the same wave touch independent areas and can run in parallel; anything sharing types, schemas or state goes in a later wave.
5. **Caps:** state budgets that matter (cost per run, API quotas, time) and where they are enforced in code.
6. **Hand-offs:** which tasks need Rei (threat model), Hana (UX) or Kira (test plan) before or after.

## Output format

```
# <phase> — Plan
Goal (observable): ...
Out of scope: ...
## Wave 1
- [ ] T1 <title> — files: ... — done when: <command → expected>
## Wave 2
...
Risks → mitigations: ...
Open questions (blocking): ...
```

Then `/talk-to haru "plan ready: <path>"` and `/talk-to kira "verify plan coverage: <path>"`. For big plans run `/adversarial-review` on the plan first.
