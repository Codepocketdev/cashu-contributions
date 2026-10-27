#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
git pull --rebase --autostash -q
./update.sh
git add -A
git diff --cached --quiet && exit 0
git commit -q -m "Update board"
git push -q
