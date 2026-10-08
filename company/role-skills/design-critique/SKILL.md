---
name: design-critique
description: Hana's structured critique of a design, mockup or UX spec before build — task fit, hierarchy, flow length, consistency, error prevention — prioritized by impact. Use for "design critique", "review this mockup", "is this design good".
---

# Design Critique

Critique structure before polish. Every point ties to a user story or a heuristic.

## Lenses
1. **Task fit:** can the target user complete each story? Count steps; flag anything longer than needed.
2. **Hierarchy:** is the most important information/action the most prominent?
3. **Recognition over recall:** labels, defaults, visible state.
4. **Error prevention & recovery:** confirmations for irreversible actions, undo, clear errors with a next step.
5. **Consistency:** same pattern for same problem; matches DESIGN-SYSTEM and platform conventions.
6. **Audience:** language, density and jargon right for these users (non-technical architects ≠ engineers).
7. **Accessibility:** contrast, target size, keyboard, labels (details → `/a11y-check`).

## Output
```
| Impact | Lens | Issue | Where | Suggestion |
Top 3 changes that matter most: ...
What works (keep): ...
```
High-impact items go back to the spec before Haru builds.
