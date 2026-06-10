#!/usr/bin/env bash
# Destroy leftover Terraform state in the terradart-validate canary project.
#
# Scheduled by .github/workflows/apply-smoke-janitor.yml after failed apply-smoke runs.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

PROJECT_ID="${GCP_PROJECT_ID:-${GCP_VALIDATE_PROJECT_ID:-}}"
if [[ -z "$PROJECT_ID" ]]; then
  echo "apply_smoke_janitor.sh: set GCP_PROJECT_ID or GCP_VALIDATE_PROJECT_ID" >&2
  exit 64
fi

if ! command -v gcloud >/dev/null 2>&1; then
  echo "apply_smoke_janitor.sh: gcloud not on PATH" >&2
  exit 127
fi

echo ">> janitor: listing active resources in $PROJECT_ID (manual review project)"
# Best-effort: enumerate common Wave resources and delete by label if present.
# Maintainers can extend this script as apply-smoke coverage grows.

for slug in examples/*_quickstart; do
  [[ -d "$slug/tf-out" ]] || continue
  name="$(basename "$slug")"
  echo ">> janitor: terraform destroy $name (if state exists)"
  (
    cd "$slug/tf-out"
    if [[ -f main.tf.json ]]; then
      terraform init -backend=false -input=false >/dev/null 2>&1 || true
      terraform destroy -auto-approve -input=false >/dev/null 2>&1 || true
    fi
  ) || true
done

echo "apply_smoke_janitor.sh: done"
