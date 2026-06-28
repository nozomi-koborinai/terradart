#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

COOKBOOK_GCP_PROJECT_ID="${COOKBOOK_GCP_PROJECT_ID:-ci-test-project-id}"
COOKBOOK_REGION="${COOKBOOK_REGION:-asia-northeast1}"
COOKBOOK_IMAGE_URI="${COOKBOOK_IMAGE_URI:-$COOKBOOK_REGION-docker.pkg.dev/$COOKBOOK_GCP_PROJECT_ID/lunch-concierge/app:demo}"
COOKBOOK_INVOKER_EMAIL="${COOKBOOK_INVOKER_EMAIL:-demo@example.com}"

echo ">> dart pub get"
dart pub get

echo ">> generate Lunch Concierge shared schemas"
(
  cd cookbook/lunch-concierge/shared
  dart run build_runner build
)

echo ">> cookbook format check"
dart format --output=none --set-exit-if-changed \
  cookbook/lunch-concierge/client/lib \
  cookbook/lunch-concierge/server \
  cookbook/lunch-concierge/infra \
  cookbook/single-project-app \
  cookbook/firestore-seeded-data \
  cookbook/remote-backend

echo ">> cookbook analyze"
dart analyze \
  cookbook/lunch-concierge/server \
  cookbook/lunch-concierge/infra \
  cookbook/lunch-concierge/shared \
  cookbook/single-project-app \
  cookbook/firestore-seeded-data \
  cookbook/remote-backend

echo ">> compile Lunch Concierge server"
(
  cd cookbook/lunch-concierge/server
  dart compile exe bin/server.dart -o /tmp/lunch_concierge_server
)

echo ">> synth Lunch Concierge infra"
(
  cd cookbook/lunch-concierge/infra
  GCP_PROJECT_ID="$COOKBOOK_GCP_PROJECT_ID" \
    IMAGE_URI="$COOKBOOK_IMAGE_URI" \
    INVOKER_EMAIL="$COOKBOOK_INVOKER_EMAIL" \
    dart run bin/infra.dart
)

if command -v terraform >/dev/null 2>&1; then
  echo ">> terraform validate Lunch Concierge infra"
  (
    cd cookbook/lunch-concierge/infra/tf-out
    terraform init -backend=false
    terraform validate
  )
else
  echo ">> terraform not found; skipping terraform validate"
fi
