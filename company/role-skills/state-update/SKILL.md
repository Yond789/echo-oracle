---
name: state-update
description: Update a project's STATE.md to current reality — workstream status, what changed, what's next, owners, last-updated date — from git history and recent session work. Use for "state update", "update STATE.md", at the end of a work session on a project.
---

# State Update

STATE.md lets any oracle pick up a project without context loss. Stale STATE is worse than none.

## Process

1. Read the current STATE.md and note its "Last updated" date.
2. Gather evidence since then: `git log --since=<date> --oneline` in the project and related repos, merged PRs, new docs, handoffs in `ψ/inbox/handoff/`, recent retrospectives.
3. Update each workstream row from evidence, not memory. Status changes need a reason in Notes (commit, doc or decision).
4. Rewrite "Next Actions" with an owner each. Remove done items, but record them in a "Done since <date>" list instead of deleting them silently.
5. Set "Last updated" to today. Keep the existing table format.
6. Uncommitted edits by the human in STATE.md: merge, never overwrite; ask if they conflict.

Commit: `docs: STATE update — <one line>`.
