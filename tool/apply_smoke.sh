#!/usr/bin/env bash
# Apply-smoke changed example quickstarts against a live GCP project (terradart-validate).
#
# Usage (repo root):
#   GCP_PROJECT_ID=terradart-validate tool/apply_smoke.sh
#   tool/apply_smoke.sh --example gke_quickstart
#
# Requires: terraform on PATH, WIF auth (GitHub Actions) or application default credentials.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

EXPLICIT_EXAMPLE=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --example)
      EXPLICIT_EXAMPLE="$2"
      shift 2
      ;;
    -h | --help)
      sed -n '2,8p' "$0"
      exit 0
      ;;
    *)
      echo "apply_smoke.sh: unknown argument: $1" >&2
      exit 64
      ;;
  esac
done

PROJECT_ID="${GCP_PROJECT_ID:-${GCP_VALIDATE_PROJECT_ID:-}}"
if [[ -z "$PROJECT_ID" ]]; then
  echo "apply_smoke.sh: set GCP_PROJECT_ID or GCP_VALIDATE_PROJECT_ID" >&2
  exit 64
fi

export GCP_PROJECT_ID="$PROJECT_ID"
export DB_PASSWORD="${DB_PASSWORD:-apply-smoke-placeholder}"

mapfile -t EXAMPLES < <(
  if [[ -n "$EXPLICIT_EXAMPLE" ]]; then
    echo "$EXPLICIT_EXAMPLE"
  else
    git diff --name-only "${GITHUB_BASE_SHA:-origin/main}" HEAD -- 'examples/' 2>/dev/null \
      | awk -F/ '/^examples\/[^/]+_quickstart\// {print $2}' \
      | sort -u
  fi
)

if [[ ${#EXAMPLES[@]} -eq 0 ]]; then
  echo "apply_smoke.sh: no changed examples — skip"
  exit 0
fi

dart pub get

for slug in "${EXAMPLES[@]}"; do
  [[ -n "$slug" ]] || continue
  dir="examples/$slug"
  if [[ ! -f "$dir/bin/infra.dart" ]]; then
    echo "apply_smoke.sh: skip $slug (no bin/infra.dart)" >&2
    continue
  fi
  echo ">> apply-smoke: $slug"
  (
    cd "$dir"
    dart pub get
    dart run bin/infra.dart
    cd tf-out
    terraform init -backend=false -input=false
    terraform apply -auto-approve -input=false
    terraform destroy -auto-approve -input=false
  )
done

echo "apply_smoke.sh: OK (${#EXAMPLES[@]} example(s))"
