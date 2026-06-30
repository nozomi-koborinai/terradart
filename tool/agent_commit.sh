#!/usr/bin/env bash
# Thin commit wrapper for Cloud Agent sessions (uses --no-verify).
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "usage: tool/agent_commit.sh -m \"subject\" [-m \"body\"]" >&2
  exit 64
fi

git commit --no-verify "$@"
