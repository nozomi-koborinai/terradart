#!/usr/bin/env bash
# Local mirror of the CI test pipeline. Run before pushing to reproduce
# the same gates that GitHub Actions enforces.
#
# Usage:
#   ./tool/run_tests.sh             # tests + coverage
#   ./tool/run_tests.sh --no-coverage  # tests only
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

WITH_COVERAGE=1
for arg in "$@"; do
  case "$arg" in
    --no-coverage) WITH_COVERAGE=0 ;;
  esac
done

echo ">> dart pub get (workspace)"
dart pub get

echo ">> dart format check"
dart format --output=none --set-exit-if-changed .

echo ">> dart analyze"
dart analyze --fatal-infos --fatal-warnings

PACKAGES=(
  "packages/terradart"
  "packages/terradart_codegen"
  "packages/terradart_google"
)

# build_runner is per-package; only run where build.yaml exists.
for pkg in "${PACKAGES[@]}"; do
  if [[ -f "$pkg/build.yaml" ]]; then
    echo ">> build_runner ($pkg)"
    (cd "$pkg" && dart run build_runner build --delete-conflicting-outputs)
  fi
done

if [[ "$WITH_COVERAGE" == "1" ]]; then
  echo ">> dart test --coverage (per package)"
  for pkg in "${PACKAGES[@]}"; do
    echo ">>>> $pkg"
    (cd "$pkg" && dart test --coverage=coverage --reporter=expanded)
  done

  echo ">> format coverage"
  dart pub global activate coverage
  mkdir -p coverage
  for pkg in "${PACKAGES[@]}"; do
    name=$(basename "$pkg")
    if [[ -d "$pkg/coverage" ]]; then
      dart pub global run coverage:format_coverage \
        --lcov \
        --in="$pkg/coverage" \
        --out="coverage/${name}.lcov.info" \
        --packages="$pkg/.dart_tool/package_config.json" \
        --report-on="$pkg/lib"
      echo "wrote coverage/${name}.lcov.info"
    fi
  done
else
  echo ">> dart test (per package)"
  for pkg in "${PACKAGES[@]}"; do
    echo ">>>> $pkg"
    (cd "$pkg" && dart test --reporter=expanded)
  done
fi

echo ">> done"
