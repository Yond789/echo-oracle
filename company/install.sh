#!/bin/bash
# install.sh — sync company principles, hooks, shared skills and role skills into every oracle.
# Idempotent: safe to re-run after editing anything under echo-oracle/company/.
# Usage: install.sh [oracle ...]     (default: every oracle in roles.txt)
set -eo pipefail
SRC="$(cd "$(dirname "$0")" && pwd)"
REPOS="${REPOS:-$HOME/repos}"
SHARED_SKILLS="meditate how adversarial-review"

oracles=("$@")
if [ ${#oracles[@]} -eq 0 ]; then
  while IFS= read -r line; do oracles+=("${line%%:*}"); done < <(grep -vE '^\s*(#|$)' "$SRC/roles.txt")
fi

for o in "${oracles[@]}"; do
  dest="$REPOS/$o-oracle"
  [ -f "$dest/CLAUDE.md" ] || { echo "skip $o (no $dest/CLAUDE.md)"; continue; }
  roles=$(grep -E "^$o:" "$SRC/roles.txt" | cut -d: -f2-)

  mkdir -p "$dest/.claude/hooks" "$dest/.claude/skills" "$dest/.claude/company"
  rsync -a --delete "$SRC/principles/" "$dest/.claude/company/principles/"
  cp "$SRC/hooks/inject-memory.sh" "$SRC/hooks/check-skills.sh" "$dest/.claude/hooks/"
  chmod +x "$dest/.claude/hooks/"*.sh

  for s in $SHARED_SKILLS; do rsync -a --delete "$SRC/skills/$s/" "$dest/.claude/skills/$s/"; done
  for s in $roles; do rsync -a --delete "$SRC/role-skills/$s/" "$dest/.claude/skills/$s/"; done

  python3 - "$dest/.claude/settings.json" <<'PY'
import json, os, sys
path = sys.argv[1]
cmd = '"$CLAUDE_PROJECT_DIR"/.claude/hooks/inject-memory.sh'
cfg = json.load(open(path)) if os.path.exists(path) else {}
starts = cfg.setdefault("hooks", {}).setdefault("SessionStart", [])
if not any(h.get("command") == cmd for e in starts for h in e.get("hooks", [])):
    starts.append({"matcher": "startup|resume|clear|compact",
                   "hooks": [{"type": "command", "command": cmd}]})
json.dump(cfg, open(path, "w"), indent=2)
open(path, "a").write("\n")
PY
  echo "✓ $o  shared: $SHARED_SKILLS  role: ${roles:-—}"
done
