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

# 6. PR-only skip-list (high-cost examples deferred to the full sweep): every
#    entry must be a real quickstart, must NOT also be in the apply skip-list,
#    and must remain in the --all apply set (the sweep still applies it).
pr_skip_slugs="$(grep -vE '^[[:space:]]*#' tool/apply_smoke_pr_skip.yaml \
  | grep -E '^[a-z0-9_]+:' | sed -E 's/:.*//' | sort)"
[[ -n "$pr_skip_slugs" ]] || fail "pr-skip list is empty — expected gke/compute"
while IFS= read -r s; do
  [[ -z "$s" ]] && continue
  printf '%s\n' "$all_slugs" | grep -qxF "$s" || fail "pr-skip '$s' is not a real quickstart"
  printf '%s\n' "$skip_slugs" | grep -qxF "$s" && fail "pr-skip '$s' must not also be in the apply skip-list"
  printf '%s\n' "$apply_set" | grep -qxF "$s" || fail "pr-skip '$s' must stay in the --all apply set (sweep applies it)"
done <<< "$pr_skip_slugs"

# 7. changed-mode filter: only bin/lib paths select an example (not pubspec/README).
#    Mirrors the pipeline in apply_smoke.sh's `changed` branch — keep in sync.
filter_changed_paths() {
  grep -E '^examples/[^/]+_quickstart/(bin|lib)/' | cut -d/ -f2 | sort -u
}
changed_out="$(printf '%s\n' \
  'examples/dns_quickstart/pubspec.yaml' \
  'examples/app_engine_quickstart/README.md' \
  'examples/dns_quickstart/lib/main.dart' \
  'examples/pubsub_quickstart/bin/infra.dart' \
  | filter_changed_paths)"
[[ "$changed_out" == "$(printf '%s\n' dns_quickstart pubsub_quickstart)" ]] \
  || fail "changed-mode path filter:
got:
$changed_out"

# 8. changed-mode regression: a pubspec/README-only bump (a Wave version bump)
#    must select NOTHING. The old awk literal-regex /…[^/]…/ broke on the
#    embedded slash and silently matched every line under gawk, fanning a
#    pubspec bump out to every example — a real cost leak. Guard it.
fanout_out="$(printf '%s\n' \
  'examples/dns_quickstart/pubspec.yaml' \
  'examples/biglake_quickstart/pubspec.yaml' \
  'examples/app_engine_quickstart/README.md' \
  'examples/app_engine_quickstart/analysis_options.yaml' \
  | filter_changed_paths)"
[[ -z "$fanout_out" ]] \
  || fail "pubspec/README-only bump must select no examples (fan-out regression):
got:
$fanout_out"

# 9. cost gate: an example whose generated tf-out contains a denylisted resource
#    type must be skip-listed appropriately. never_apply -> must be in the apply
#    skip-list (skipped even in the full sweep); sweep_only -> must be in the
#    apply skip-list OR the PR-skip list. This is the machine guard that stops a
#    high-cost resource (e.g. an existence-billed software license) from slipping
#    into the sweep — the gap behind the License Manager cost spike. Needs jq to
#    read tf-out; if jq is absent (some local shells) skip with a warning, since
#    CI always has it.
if command -v jq >/dev/null 2>&1; then
  denylist=tool/apply_cost_denylist.yaml
  [[ -f "$denylist" ]] || fail "missing $denylist"
  never_types="$(grep -vE '^[[:space:]]*#' "$denylist" | grep -E ': *never_apply' | sed -E 's/:.*//' | sort -u)"
  sweep_types="$(grep -vE '^[[:space:]]*#' "$denylist" | grep -E ': *sweep_only' | sed -E 's/:.*//' | sort -u)"
  [[ -n "$never_types$sweep_types" ]] || fail "cost denylist is empty — expected at least one entry"
  for ex_dir in examples/*_quickstart/; do
    slug="$(basename "$ex_dir")"
    tfjson="${ex_dir}tf-out/main.tf.json"
    [[ -f "$tfjson" ]] || continue
    types="$(jq -r '.resource // {} | keys[]' "$tfjson" 2>/dev/null | sort -u)" \
      || fail "cost gate: failed to parse $tfjson with jq"
    in_skip=false; in_pr_skip=false
    printf '%s\n' "$skip_slugs" | grep -qxF "$slug" && in_skip=true
    printf '%s\n' "$pr_skip_slugs" | grep -qxF "$slug" && in_pr_skip=true
    while IFS= read -r t; do
      [[ -z "$t" ]] && continue
      printf '%s\n' "$types" | grep -qxF "$t" || continue
      $in_skip || fail "cost gate: $slug provisions never-apply '$t' but is not in tool/apply_smoke_skip.yaml"
    done <<< "$never_types"
    while IFS= read -r t; do
      [[ -z "$t" ]] && continue
      printf '%s\n' "$types" | grep -qxF "$t" || continue
      { $in_skip || $in_pr_skip; } \
        || fail "cost gate: $slug provisions sweep-only '$t' but is in neither tool/apply_smoke_skip.yaml nor tool/apply_smoke_pr_skip.yaml"
    done <<< "$sweep_types"
  done
else
  echo "apply_smoke_test: WARN: jq not found — skipping cost gate (test 9); CI runs it" >&2
fi

# 10. cost_tier_of: 台帳の型→tier を返し、未登録は空文字を返す。
. tool/apply_cost_lib.sh || fail "cannot source tool/apply_cost_lib.sh"
[[ "$(cost_tier_of google_license_manager_configuration tool/apply_cost_denylist.yaml)" == "never_apply" ]] \
  || fail "cost_tier_of: never_apply 型の判定に失敗"
[[ "$(cost_tier_of google_container_cluster tool/apply_cost_denylist.yaml)" == "sweep_only" ]] \
  || fail "cost_tier_of: sweep_only 型の判定に失敗"
[[ "$(cost_tier_of google_compute_network tool/apply_cost_denylist.yaml)" == "safe" ]] \
  || fail "cost_tier_of: safe 型の判定に失敗"
[[ -z "$(cost_tier_of google_app_engine_application tool/apply_cost_denylist.yaml)" ]] \
  || fail "cost_tier_of: 未登録型は空文字であるべき"

# 11. cost_is_dangerous_type: 危険パターンに反応する。
cost_is_dangerous_type google_license_manager_configuration || fail "danger: license にマッチすべき"
cost_is_dangerous_type google_compute_reservation        || fail "danger: reservation にマッチすべき"
cost_is_dangerous_type google_storage_bucket             && fail "danger: storage_bucket は安全側であるべき"

echo "apply_smoke_test: OK"
