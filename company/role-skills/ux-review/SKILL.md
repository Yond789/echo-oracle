---
name: ux-review
description: Hana's review of a built UI against the UX spec and user stories — flows, states, copy, consistency, accessibility basics — with screenshots or exact steps per finding. Use for "UX review", "does this match the design", after Haru ships UI.
---

# UX Review

Compare the **running** implementation with `.design/<feature>-UX.md` and the user stories. Output: `UX-REVIEW.md`.

## Process

1. Load the spec, wireframes and user stories (acceptance criteria).
2. Run the UI (project's `/verify` kit if it exists). Walk every user story end to end as the target user (e.g. a non-technical architect, a manager).
3. For each screen check states: default · loading · empty · error · success · long content · narrow (phone) width · keyboard only.
4. Check copy: clear, consistent terminology (matches GLOSSARY), correct language for the audience.
5. Quick a11y pass; for depth run `/a11y-check`.
6. Classify findings: **Blocker** (story cannot be completed) · **Major** (wrong flow/state) · **Minor** (polish).

## Output
```
# UX Review — <feature> — PASS | DEVIATIONS
| Sev | Screen / state | Expected (spec) | Actual | Evidence | Fix suggestion |
```
PASS → `/talk-to kira "UX verified, ready for QA"`; else `/talk-to haru "UX deviations: <list>"`.
