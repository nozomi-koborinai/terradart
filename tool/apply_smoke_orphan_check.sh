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

# Non-interactive: disabled APIs otherwise prompt "enable and retry? (y/N)"
# and hang Cloud Agents (no TTY). With prompts off, gcloud fails closed and
# run_list treats that as "(skip)" — still read-only, never enables APIs.
export CLOUDSDK_CORE_DISABLE_PROMPTS=1

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

# REST variant for services without a stable gcloud list surface.
# A disabled API is NOT treated as all-clear: existence-billed resources
# (the License Manager class) can keep billing behind a disabled API, so
# that case prints a warning instead of a silent skip.
run_rest() {
  local label="$1" url="$2"
  echo "== $label =="
  local token out rc=0
  token="$(gcloud auth print-access-token 2>/dev/null)" || rc=$?
  if [[ "$rc" -ne 0 || -z "$token" ]]; then
    echo "(skip: no access token)"
    echo
    return 0
  fi
  out="$(curl -sS --max-time 20 -H "Authorization: Bearer $token" "$url" 2>&1)" || rc=$?
  if [[ "$rc" -ne 0 ]]; then
    echo "(skip: $(echo "$out" | head -n 1))"
    echo
    return 0
  fi
  if printf '%s' "$out" | grep -q 'SERVICE_DISABLED'; then
    echo "(warn: API disabled — cannot enumerate, but existence-billed"
    echo " orphans can keep billing behind a disabled API; if billing looks"
    echo " suspicious, verify via Cloud Billing reports / support)"
    echo
    return 0
  fi
  if printf '%s' "$out" | grep -q '"error"'; then
    echo "(skip: $(printf '%s' "$out" | grep -o '"status": *"[A-Z_]*"' | head -n 1))"
    echo
    return 0
  fi
  local names
  # grep exits 1 on a healthy empty list; without the guard, set -e
  # would abort the whole probe on the happiest possible response.
  names="$(printf '%s' "$out" | grep -o '"name": *"[^"]*"' | sed 's/.*: *"//; s/"$//')" || true
  if [[ -z "$names" ]]; then
    echo "(none)"
  else
    found=1
    echo "$names"
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

# License Manager-class resources bill merely by existing — the class
# behind the 2026-08 cost spike (Office SPLA licenses billing daily; see
# tool/apply_cost_denylist.yaml header). It has no stable gcloud list
# surface, so probe the REST API in the example's location plus global.
# TODO: Discovery Engine licenseConfigs / userStores belong to the same
# never_apply class — add them once their REST list paths are verified.
for loc in "${REGIONS[@]}" global; do
  run_rest "License Manager configurations ($loc)" \
    "https://licensemanager.googleapis.com/v1/projects/$PROJECT_ID/locations/$loc/configurations"
done

if [[ "$found" -eq 1 ]]; then
  echo "orphan-check: RESOURCES FOUND — investigate billing; reclaim with Apply smoke janitor / apply_smoke.sh --destroy-only (do not delete ad hoc from the agent)." >&2
  exit 1
fi

echo "orphan-check: OK (no listed high-cost resources found)"
exit 0
