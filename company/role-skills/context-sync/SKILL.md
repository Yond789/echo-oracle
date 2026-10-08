---
name: context-sync
description: Echo's sync pass — reconcile context files (CLAUDE.md, STATE, ROADMAP, team tables, principles, skills lists) across oracles and projects with reality, and fix drift. Use for "context sync", "docs are out of date", after team or skill changes.
---

# Context Sync

Echo owns `echo-oracle/company/` (principles, hooks, shared and role skills, `install.sh`). This skill keeps every oracle consistent with it and with reality.

## Process

1. **Detect drift (scripts first):**
   ```bash
   for d in ~/repos/*-oracle; do echo "$(basename $d): $(bash ~/repos/echo-oracle/company/hooks/check-skills.sh $d | tr '\n' ' ')"; done
   ```
   - Team tables: compare every CLAUDE.md team table with the actual `~/repos/*-oracle` list and roles.
   - Project docs: STATE.md "last updated" older than the newest commit in that project → stale.
2. **Fix at the source:** company-wide items in `echo-oracle/company/`, then run `install.sh` (it is idempotent). Oracle-specific items in that oracle's CLAUDE.md.
3. **Never delete history:** superseded content goes to `ψ/archive/` or stays in git history; documents get a "Superseded by" line.
4. **Commit per repo** with `docs: context-sync — <what>`; only stage files you changed.

## Report
`| Repo | Drift found | Fixed | Needs human |`
