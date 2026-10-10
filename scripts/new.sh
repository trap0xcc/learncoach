#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
CHECKINS_DIR="$SCRIPT_DIR/../checkins"

cp -n -- "$CHECKINS_DIR/_template.md" "$CHECKINS_DIR/$(date +%F).md"
"$SCRIPT_DIR/commit.sh"
