#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$SCRIPT_DIR/.."

git -C "$REPO_DIR" add -A
git -C "$REPO_DIR" diff --cached --quiet && exit 0
git -C "$REPO_DIR" commit -m "$(date '+%Y-%m-%d %H:%M:%S')"
