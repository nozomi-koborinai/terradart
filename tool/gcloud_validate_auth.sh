#!/usr/bin/env bash
# Materialize Cursor Secret GCP_VALIDATE_SA_JSON for read-only gcloud against
# terradart-validate. Maintainer ops — not part of any shipped package.
#
# Usage (from repo root, after the secret is registered in Cursor):
#   eval "$(tool/gcloud_validate_auth.sh)"
#   gcloud compute instances list --project="$GCP_VALIDATE_PROJECT_ID"
#
# Or let tool/apply_smoke_orphan_check.sh call this for you.
#
# Secrets / env:
#   GCP_VALIDATE_SA_JSON     — required; inline service-account JSON (Cursor Secret)
#   GCP_VALIDATE_PROJECT_ID  — optional; defaults to terradart-validate
#
# Does NOT reuse GOOGLE_APPLICATION_CREDENTIALS (that secret is for the
# public Billing Catalog / gcp-cost MCP and should stay low-privilege).
set -euo pipefail

readonly KEY_FILE="${HOME}/.config/terradart-validate/service-account.json"
PROJECT_ID="${GCP_VALIDATE_PROJECT_ID:-terradart-validate}"

if [[ -z "${GCP_VALIDATE_SA_JSON:-}" ]]; then
  echo "gcloud_validate_auth.sh: set Cursor Secret GCP_VALIDATE_SA_JSON (inline SA JSON for terradart-validate read-only)." >&2
  echo "Do not reuse the gcp-cost GOOGLE_APPLICATION_CREDENTIALS secret." >&2
  exit 64
fi

if [[ "${GCP_VALIDATE_SA_JSON}" != \{* ]]; then
  echo "gcloud_validate_auth.sh: GCP_VALIDATE_SA_JSON must be an inline JSON object (starts with '{')." >&2
  exit 64
fi

if ! command -v gcloud >/dev/null 2>&1; then
  echo "gcloud_validate_auth.sh: gcloud not on PATH — rebuild the Cloud Agent snapshot after merging .cursor/install.sh changes." >&2
  exit 69
fi

install -d -m 700 "$(dirname "$KEY_FILE")"
umask 077
printf '%s' "$GCP_VALIDATE_SA_JSON" >"$KEY_FILE"
chmod 600 "$KEY_FILE"

# Activate for gcloud's credential store. Do NOT export
# GOOGLE_APPLICATION_CREDENTIALS — that Cursor Secret is reserved for the
# gcp-cost Billing Catalog SA and must stay separate.
gcloud auth activate-service-account \
  --key-file="$KEY_FILE" \
  --project="$PROJECT_ID" \
  --quiet >/dev/null

# Emit exports for `eval "$(…)"` callers (gcloud-scoped only).
printf 'export CLOUDSDK_AUTH_CREDENTIAL_FILE_OVERRIDE=%q\n' "$KEY_FILE"
printf 'export GCP_VALIDATE_PROJECT_ID=%q\n' "$PROJECT_ID"
printf 'export CLOUDSDK_CORE_PROJECT=%q\n' "$PROJECT_ID"
echo "gcloud_validate_auth.sh: authenticated for project $PROJECT_ID (read-only SA expected)" >&2
