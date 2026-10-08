---
name: roadmap
description: Sora's phased delivery roadmap — 3–8 dependency-ordered phases, each shippable and verifiable, with exit criteria. Use for "roadmap", "phases", "how do we deliver this".
---

# Roadmap

Output: `ROADMAP.md` in the project repo (Echo keeps it current afterwards).

## Rules

- 3–8 phases. Each phase ends in something **usable and verifiable**, not "backend done".
- One plan at a time: finish a phase end to end before starting the next, unless phases are truly independent.
- Order by dependency, then by risk: retire the biggest unknowns early (pilot, spike, measured cost).
- Every phase has exit criteria a reviewer can check, and an owner oracle.

## Format

```
# Roadmap — <project> — <date>
| Phase | Delivers | Exit criteria (observable) | Depends on | Owner | Status |
Risks retired early: ...
Decisions needed from humans: ...
```

Each phase later gets its own `/plan`.
