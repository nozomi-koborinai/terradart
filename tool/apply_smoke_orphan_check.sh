#!/usr/bin/env bash
# Read-only inventory of high-cost / sticky resources in terradart-validate.
#
# Use after a failed apply-smoke run (or anytime billing looks suspicious) to
# confirm orphans that terraform destroy may have missed. NEVER creates or
# deletes — reclaim via tool/apply_smoke_janitor.sh / the Apply smoke janitor
# workflow (or an explicit maintainer destroy).
#
# Prerequisites:
#   - gcloud on PATH (.cursor/install.sh)
#   - Cursor Secret GCP_VALIDATE_SA_JSON (read-only SA on terradart-validate)
#
# Usage (repo root):
#   tool/apply_smoke_orphan_check.sh
#   GCP_VALIDATE_PROJECT_ID=terradart-validate tool/apply_smoke_orphan_check.sh
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

chmod +x tool/gcloud_validate_auth.sh
# shellcheck disable=SC1090
eval "$(tool/gcloud_validate_auth.sh)"
PROJECT_ID="${GCP_VALIDATE_PROJECT_ID:-terradart-validate}"

# Regions used by examples / apply-smoke (keep short — this is a probe, not a
# full inventory of every GCP region).
REGIONS=(us-central1 asia-northeast1)

echo ">> orphan-check: project=$PROJECT_ID (read-only)"
echo

found=0

run_list() {
  local label="$1"
  shift
  echo "== $label =="
  local out rc=0
  out="$("$@" --project="$PROJECT_ID" --format='value(name)' 2>&1)" || rc=$?
  if [[ "$rc" -ne 0 ]]; then
    echo "(skip: $(echo "$out" | head -n 2 | tr '\n' ' '))"
    echo
    return 0
  fi
  if [[ -z "${out//[$' \t\n']/}" ]]; then
    echo "(none)"
  else
    found=1
    echo "$out"
  fi
  echo
}

# Global / aggregated list commands.
run_list "Compute Engine instances" \
  gcloud compute instances list
run_list "GKE clusters" \
  gcloud container clusters list
run_list "Cloud SQL instances" \
  gcloud sql instances list
run_list "Bigtable instances" \
  gcloud bigtable instances list
run_list "VPN tunnels" \
  gcloud compute vpn-tunnels list
run_list "Cloud Routers (NAT / VPN peers often attach here)" \
  gcloud compute routers list

# Regional APIs — probe the two regions examples use.
for region in "${REGIONS[@]}"; do
  run_list "Memorystore Redis ($region)" \
    gcloud redis instances list --region="$region"
  run_list "Filestore ($region)" \
    gcloud filestore instances list --zone="$region-a"
  run_list "Dataproc Metastore ($region)" \
    gcloud metastore services list --location="$region"
  run_list "AlloyDB clusters ($region)" \
    gcloud alloydb clusters list --region="$region"
done

if [[ "$found" -eq 1 ]]; then
  echo "orphan-check: RESOURCES FOUND — investigate billing; reclaim with Apply smoke janitor / apply_smoke.sh --destroy-only (do not delete ad hoc from the agent)." >&2
  exit 1
fi

echo "orphan-check: OK (no listed high-cost resources found)"
exit 0
