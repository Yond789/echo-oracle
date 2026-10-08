---
name: knowledge-map
description: Build or refresh a map of how projects, components, decisions, docs and owners connect, as a linked markdown index. Use for "knowledge map", "how does everything connect", "where is the doc for X".
---

# Knowledge Map

Output: `ψ/writing/knowledge-map.md` in echo-oracle (or `docs/KNOWLEDGE-MAP.md` inside a project). Links only, no inlined content.

## Structure

```
# Knowledge Map — <scope> — <date>
## Projects
- <project> — repo — owner oracle — STATE link — status
## Components
- <component> — lives in <path> — documented in <link> — decisions: <ADR links>
## Decisions
- ADR NNNN — <one line> — affects <components>
## People & oracles
- <who> — owns <what>
## Gaps
- <component without docs / decision without ADR / doc without owner>
```

## Process
1. Inventory repos (`~/repos/*`), project docs (PROJECT/STATE/ROADMAP/ADR), oracle ψ indexes.
2. Link every item to its source file; verify links resolve.
3. The **Gaps** section is the deliverable: each gap gets an owner and goes into the next `/context-sync`.
