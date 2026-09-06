#!/usr/bin/env bash
# Agent verification gate — fast local/CI-adjacent checks before claiming work done.
#
# Usage (from repo root):
#   tool/agent_verify.sh
#   tool/agent_verify.sh --quick       # iteration loop: static checks + unit
#                                      # gates only (skips example synth, the
#                                      # package suites, cookbook, smoke).
#                                      # Run the FULL gate before opening a PR.
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
QUICK=0
for arg in "$@"; do
  case "$arg" in
    --quick) QUICK=1 ;;
    --format) WITH_FORMAT=1 ;;
    --maintainer) WITH_MAINTAINER=1 ;;
    -h | --help)
      sed -n '2,16p' "$0"
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

echo ">> example_synth_gates_test (unit)"
dart --enable-asserts tool/example_synth_gates_test.dart

echo ">> check_docs_consistency (text-only)"
dart tool/check_docs_consistency.dart

if [[ "$QUICK" == "0" ]]; then
  echo ">> example_synth_gates (synth every quickstart once: coverage + API ratchet + validate)"
  dart tool/example_synth_gates.dart

  echo ">> check_example_topology (reuses tf-out from the synth pass)"
  dart tool/check_example_topology.dart --reuse-tf-out
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

if [[ "$WITH_FORMAT" == "1" ]]; then
  echo ">> dart format (terradart_core, terradart_codegen, terradart_agent, terradart_coverage, terradart_hcl, terradart_migrate)"
  dart format --output=none --set-exit-if-changed \
    packages/terradart_core/ \
    packages/terradart_codegen/ \
    packages/terradart_agent/ \
    packages/terradart_coverage/ \
    packages/terradart_hcl/ \
    packages/terradart_migrate/
fi

if [[ "$QUICK" == "0" ]]; then
  PACKAGES=(terradart_core terradart_codegen terradart_google terradart_google_beta terradart_appwrite terradart_cloudflare terradart_agent terradart_coverage terradart_hcl terradart_migrate)
  for pkg in "${PACKAGES[@]}"; do
    echo ">> dart test packages/$pkg"
    (cd "packages/$pkg" && dart test --reporter=expanded)
  done
else
  echo ">> package test suites: SKIPPED (--quick)"
fi

echo ">> dart test tool/ (render_formula, render_to_file, select_changed_examples, check_bump_scope, wave_skiplist_gate, loop_health_report, extract_schema_subset)"
dart test tool/render_formula_test.dart tool/render_to_file_test.dart tool/select_changed_examples_test.dart tool/check_bump_scope_test.dart tool/check_wave_skiplist_gate_test.dart tool/loop_health_report_test.dart tool/extract_schema_subset_test.dart tool/generate_drift_report_test.dart

echo ">> terradart wrap --check"
(
  cd packages/terradart_codegen
  dart run bin/terradart.dart wrap \
    --provider hashicorp/google \
    --source test/fixtures/wrap/source \
    --output ../terradart_google/lib/src \
    --migrate-manifest ../terradart_migrate/lib/src/manifest/google.g.dart \
    --check
)

# Per-provider lanes beyond GA google — coordinates in tool/providers.yaml.
echo ">> terradart wrap --check (google-beta)"
(
  cd packages/terradart_codegen
  dart run bin/terradart.dart wrap \
    --provider hashicorp/google-beta \
    --source test/fixtures/wrap/source_beta \
    --output ../terradart_google_beta/lib/src \
    --overrides-root lib/src/codegen/wrapper_overrides/google_beta/yaml \
    --barrels-manifest lib/src/codegen/barrels/barrels_google_beta.yaml \
    --resource-provider google-beta \
    --migrate-manifest ../terradart_migrate/lib/src/manifest/google_beta.g.dart \
    --check
)

echo ">> terradart wrap --check (appwrite)"
(
  cd packages/terradart_codegen
  dart run bin/terradart.dart wrap \
    --provider appwrite/appwrite \
    --source test/fixtures/wrap/source_appwrite \
    --output ../terradart_appwrite/lib/src \
    --overrides-root lib/src/codegen/wrapper_overrides/appwrite/yaml \
    --barrels-manifest lib/src/codegen/barrels/barrels_appwrite.yaml \
    --migrate-manifest ../terradart_migrate/lib/src/manifest/appwrite.g.dart \
    --check
)

echo ">> terradart wrap --check (cloudflare)"
(
  cd packages/terradart_codegen
  dart run bin/terradart.dart wrap \
    --provider cloudflare/cloudflare \
    --source test/fixtures/wrap/source_cloudflare \
    --output ../terradart_cloudflare/lib/src \
    --overrides-root lib/src/codegen/wrapper_overrides/cloudflare/yaml \
    --barrels-manifest lib/src/codegen/barrels/barrels_cloudflare.yaml \
    --migrate-manifest ../terradart_migrate/lib/src/manifest/cloudflare.g.dart \
    --check
)

echo ">> terradart lint-override"
(
  cd packages/terradart_codegen
  dart run bin/terradart.dart lint-override
)

echo ">> terradart lint-override (google-beta)"
(
  cd packages/terradart_codegen
  dart run bin/terradart.dart lint-override \
    --dir lib/src/codegen/wrapper_overrides/google_beta/yaml \
    --mm-dir test/fixtures/wrap/source_beta
)

echo ">> terradart lint-override (appwrite)"
(
  cd packages/terradart_codegen
  dart run bin/terradart.dart lint-override \
    --dir lib/src/codegen/wrapper_overrides/appwrite/yaml \
    --mm-dir test/fixtures/wrap/source_appwrite
)

echo ">> terradart lint-override (cloudflare)"
(
  cd packages/terradart_codegen
  dart run bin/terradart.dart lint-override \
    --dir lib/src/codegen/wrapper_overrides/cloudflare/yaml \
    --mm-dir test/fixtures/wrap/source_cloudflare
)

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

echo ">> apply_smoke_test (selection, no GCP)"
chmod +x tool/apply_smoke_test.sh
if [[ "$QUICK" == "1" ]] && ! compgen -G "examples/*/tf-out" > /dev/null; then
  # The cost gate (test 9) inspects synthesized tf-out and fails closed when
  # there is none. --quick skips the synth that creates it, so on a fresh
  # checkout the gate would fail for the wrong reason; the full gate always
  # runs it right after synth.
  echo ">> apply_smoke_test: SKIPPED (--quick, no examples/*/tf-out yet — the full gate runs the cost gate after synth)"
else
  tool/apply_smoke_test.sh
fi

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
