#!/usr/bin/env bash
# Agent verification gate — fast local/CI-adjacent checks before claiming work done.
#
# Usage (from repo root):
#   tool/agent_verify.sh
#   tool/agent_verify.sh --format      # add scoped dart format (hand-written packages)
#   tool/agent_verify.sh --maintainer  # add wrap-init / wrap-promote e2e tests
#
# Does not run the full terraform_validate example matrix; GitHub Actions still
# enforces that on merge.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

WITH_FORMAT=0
WITH_MAINTAINER=0
for arg in "$@"; do
  case "$arg" in
    --format) WITH_FORMAT=1 ;;
    --maintainer) WITH_MAINTAINER=1 ;;
    -h | --help)
      sed -n '2,12p' "$0"
      exit 0
      ;;
    *)
      echo "agent_verify.sh: unknown argument: $arg" >&2
      exit 64
      ;;
  esac
done

echo ">> dart pub get"
dart pub get

echo ">> check_docs_consistency"
dart tool/check_docs_consistency.dart

echo ">> check_example_topology"
dart tool/check_example_topology.dart

echo ">> dart analyze"
dart analyze packages/ --fatal-infos --fatal-warnings

if [[ "$WITH_FORMAT" == "1" ]]; then
  echo ">> dart format (terradart_core, terradart_codegen, terradart_agent)"
  dart format --output=none --set-exit-if-changed \
    packages/terradart_core/ \
    packages/terradart_codegen/ \
    packages/terradart_agent/
fi

PACKAGES=(terradart_core terradart_codegen terradart_google terradart_agent)
for pkg in "${PACKAGES[@]}"; do
  echo ">> dart test packages/$pkg"
  (cd "packages/$pkg" && dart test --reporter=expanded)
done

echo ">> terradart wrap --check"
(
  cd packages/terradart_codegen
  dart run bin/terradart.dart wrap \
    --provider hashicorp/google \
    --source test/fixtures/wrap/source \
    --output ../terradart_google/lib/src \
    --check
)

echo ">> terradart lint-override"
(
  cd packages/terradart_codegen
  dart run bin/terradart.dart lint-override
)

echo ">> smoke_quickstart"
chmod +x tool/smoke_quickstart.sh
tool/smoke_quickstart.sh

if [[ "$WITH_MAINTAINER" == "1" ]]; then
  echo ">> wrap-init e2e"
  (
    cd packages/terradart_codegen
    dart test --run-skipped -t e2e --name 'wrap-init'
  )
  echo ">> wrap-promote e2e"
  (
    cd packages/terradart_codegen
    dart test --run-skipped -t e2e --name 'wrap-promote'
  )
fi

echo "agent_verify: OK"
