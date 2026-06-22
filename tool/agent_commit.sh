#!/usr/bin/env bash
# Commit from a Cloud Agent without Co-authored-by trailers.
#
# Cursor Cloud may inject Co-authored-by via a platform commit-msg hook.
# This wrapper uses --no-verify and fails if the trailer is still present.
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "usage: tool/agent_commit.sh -m \"subject\" [-m \"body\"]" >&2
  exit 64
fi

git commit --no-verify "$@"

if git log -1 --format='%B' | grep -qi '^Co-authored-by:'; then
  echo 'agent_commit.sh: Co-authored-by trailer present after commit; aborting' >&2
  exit 1
fi
