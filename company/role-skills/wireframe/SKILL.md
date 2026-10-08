---
name: wireframe
description: Hana's text wireframes — ASCII layouts per screen and state that Haru can build without guessing, with interaction notes. Use for "wireframe", "sketch the screen", "what should this page look like".
---

# Wireframe

Output: section in `.design/<feature>-UX.md`. Text wireframes keep design reviewable in git and unblock Haru without design tools.

## Rules
- One wireframe per screen **per meaningful state** (default, empty, loading, error) when layout changes.
- Use box drawing: `┌ ┐ └ ┘ │ ─`, `[Button]`, `(•) radio`, `[x] checkbox`, `[___input___]`, `▼ select`.
- Label every element with its real copy, not "Lorem ipsum".
- Under each wireframe: **Interactions** (what each control does, validation, navigation), **Data** (where each value comes from), **Responsive** (what changes below ~600px).
- Reuse components from `DESIGN-SYSTEM.md`; name them.

## Example
```
┌──────────────────────────────────────────┐
│ Drive Indexer            [Run now] [⚙]   │
├──────────────────────────────────────────┤
│ Coverage  82%   Last run  02:00 ✓        │
│ Failed today 3  [View]                   │
├──────────────────────────────────────────┤
│ Folder              Files   Done   Fail  │
│ Projects / A         412    401     2    │
└──────────────────────────────────────────┘
Interactions: [Run now] → confirm dialog → queues scan; disabled while running.
```
