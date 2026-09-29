#!/usr/bin/env bash
# SDK `dart format` gate over every hand-written Dart path in packages/: the
# hand-written packages whole, plus the provider packages' files without
# wrap's generated header (tool/hook_lib.sh `hook_format_scope`). Generated
# files keep wrap's pinned dart_style and are guarded by `wrap --check`.
#
# Usage (from anywhere):
#   tool/format_check.sh           # fail when any path is unformatted
#   tool/format_check.sh --fix     # format them in place
#   tool/format_check.sh --list    # print the checked paths
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
# shellcheck source=hook_lib.sh
source "$ROOT/tool/hook_lib.sh"

mode="check"
case "${1:-}" in
  "") ;;
  --fix) mode="fix" ;;
  --list) mode="list" ;;
  -h | --help)
    sed -n '2,10p' "$0"
    exit 0
    ;;
  *)
    echo "format_check.sh: unknown argument: $1" >&2
    exit 64
    ;;
esac

mapfile -t paths < <(hook_format_scope)
if ((${#paths[@]} <= ${#HOOK_HANDWRITTEN_PACKAGES[@]})); then
  echo "format_check.sh: found no hand-written provider-package files" >&2
  exit 1
fi

case "$mode" in
  list) printf '%s\n' "${paths[@]}" ;;
  fix) dart format "${paths[@]}" ;;
  check) dart format --output=none --set-exit-if-changed "${paths[@]}" ;;
esac
