# shellcheck shell=bash
# Shared helpers for .cursor/hooks/*.sh (source from repo root paths).

# Strip to a repo-relative path when possible.
hook_rel_path() {
  local file_path="$1"
  local root="$2"
  if [[ "$file_path" == "$root"/* ]]; then
    printf '%s' "${file_path#"$root"/}"
  else
    printf '%s' "$file_path"
  fi
}

# Packages written entirely by hand: SDK dart format checks all of them.
HOOK_HANDWRITTEN_PACKAGES=(
  packages/terradart_cli
  packages/terradart_core
  packages/terradart_codegen
  packages/terradart_hcl
  packages/terradart_migrate
  packages/terradart_time
)

# Packages `terradart wrap` generates into. Their generated files keep the
# format of wrap's pinned dart_style (guarded byte-for-byte by
# `wrap --check`); only their hand-written files take SDK dart format.
HOOK_PROVIDER_PACKAGES=(
  packages/terradart_google
  packages/terradart_google_beta
  packages/terradart_aws
  packages/terradart_cloudflare
  packages/terradart_appwrite
)

# The first-line marker wrap treats as generated (`_isGeneratedFile` in
# packages/terradart_codegen/lib/src/cli/wrap_command.dart).
HOOK_GENERATED_MARKER='// GENERATED FILE - DO NOT EDIT'

# Whether the Dart file at [path] carries wrap's generated header.
hook_is_generated_dart() {
  local path="$1" first_line=""
  [[ -f "$path" ]] || return 1
  IFS= read -r first_line <"$path" || true
  [[ "$first_line" == "$HOOK_GENERATED_MARKER" ]]
}

# SDK dart format applies: the hand-written packages, the hand-written files
# of the provider packages, plus tool/ and examples/. [rel] is repo-relative;
# [root] (default: cwd) resolves it for the generated-header check.
hook_is_handwritten_dart() {
  local rel="$1" root="${2:-.}" pkg
  [[ "$rel" == *.dart ]] || return 1
  case "$rel" in
    tool/* | examples/*) return 0 ;;
  esac
  for pkg in "${HOOK_HANDWRITTEN_PACKAGES[@]}"; do
    [[ "$rel" == "$pkg"/* ]] && return 0
  done
  for pkg in "${HOOK_PROVIDER_PACKAGES[@]}"; do
    if [[ "$rel" == "$pkg"/* ]]; then
      hook_is_generated_dart "$root/$rel" && return 1
      return 0
    fi
  done
  return 1
}

# Prints the paths the format gate checks, one per line: every hand-written
# package directory, then each tracked or untracked-but-not-ignored
# hand-written Dart file of the provider packages. Run from the repo root.
hook_format_scope() {
  printf '%s\n' "${HOOK_HANDWRITTEN_PACKAGES[@]}"
  local f
  git ls-files -z --cached --others --exclude-standard -- \
    "${HOOK_PROVIDER_PACKAGES[@]/%//*.dart}" |
    while IFS= read -r -d '' f; do
      if [[ -f "$f" ]]; then printf '%s\0' "$f"; fi
    done |
    xargs -0 -r awk -v m="$HOOK_GENERATED_MARKER" \
      'FNR == 1 { if ($0 != m) print FILENAME; nextfile }'
}

hook_is_protected_write_path() {
  local rel="$1"
  # Only the GENERATED surface is protected: per-service wrappers
  # (lib/src/<service>/google_*.dart), the catalog, the provider pin
  # (_provider_version.g.dart) and the migration manifests
  # (terradart_migrate/lib/src/manifest/*.g.dart). Hand-written files
  # under lib/src (google_provider.dart, _provider_meta.dart,
  # firestore_fields.dart, project/apis.dart, ...) stay editable — the
  # earlier lib/src/* blanket wrongly blocked them.
  case "$rel" in
    packages/terradart_google/lib/src/*/google_*.dart) return 0 ;;
    packages/terradart_google/lib/src/_catalog.g.dart) return 0 ;;
    packages/terradart_google_beta/lib/src/*/google_*.dart) return 0 ;;
    packages/terradart_google_beta/lib/src/_catalog.g.dart) return 0 ;;
    packages/terradart_appwrite/lib/src/*/appwrite_*.dart) return 0 ;;
    packages/terradart_appwrite/lib/src/_catalog.g.dart) return 0 ;;
    packages/terradart_cloudflare/lib/src/*/cloudflare_*.dart) return 0 ;;
    packages/terradart_cloudflare/lib/src/_catalog.g.dart) return 0 ;;
    packages/terradart_aws/lib/src/*/aws_*.dart) return 0 ;;
    packages/terradart_aws/lib/src/_catalog.g.dart) return 0 ;;
    packages/*/lib/src/_provider_version.g.dart) return 0 ;;
    packages/terradart_migrate/lib/src/manifest/*.g.dart) return 0 ;;
    packages/terradart_codegen/test/fixtures/wrap/expected_output/*) return 0 ;;
    .github/workflows/*) return 0 ;;
    *) return 1 ;;
  esac
}

hook_deny_shell() {
  local agent_message="$1"
  local user_message="${2:-Action blocked by project hooks.}"
  jq -n \
    --arg permission "deny" \
    --arg agent_message "$agent_message" \
    --arg user_message "$user_message" \
    '{permission: $permission, agent_message: $agent_message, user_message: $user_message}'
}
