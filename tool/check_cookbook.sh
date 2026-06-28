#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo ">> dart pub get"
dart pub get

echo ">> generate Lunch Concierge server schemas"
(
  cd cookbook/lunch-concierge/server
  dart run build_runner build
)

echo ">> cookbook format check"
dart format --output=none --set-exit-if-changed \
  cookbook/lunch-concierge/client/lib \
  cookbook/lunch-concierge/server \
  cookbook/lunch-concierge/infra \
  cookbook/lunch-concierge/shared \
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
  GCP_PROJECT_ID=flutter-gakkai-10 \
    IMAGE_URI=asia-northeast1-docker.pkg.dev/flutter-gakkai-10/lunch-concierge/app:demo \
    INVOKER_EMAIL=demo@example.com \
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
