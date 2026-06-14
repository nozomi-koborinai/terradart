#!/usr/bin/env bash
# Tests apply_smoke.sh selection + skip-list + dry-run WITHOUT touching
# GCP/terraform. --dry-run prints the chosen example slugs (one per line) and
# exits 0.
set -uo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

fail() {
  echo "apply_smoke_test: FAIL: $*" >&2
  exit 1
}

all_slugs="$(for d in examples/*_quickstart/; do basename "$d"; done | sort)"
skip_slugs="$(grep -vE '^[[:space:]]*#' tool/apply_smoke_skip.yaml \
  | grep -E '^[a-z0-9_]+:' | sed -E 's/:.*//' | sort)"
# The apply set is every quickstart minus the skip-listed ones.
apply_set="$(comm -23 <(printf '%s\n' "$all_slugs") <(printf '%s\n' "$skip_slugs"))"

# 1. --all --dry-run lists the apply set (every quickstart minus the skip-list).
all_out="$(tool/apply_smoke.sh --all --dry-run)" || fail "--all --dry-run exited non-zero"
[[ "$all_out" == "$apply_set" ]] || fail "--all apply-set mismatch:
got:
$all_out
want:
$apply_set"

# 2. --example X --dry-run lists exactly that slug.
one_out="$(tool/apply_smoke.sh --example gke_quickstart --dry-run)" || fail "--example dry-run non-zero"
[[ "$one_out" == "gke_quickstart" ]] || fail "--example selection: got '$one_out'"

# 3. --dry-run must NOT require a GCP project (selection is GCP-free).
GCP_PROJECT_ID="" GCP_VALIDATE_PROJECT_ID="" tool/apply_smoke.sh --all --dry-run >/dev/null \
  || fail "--dry-run should not require GCP project"

# 4. --destroy-only ignores the skip-list (the janitor must reclaim everything).
do_out="$(tool/apply_smoke.sh --all --destroy-only --dry-run)" || fail "--destroy-only dry-run non-zero"
[[ "$do_out" == "$all_slugs" ]] || fail "--destroy-only should select ALL examples (skip-list ignored):
got:
$do_out
want:
$all_slugs"

# 5. skip-list semantics: a listed example is absent from the apply set, present
#    for destroy, and applied when named explicitly (--example override).
sample_skip="$(printf '%s\n' "$skip_slugs" | head -1)"
[[ -n "$sample_skip" ]] || fail "skip-list is empty — expected at least one entry"
printf '%s\n' "$all_out" | grep -qxF "$sample_skip" \
  && fail "skip-listed '$sample_skip' must be absent from the --all apply set"
printf '%s\n' "$do_out" | grep -qxF "$sample_skip" \
  || fail "skip-listed '$sample_skip' must be present in the --destroy-only set"
ov_out="$(tool/apply_smoke.sh --example "$sample_skip" --dry-run)" || fail "--example override non-zero"
[[ "$ov_out" == "$sample_skip" ]] || fail "--example must override the skip-list: got '$ov_out'"

echo "apply_smoke_test: OK"
