#!/usr/bin/env bash
# stop hook: run agent_verify before the agent marks work complete (local IDE).
# Cloud agents do not run the stop hook yet; they should run tool/agent_verify.sh
# explicitly per AGENTS.md.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
input="$(cat)"

status="$(printf '%s' "$input" | jq -r '.status // empty')"
loop_count="$(printf '%s' "$input" | jq -r '.loop_count // 0')"

# Only verify successful completions; skip aborted/error stops.
if [[ "$status" != "completed" ]]; then
  exit 0
fi

# Avoid hammering verify on repeated stop follow-up loops.
if [[ "$loop_count" -ge 2 ]]; then
  echo "on-stop-verify: loop_count=$loop_count, skipping verify" >&2
  exit 0
fi

if ! "$ROOT/tool/agent_verify.sh" >&2; then
  jq -n --arg msg "agent_verify.sh failed. Read stderr above, fix the issues, and continue. Re-run: tool/agent_verify.sh from the repo root before finishing." \
    '{followup_message: $msg}'
  exit 0
fi

exit 0
