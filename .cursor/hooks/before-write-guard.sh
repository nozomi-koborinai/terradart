#!/usr/bin/env bash
# preToolUse (Write|Edit): block direct edits to generated or CI-critical paths.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
# shellcheck source=../../tool/hook_lib.sh
source "$ROOT/tool/hook_lib.sh"

input="$(cat)"
tool_name="$(printf '%s' "$input" | jq -r '.tool_name // empty')"
file_path="$(printf '%s' "$input" | jq -r '.tool_input.file_path // .tool_input.path // empty')"

case "$tool_name" in
  Write | Edit) ;;
  *) exit 0 ;;
esac

[[ -n "$file_path" ]] || exit 0

rel="$(hook_rel_path "$file_path" "$ROOT")"
if hook_is_protected_write_path "$rel"; then
  hook_deny_shell \
    "Direct edits to $rel are blocked. Regenerate with terradart wrap for terradart_google/lib/src, or update goldens via the maintainer workflow for expected_output/." \
    "Blocked: protected path $rel"
  exit 0
fi

exit 0
