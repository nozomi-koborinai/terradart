#!/usr/bin/env bash
# Tests apply_smoke.sh selection + skip-list + dry-run WITHOUT touching
# GCP/terraform. --dry-run prints the chosen example slugs (one per line) and
# exits 0.
#
# Key policy gates among the numbered tests below (full list inline):
#   test 9  — cost gate, DEFAULT-DENY: any example whose committed-synth tf-out
#             contains a type not classified in tool/apply_cost_denylist.yaml
#             (or classified sweep_only/never_apply without the matching skip
#             entry) fails. Fails closed when 0 tf-outs are present — run
#             `dart tool/example_synth_gates.dart` first (CI does).
#   test 12 — safe-tier sanity: a `safe` type whose name matches a high-cost
#             pattern (license/reservation/…) fails unless listed as
#             safe_exception with a rationale.
#   test 13 — cost-comment evidence: new `safe` ledger lines need `gcp-cost:`
#             or `apply-verified` (IAM adjuncts: `billing-behavior:` alone OK;
#             tool/apply_cost_comment_debt.yaml is the audited escape hatch).
#   test 14 — wave skiplist gate: a wave/* PR touching a skip-listed example
#             fails via tool/check_wave_skiplist_gate.dart, so WIP-1 cannot
#             silently stall behind a human-merge-only verdict (#296).
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

# 0. Live apply/destroy is refused (exit 78) even with a project id.
GCP_PROJECT_ID=ci-test-project-id tool/apply_smoke.sh --example pubsub_quickstart \
  >/tmp/apply_smoke_live.out 2>/tmp/apply_smoke_live.err
live_rc=$?
[[ "$live_rc" -eq 78 ]] || fail "live apply should exit 78, got $live_rc"
grep -q 'retired' /tmp/apply_smoke_live.err \
  || fail "live-apply refuse message missing"

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
  . tool/apply_cost_lib.sh
  safe_types="$(grep -vE '^[[:space:]]*#' "$denylist" | grep -E ': *safe' | sed -E 's/:.*//' | sort -u)"
  tfout_count=0
  for ex_dir in examples/*_quickstart/; do
    slug="$(basename "$ex_dir")"
    tfjson="${ex_dir}tf-out/main.tf.json"
    [[ -f "$tfjson" ]] || continue
    tfout_count=$((tfout_count + 1))
    types="$(jq -r '.resource // {} | keys[]' "$tfjson" 2>/dev/null | sort -u)" \
      || fail "cost gate: failed to parse $tfjson with jq"
    in_skip=false; in_pr_skip=false
    printf '%s\n' "$skip_slugs" | grep -qxF "$slug" && in_skip=true
    printf '%s\n' "$pr_skip_slugs" | grep -qxF "$slug" && in_pr_skip=true
    # DEFAULT-DENY: an APPLIED example (not in apply_smoke_skip.yaml — pr-skip
    # examples ARE applied in the full sweep, so they count here) must have every
    # type classified. An unclassified type = a possibly-high-cost unknown (the
    # License Manager gap) → fail; classify it or skip the example.
    if ! $in_skip; then
      while IFS= read -r t; do
        [[ -z "$t" ]] && continue
        [[ -n "$(cost_tier_of "$t" "$denylist")" ]] \
          || fail "cost gate: applied example '$slug' provisions unclassified type '$t' — classify it in tool/apply_cost_denylist.yaml (safe/sweep_only/never_apply) or add '$slug' to a skip list"
      done <<< "$types"
    fi
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
  [[ "$tfout_count" -gt 0 ]] \
    || fail "cost gate inspected 0 tf-outs — run 'dart tool/example_synth_gates.dart' to synth examples first"
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

# 12. sanity check: a `safe`-classified type matching the danger pattern is
#     almost certainly mis-classified (existence/hourly billing). Allow explicit
#     exceptions via lines `safe_exception: <type>  # why` in the denylist.
if command -v jq >/dev/null 2>&1; then
  . tool/apply_cost_lib.sh
  denylist=tool/apply_cost_denylist.yaml
  safe_only="$(grep -vE '^[[:space:]]*#' "$denylist" | grep -E ': *safe([[:space:]]|$)' | sed -E 's/:.*//' | sort -u)"
  exceptions="$(grep -E '^safe_exception:' "$denylist" | sed -E 's/^safe_exception:[[:space:]]*//; s/[[:space:]].*//' | sort -u)"
  while IFS= read -r t; do
    [[ -z "$t" ]] && continue
    cost_is_dangerous_type "$t" || continue
    printf '%s\n' "$exceptions" | grep -qxF "$t" && continue
    fail "sanity: type '$t' is classified safe but matches a high-cost pattern — re-check billing (terraform MCP + docs); if truly safe add 'safe_exception: $t  # reason' to $denylist"
  done <<< "$safe_only"
fi

# 13. cost-comment gate: `safe` ledger lines must document the gcp-cost MCP
#     price axis (or IAM/metadata billing-behavior when no SKU exists).
#     Grandfathered gaps live in tool/apply_cost_comment_debt.yaml.
denylist=tool/apply_cost_denylist.yaml
comment_debt=tool/apply_cost_comment_debt.yaml
[[ -f "$comment_debt" ]] || fail "missing $comment_debt"
debt_types="$(grep -vE '^[[:space:]]*#' "$comment_debt" \
  | grep -E '^[a-z0-9_]+:' | sed -E 's/:.*//' | sort -u)"
while IFS= read -r line; do
  [[ -z "$line" ]] && continue
  type="${line%%:*}"
  tier="$(echo "$line" | sed -E 's/^[^:]+:[[:space:]]*([a-z_]+).*/\1/')"
  [[ "$tier" == "safe" ]] || continue
  comment="${line#*#}"
  if printf '%s' "$comment" | grep -qE 'gcp-cost:|apply-verified'; then
    continue
  fi
  printf '%s\n' "$debt_types" | grep -qxF "$type" && continue
  if printf '%s' "$comment" | grep -qE 'billing-behavior:'; then
    case "$type" in
      *_iam_member|*_iam_binding|*_iam_policy) continue ;;
    esac
    fail "cost-comment gate: safe type '$type' uses billing-behavior: without gcp-cost: — call gcp-cost MCP (list_skus/get_sku_price), record SKU/price (or 'no Cloud Billing Catalog SKU' after MCP lookup), or list in $comment_debt with reason"
  fi
  fail "cost-comment gate: safe type '$type' lacks gcp-cost MCP basis in $denylist comment — call gcp-cost MCP (list_skus/get_sku_price) in the agent session, record SKU/price in the comment, or add billing-behavior: for IAM adjuncts, or list in $comment_debt with reason"
done < <(grep -vE '^[[:space:]]*#|^safe_exception:' "$denylist" | grep -E ': *safe([[:space:]]|$)')
# Stale debt: remove lines when the denylist comment gains a basis marker.
while IFS= read -r type; do
  [[ -z "$type" ]] && continue
  line="$(grep -E "^${type}:[[:space:]]*safe" "$denylist" | head -1 || true)"
  [[ -n "$line" ]] || continue
  comment="${line#*#}"
  if printf '%s' "$comment" | grep -qE 'gcp-cost:|apply-verified'; then
    fail "cost-comment debt stale: '$type' now has a basis marker in $denylist — remove its line from $comment_debt"
  fi
done <<< "$debt_types"

# 14. Wave skiplist gate: a wave/* PR that touches a skip-listed example
#     used to stall WIP-1 forever (#296, 2026-07). Fail this required CI
#     check instead so the shipper enters Repair (un-skip or drop the
#     example) rather than no-op.
head_ref="${GITHUB_HEAD_REF:-}"
if [[ -z "$head_ref" ]]; then
  head_ref="$(git rev-parse --abbrev-ref HEAD 2>/dev/null || true)"
fi
if [[ "$head_ref" == wave/* ]]; then
  base_sha="${GITHUB_BASE_SHA:-}"
  if [[ -z "$base_sha" ]]; then
    if git rev-parse --verify origin/main >/dev/null 2>&1; then
      base_sha="$(git merge-base HEAD origin/main)"
    else
      base_sha="$(git merge-base HEAD main 2>/dev/null || echo HEAD)"
    fi
  fi
  git diff --name-only "${base_sha}...HEAD" \
    | dart tool/check_wave_skiplist_gate.dart --head-ref "$head_ref" \
    || fail "wave skiplist gate failed — see message above"
fi

echo "apply_smoke_test: OK"
