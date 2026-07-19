#!/usr/bin/env bash
# Cursor Cloud Agent install hook — provision the toolchain agents need.
#
# Referenced by .cursor/environment.json ("install"). Cursor runs this once on
# VM boot and caches the result as a snapshot, so it MUST be idempotent: it can
# run again on partially cached state. Mirrors the toolchain documented in
# AGENTS.md "Cursor Cloud specific instructions" (Dart SDK stable + Terraform
# + Google Cloud CLI for read-only terradart-validate audits).
set -euo pipefail

# apt steps need root; the default cloud image may run install as a non-root
# user with sudo available, so fall back to sudo when not already root.
SUDO=""
if [[ "$(id -u)" -ne 0 ]]; then
  SUDO="sudo"
fi

# --- Dart SDK (stable) via the official apt repository ----------------------
if ! command -v dart >/dev/null 2>&1; then
  $SUDO apt-get update
  $SUDO apt-get install -y --no-install-recommends \
    apt-transport-https wget gnupg ca-certificates
  wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub \
    | $SUDO gpg --dearmor -o /usr/share/keyrings/dart.gpg
  echo 'deb [signed-by=/usr/share/keyrings/dart.gpg] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' \
    | $SUDO tee /etc/apt/sources.list.d/dart_stable.list >/dev/null
  $SUDO apt-get update
  $SUDO apt-get install -y dart
fi

# --- Terraform via the HashiCorp apt repository ----------------------------
if ! command -v terraform >/dev/null 2>&1; then
  $SUDO apt-get install -y --no-install-recommends \
    gnupg software-properties-common curl lsb-release
  wget -qO- https://apt.releases.hashicorp.com/gpg \
    | $SUDO gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
  echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
    | $SUDO tee /etc/apt/sources.list.d/hashicorp.list >/dev/null
  $SUDO apt-get update
  $SUDO apt-get install -y terraform
fi

# --- gcp-cost-mcp-server (pricing MCP for cost-classification) -------------
# Stamp the pin beside the binary so a GCMS_VER bump re-downloads on cached
# Cloud Agent snapshots (the binary itself does not expose a reliable --version).
GCMS_VER="0.10.0"
GCMS_BIN="/usr/local/bin/gcp-cost-mcp-server"
GCMS_PIN="${GCMS_BIN}.version"
if [[ ! -x "$GCMS_BIN" ]] || [[ "$(cat "$GCMS_PIN" 2>/dev/null || true)" != "$GCMS_VER" ]]; then
  $SUDO curl -fsSL -o "$GCMS_BIN" "https://github.com/nozomi-koborinai/gcp-cost-mcp-server/releases/download/v${GCMS_VER}/gcp-cost-mcp-server-linux-amd64"
  $SUDO chmod +x "$GCMS_BIN"
  printf '%s\n' "$GCMS_VER" | $SUDO tee "$GCMS_PIN" >/dev/null
fi

# --- Google Cloud CLI (read-only orphan audits of terradart-validate) ------
# Auth is NOT provisioned here — agents materialize the Cursor Secret
# GCP_VALIDATE_SA_JSON via tool/gcloud_validate_auth.sh (see AGENTS.md).
if ! command -v gcloud >/dev/null 2>&1; then
  $SUDO apt-get install -y --no-install-recommends \
    apt-transport-https ca-certificates gnupg curl
  if [[ ! -f /usr/share/keyrings/cloud.google.gpg ]]; then
    curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg \
      | $SUDO gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
  fi
  echo 'deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main' \
    | $SUDO tee /etc/apt/sources.list.d/google-cloud-sdk.list >/dev/null
  $SUDO apt-get update
  $SUDO apt-get install -y google-cloud-cli
fi

# --- Resolve workspace dependencies (cheap; safe to re-run) ----------------
# apt installs Dart under /usr/lib/dart/bin (symlinked into /usr/bin); add it to
# PATH defensively in case the symlink is absent on a given base image.
export PATH="/usr/lib/dart/bin:$PATH"
dart --version
terraform version
gcloud --version | head -n 1
dart pub get
