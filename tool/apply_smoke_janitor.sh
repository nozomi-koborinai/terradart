#!/usr/bin/env bash
# Reclaim leftover apply-smoke resources in the terradart-validate project.
#
# Scheduled by .github/workflows/apply-smoke-janitor.yml. State lives in the
# GCS backend (gs://$TF_STATE_BUCKET/apply-smoke/<slug>), so this re-synths
# each example's config, points it at that persisted state, and destroys —
# reclaiming anything a failed apply or a killed runner left behind.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

PROJECT_ID="${GCP_PROJECT_ID:-${GCP_VALIDATE_PROJECT_ID:-}}"
if [[ -z "$PROJECT_ID" ]]; then
  echo "apply_smoke_janitor.sh: set GCP_PROJECT_ID or GCP_VALIDATE_PROJECT_ID" >&2
  exit 64
fi
export GCP_PROJECT_ID="$PROJECT_ID"

echo ">> janitor: destroy-only sweep over all quickstarts (state from GCS)"
exec tool/apply_smoke.sh --all --destroy-only
