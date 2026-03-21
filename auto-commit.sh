#!/bin/bash
# Auto-commit and push every 5 minutes
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "[auto-commit] Started. Watching: $REPO_DIR (every 5 minutes)"

while true; do
  cd "$REPO_DIR"
  if ! git diff --quiet || ! git diff --staged --quiet || [ -n "$(git ls-files --others --exclude-standard)" ]; then
    git add -A
    MSG="auto: $(date '+%Y-%m-%d %H:%M:%S')"
    git commit -m "$MSG"
    git push && echo "[auto-commit] Pushed: $MSG" || echo "[auto-commit] Push failed (check remote/auth)"
  fi
  sleep 300
done
