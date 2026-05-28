#!/usr/bin/env bash
# afterFileEdit: dart format hand-written Dart only (Cloud + local IDE).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
# shellcheck source=../../tool/hook_lib.sh
source "$ROOT/tool/hook_lib.sh"

input="$(cat)"
file_path="$(printf '%s' "$input" | jq -r '.file_path // empty')"
[[ -n "$file_path" ]] || exit 0

rel="$(hook_rel_path "$file_path" "$ROOT")"
if hook_is_handwritten_dart "$rel"; then
  dart format "$file_path" >/dev/null 2>&1 || true
fi

exit 0
