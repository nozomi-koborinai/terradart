#!/usr/bin/env bash
# Agent verification gate — fast local/CI-adjacent checks before claiming work done.
#
# Usage (from repo root):
#   tool/agent_verify.sh
#   tool/agent_verify.sh --quick       # iteration loop: static checks + unit
#                                      # gates only (skips example synth, the
#                                      # package suites, cookbook, smoke).
#                                      # Run the FULL gate before opening a PR.
#   tool/agent_verify.sh --maintainer  # add wrap-init / wrap-promote e2e tests
#
# Does not run the full terraform_validate example matrix; GitHub Actions still
# enforces that on merge.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

WITH_MAINTAINER=0
QUICK=0
for arg in "$@"; do
  case "$arg" in
    --quick) QUICK=1 ;;
    --maintainer) WITH_MAINTAINER=1 ;;
    -h | --help)
      sed -n '2,13p' "$0"
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

echo ">> check_docs_consistency (text-only)"
dart tool/check_docs_consistency.dart

if [[ "$QUICK" == "0" ]]; then
  echo ">> example_synth_gates (synth every quickstart once: coverage + API ratchet + validate)"
  dart tool/example_synth_gates.dart

  echo ">> check_example_topology (reuses tf-out from the synth pass)"
  dart tool/check_example_topology.dart --reuse-tf-out

  echo ">> migrate_roundtrip_gates (migrate every quickstart's synth output back to Dart and re-synth; reuses tf-out)"
  dart tool/migrate_roundtrip_gates.dart --reuse-tf-out

  echo ">> migrate_fixture_gates (terradart-migrate the coverage fixtures, synth, terraform validate every directory; --merge-envs synths per environment)"
  dart tool/migrate_fixture_gates.dart

  echo ">> migrate_moved_gates (unroll count / for_each, synth, terraform plan against the indexed state: moves only)"
  dart tool/migrate_moved_gates.dart
else
  echo ">> example synth gates: SKIPPED (--quick)"
fi

echo ">> dart analyze"
dart analyze packages/ --fatal-infos --fatal-warnings

echo ">> dart analyze tool/"
dart analyze tool/ --fatal-infos --fatal-warnings

echo ">> dart analyze examples/"
dart analyze examples/ --fatal-infos --fatal-warnings

if [[ "$QUICK" == "0" ]]; then
  echo ">> cookbook validation"
  chmod +x tool/check_cookbook.sh
  tool/check_cookbook.sh
else
  echo ">> cookbook validation: SKIPPED (--quick)"
fi

# Same scope as the CI format step: generated wrappers keep the format of
# wrap's pinned dart_style, which `wrap --check` guards instead.
echo ">> dart format (terradart_core, terradart_codegen, terradart_agent, terradart_coverage, terradart_hcl, terradart_migrate)"
dart format --output=none --set-exit-if-changed \
  packages/terradart_core/ \
  packages/terradart_codegen/ \
  packages/terradart_agent/ \
  packages/terradart_coverage/ \
  packages/terradart_hcl/ \
  packages/terradart_migrate/

if [[ "$QUICK" == "0" ]]; then
  for pkg_dir in packages/*/; do
    echo ">> dart test $pkg_dir"
    (cd "$pkg_dir" && dart test --reporter=expanded)
  done
else
  echo ">> package test suites: SKIPPED (--quick)"
fi

echo ">> dart test tool/"
dart test tool/

echo ">> wrap lanes (terradart wrap --check + lint-override for every tool/providers.yaml lane)"
dart tool/wrap_lanes.dart

# --strict-nested restored: the 0.24.0 flip (deriveNestedTypes across 19
# NESTED_THIN resources) paid down the 56-advisory rot this gate silently
# accumulated after Wave 76. Remaining NESTED_THIN sites are only the ones a
# flipped override's nestedTypeExcludes deliberately freezes (printed as
# [frozen-by-exclude], never failing) — genuinely un-migrated sites fail here
# again, same as top-level and NESTED_PARTIAL gaps (modulo
# tool/enum_gap_debt.yaml).
echo ">> check_override_enum_gaps"
dart tool/check_override_enum_gaps.dart --strict-nested

echo ">> check_mm_upstream_fingerprint"
dart tool/check_mm_upstream_fingerprint.dart

if [[ "$QUICK" == "0" ]]; then
  echo ">> smoke_quickstart"
  chmod +x tool/smoke_quickstart.sh
  tool/smoke_quickstart.sh
else
  echo ">> smoke_quickstart: SKIPPED (--quick)"
fi

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

if [[ "$QUICK" == "1" ]]; then
  echo "agent_verify: OK (--quick — run the full gate before opening a PR)"
else
  echo "agent_verify: OK"
fi
