#!/usr/bin/env bash
# Materialize Cursor-injected service-account JSON for gcp-cost-mcp-server.
#
# Cloud Agent secrets set GOOGLE_APPLICATION_CREDENTIALS to the JSON body.
# Google's ADC and gcp-cost-mcp-server expect a filesystem path instead.
set -euo pipefail

readonly GAC_FILE="${HOME}/.config/gcp-cost/service-account.json"

if [[ -n "${GOOGLE_APPLICATION_CREDENTIALS:-}" && "${GOOGLE_APPLICATION_CREDENTIALS}" == \{* ]]; then
  install -d -m 700 "$(dirname "$GAC_FILE")"
  umask 077
  printf '%s' "$GOOGLE_APPLICATION_CREDENTIALS" >"$GAC_FILE"
  chmod 600 "$GAC_FILE"
  export GOOGLE_APPLICATION_CREDENTIALS="$GAC_FILE"
fi

exec gcp-cost-mcp-server
