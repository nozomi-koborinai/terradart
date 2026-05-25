#!/usr/bin/env bash
# Smoke-test the pubsub quickstart (boundary / AppExport path).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
EXAMPLE="$ROOT/examples/pubsub_quickstart"

cd "$ROOT"
dart pub get

cd "$EXAMPLE"
export GCP_PROJECT_ID="${GCP_PROJECT_ID:-ci-test-project-id}"
dart pub get
dart run bin/infra.dart
dart analyze --fatal-infos --fatal-warnings .

echo "smoke_quickstart: OK"
