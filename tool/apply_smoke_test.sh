#!/usr/bin/env bash
# Tests apply_smoke.sh selection + dry-run WITHOUT touching GCP/terraform.
# --dry-run prints the chosen example slugs (one per line) and exits 0.
set -uo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

fail() {
  echo "apply_smoke_test: FAIL: $*" >&2
  exit 1
}

# 1. --all --dry-run lists every examples/*_quickstart, no GCP project needed.
all_out="$(tool/apply_smoke.sh --all --dry-run)" || fail "--all --dry-run exited non-zero"
expected="$(for d in examples/*_quickstart/; do basename "$d"; done | sort)"
[[ "$all_out" == "$expected" ]] || fail "--all selection mismatch:
got:
$all_out
want:
$expected"

# 2. --example X --dry-run lists exactly that slug.
one_out="$(tool/apply_smoke.sh --example gke_quickstart --dry-run)" || fail "--example dry-run non-zero"
[[ "$one_out" == "gke_quickstart" ]] || fail "--example selection: got '$one_out'"

# 3. --dry-run must NOT require a GCP project (selection is GCP-free).
GCP_PROJECT_ID="" GCP_VALIDATE_PROJECT_ID="" tool/apply_smoke.sh --all --dry-run >/dev/null \
  || fail "--dry-run should not require GCP project"

# 4. --destroy-only is a recognized flag and selects the same set.
do_out="$(tool/apply_smoke.sh --all --destroy-only --dry-run)" || fail "--destroy-only dry-run non-zero"
[[ "$do_out" == "$expected" ]] || fail "--destroy-only selection mismatch"

echo "apply_smoke_test: OK"
