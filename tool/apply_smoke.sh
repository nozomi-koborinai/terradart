#!/usr/bin/env bash
# Apply-smoke example quickstarts against a live GCP project (terradart-validate).
#
# Modes:
#   (default)         apply the examples changed vs GITHUB_BASE_SHA/origin/main
#   --all             apply every examples/*_quickstart (nightly sweep)
#   --example <slug>  apply exactly one
#   --dry-run         print the selected slugs and exit (no terraform, no GCP)
#
# Behaviour:
#   - Each example: synth -> terraform init -> apply -> destroy. destroy ALWAYS
#     runs (trap), even when apply fails, so a failed run still tears down.
#   - --all keeps going past a failing example and exits non-zero at the end
#     with a summary; default/--example fail fast (small changed set).
#
# Requires (non-dry-run): terraform on PATH, WIF auth (CI) or ADC, and
# GCP_PROJECT_ID or GCP_VALIDATE_PROJECT_ID.
set -uo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

MODE="changed"
EXPLICIT_EXAMPLE=""
DRY_RUN=0
while [[ $# -gt 0 ]]; do
  case "$1" in
    --all) MODE="all"; shift ;;
    --example) MODE="example"; EXPLICIT_EXAMPLE="$2"; shift 2 ;;
    --dry-run) DRY_RUN=1; shift ;;
    -h | --help)
      sed -n '2,16p' "$0"
      exit 0
      ;;
    *)
      echo "apply_smoke.sh: unknown argument: $1" >&2
      exit 64
      ;;
  esac
done

# --- select examples -------------------------------------------------------
select_examples() {
  case "$MODE" in
    example) printf '%s\n' "$EXPLICIT_EXAMPLE" ;;
    all) for d in examples/*_quickstart/; do basename "$d"; done | sort ;;
    changed)
      git diff --name-only "${GITHUB_BASE_SHA:-origin/main}" HEAD -- 'examples/' 2>/dev/null \
        | awk -F/ '/^examples\/[^/]+_quickstart\// {print $2}' | sort -u
      ;;
  esac
}

# Collect into an array without `mapfile` (absent on macOS bash 3.2).
EXAMPLES=()
while IFS= read -r _slug; do
  [[ -n "$_slug" ]] && EXAMPLES+=("$_slug")
done < <(select_examples)

# --- dry-run: print selection and stop ------------------------------------
if [[ "$DRY_RUN" == "1" ]]; then
  [[ ${#EXAMPLES[@]} -gt 0 ]] && printf '%s\n' "${EXAMPLES[@]}"
  exit 0
fi

if [[ ${#EXAMPLES[@]} -eq 0 ]]; then
  echo "apply_smoke.sh: no examples selected — skip"
  exit 0
fi

PROJECT_ID="${GCP_PROJECT_ID:-${GCP_VALIDATE_PROJECT_ID:-}}"
if [[ -z "$PROJECT_ID" ]]; then
  echo "apply_smoke.sh: set GCP_PROJECT_ID or GCP_VALIDATE_PROJECT_ID" >&2
  exit 64
fi
export GCP_PROJECT_ID="$PROJECT_ID"
export DB_PASSWORD="${DB_PASSWORD:-apply-smoke-placeholder}"

dart pub get

# --- apply one example, ALWAYS destroying afterwards ----------------------
apply_one() {
  local slug="$1"
  local dir="examples/$slug"
  if [[ ! -f "$dir/bin/infra.dart" ]]; then
    echo "  skip $slug (no bin/infra.dart)"
    return 0
  fi
  (
    cd "$dir"
    dart pub get
    dart run bin/infra.dart
    cd tf-out
    terraform init -backend=false -input=false
    # From here on, destroy on ANY exit (apply success or failure).
    trap 'terraform destroy -auto-approve -input=false >/dev/null 2>&1 || true' EXIT
    terraform apply -auto-approve -input=false
  )
}

FAILED=()
for slug in "${EXAMPLES[@]}"; do
  [[ -n "$slug" ]] || continue
  echo ">> apply-smoke: $slug"
  if apply_one "$slug"; then
    echo "  OK: $slug"
  else
    echo "  FAILED: $slug"
    FAILED+=("$slug")
    if [[ "$MODE" != "all" ]]; then
      echo "apply_smoke.sh: FAILED: ${FAILED[*]}" >&2
      exit 1
    fi
  fi
done

if [[ ${#FAILED[@]} -gt 0 ]]; then
  echo "apply_smoke.sh: ${#FAILED[@]} of ${#EXAMPLES[@]} FAILED: ${FAILED[*]}" >&2
  exit 1
fi
echo "apply_smoke.sh: OK (${#EXAMPLES[@]} example(s))"
