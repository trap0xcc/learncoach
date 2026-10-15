#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
CHECKINS_DIR="$SCRIPT_DIR/../checkins"
FILE="$CHECKINS_DIR/$(date +%F).md"

cd "$CHECKINS_DIR"

[[ -f "$FILE" ]] || "$SCRIPT_DIR/new.sh"

nvim "$FILE"
