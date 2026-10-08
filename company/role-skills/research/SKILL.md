---
name: research
description: Sora's pre-planning research — domain, prior art, stack options, constraints and pitfalls, with sources — before any plan is written. Use for "research", "what are our options", "look into X before we build".
---

# Research

Research before planning. Output: `.planning/RESEARCH-<topic>.md` in the project repo (and a learning in `ψ/memory/learnings/` if it generalizes).

## Process

1. **Question:** one sentence: what decision will this research inform? If none, stop and ask.
2. **Read what exists first:** project docs (PROJECT/STATE/TECH), the codebase (`/how` for unfamiliar subsystems), prior research in `ψ/`.
3. **External:** official docs first, then reputable sources. Record exact versions, limits, quotas and prices **with the date checked**. Mark anything undocumented as "unverified, test it".
4. **Options:** 2–4 realistic options. For each: how it works, fit with constraints (team skills, existing stack, budget, client rules), cost, risks, effort.
5. **Pitfalls:** what usually goes wrong here (limits, auth, rate limits, data loss, lock-in). These seed `PITFALLS.md`.

## Output

```
# Research — <topic> — <date>
Decision this informs: ...
Constraints: ...
| Option | Fit | Cost | Risk | Effort |
Recommendation (with the trade-off you accept): ...
Unverified / to test: ...
Sources: <links with date checked>
```

Hand off: `/plan` (Sora) or `/stack-decision` if the choice is a technology.
