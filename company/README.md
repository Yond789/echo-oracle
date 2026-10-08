# Company kit (owned by Echo)

Single source for what every oracle in Companies A, B and C shares. Edit here, then run `./install.sh`.

| Path | What | Installed to |
|------|------|--------------|
| `principles/` | 8 company principles (adapted from poteto/brainmaxxing, MIT) | `<oracle>/.claude/company/principles/` |
| `hooks/inject-memory.sh` | SessionStart hook: loads principles, latest handoff, recent retros, learnings, retro-age warning, skill drift | `<oracle>/.claude/hooks/` + `.claude/settings.json` |
| `hooks/check-skills.sh` | Lists skills a CLAUDE.md claims but are not installed | `<oracle>/.claude/hooks/` |
| `skills/` | Shared skills: `meditate`, `how`, `adversarial-review` | every oracle's `.claude/skills/` |
| `role-skills/` | Role skills (verify, plan, threat-model, docs, ux-review, …) | per `roles.txt` |
| `roles.txt` | Which oracle gets which role skills | — |

```bash
./install.sh            # all oracles (idempotent)
./install.sh kira sora  # just these
```

Origin: 2026-10-08 review of github.com/poteto (brainmaxxing, how, noodle, verification-skill-example).
Why: CLAUDE.md asked for /rrr every session, but 4 of 6 surveyed oracles had no retrospectives, and 25 role skills listed in CLAUDE.md files did not exist. Rules in text were not followed; hooks and installed skills are.
