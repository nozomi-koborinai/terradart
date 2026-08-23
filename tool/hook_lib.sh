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

# SDK dart format applies (not terradart_google generated wrappers).
hook_is_handwritten_dart() {
  local rel="$1"
  [[ "$rel" == *.dart ]] || return 1
  [[ "$rel" == packages/terradart_google/lib/src/* ]] && return 1
  [[ "$rel" == packages/terradart_google_beta/lib/src/*/google_*.dart ]] && return 1
  [[ "$rel" == packages/terradart_google_beta/lib/src/_catalog.g.dart ]] && return 1
  [[ "$rel" == packages/terradart_appwrite/lib/src/*/appwrite_*.dart ]] && return 1
  [[ "$rel" == packages/terradart_appwrite/lib/src/_catalog.g.dart ]] && return 1
  [[ "$rel" == packages/terradart_cloudflare/lib/src/*/cloudflare_*.dart ]] && return 1
  [[ "$rel" == packages/terradart_cloudflare/lib/src/_catalog.g.dart ]] && return 1
  [[ "$rel" == packages/terradart_core/* ]] && return 0
  [[ "$rel" == packages/terradart_codegen/* ]] && return 0
  [[ "$rel" == packages/terradart_agent/* ]] && return 0
  [[ "$rel" == tool/* ]] && return 0
  [[ "$rel" == examples/* ]] && return 0
  return 1
}

hook_is_protected_write_path() {
  local rel="$1"
  # Only the GENERATED surface is protected: per-service wrappers
  # (lib/src/<service>/google_*.dart) and the catalog. Hand-written files
  # under lib/src (google_provider.dart, _provider_meta.dart, time/,
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
