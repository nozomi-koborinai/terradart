#!/usr/bin/env bash
# Example-selection helper for skip-list / cost-gate tests.
#
# Live terraform apply/destroy against terradart-validate is RETIRED.
# The only supported mode is --dry-run (print selected slugs and exit).
#
# Modes:
#   (default)         select examples changed vs GITHUB_BASE_SHA/origin/main
#   --all             select every examples/*_quickstart
#   --example <slug>  select exactly one
#   --destroy-only    kept for flag compatibility; refused unless --dry-run
#   --dry-run         print the selected slugs and exit (no terraform, no GCP)
set -uo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
. tool/apply_cost_lib.sh
COST_DENYLIST="tool/apply_cost_denylist.yaml"

MODE="changed"
EXPLICIT_EXAMPLE=""
DRY_RUN=0
DESTROY_ONLY=0
while [[ $# -gt 0 ]]; do
  case "$1" in
    --all) MODE="all"; shift ;;
    --example) MODE="example"; EXPLICIT_EXAMPLE="$2"; shift 2 ;;
    --dry-run) DRY_RUN=1; shift ;;
    --destroy-only) DESTROY_ONLY=1; shift ;;
    -h | --help)
      sed -n '2,12p' "$0"
      exit 0
      ;;
    *)
      echo "apply_smoke.sh: unknown argument: $1" >&2
      exit 64
      ;;
  esac
done

if [[ "$DRY_RUN" != "1" ]]; then
  echo "apply_smoke.sh: live terraform apply/destroy against GCP is retired." >&2
  echo "use --dry-run for selection; example verification is synth + terraform validate." >&2
  exit 78
fi

STATE_BUCKET="${TF_STATE_BUCKET:-terradart-validate-tfstate}"

# --- select examples -------------------------------------------------------
select_examples() {
  case "$MODE" in
    example) printf '%s\n' "$EXPLICIT_EXAMPLE" ;;
    all) for d in examples/*_quickstart/; do basename "$d"; done | sort ;;
    changed)
      # Only infra sources (bin/lib) — pubspec/README/analysis_options bumps must
      # not fan out apply-smoke to every quickstart on a Wave version bump.
      # grep + cut, NOT awk: awk's literal-regex /…[^/]…/ breaks on the embedded
      # slash (BSD errors "nonterminated character class"; gawk silently matches
      # every line → full fan-out, which shipped pubspec bumps to all examples).
      git diff --name-only "${GITHUB_BASE_SHA:-origin/main}" HEAD -- 'examples/' 2>/dev/null \
        | grep -E '^examples/[^/]+_quickstart/(bin|lib)/' \
        | cut -d/ -f2 | sort -u
      ;;
  esac
}

# Collect into an array without `mapfile` (absent on macOS bash 3.2).
SELECTED=()
while IFS= read -r _slug; do
  [[ -n "$_slug" ]] && SELECTED+=("$_slug")
done < <(select_examples)

# --- skip-list -------------------------------------------------------------
# Examples that can't `terraform apply` against terradart-validate (org-only
# resources, external secrets/certs, Firebase registration, source artifacts)
# are recorded in tool/apply_smoke_skip.yaml. Honor it in apply modes (--all
# and the PR change-gate) but NOT for an explicit `--example` (override) or
# `--destroy-only` (the janitor must reclaim any leftover state).
SKIP_FILE="tool/apply_smoke_skip.yaml"
is_skipped() {
  [[ -f "$SKIP_FILE" ]] || return 1
  grep -qE "^$1:[[:space:]]" "$SKIP_FILE"
}
skip_reason() { grep -E "^$1:[[:space:]]" "$SKIP_FILE" | head -1 | sed -E 's/^[^:]+:[[:space:]]*//'; }

# PR-only skip: high-cost examples (GKE, Compute VMs) the per-PR change-gate
# defers to the full sweep to keep per-PR apply cost down. Honored ONLY in
# `changed` mode — `--all` (sweep), `--example` (override), and `--destroy-only`
# (janitor) all apply them. See tool/apply_smoke_pr_skip.yaml.
PR_SKIP_FILE="tool/apply_smoke_pr_skip.yaml"
is_pr_skipped() {
  [[ -f "$PR_SKIP_FILE" ]] || return 1
  grep -qE "^$1:[[:space:]]" "$PR_SKIP_FILE"
}
pr_skip_reason() { grep -E "^$1:[[:space:]]" "$PR_SKIP_FILE" | head -1 | sed -E 's/^[^:]+:[[:space:]]*//'; }

# Reason string for a skipped slug, whichever list deferred it.
reason_for() {
  if is_skipped "$1"; then skip_reason "$1"; else pr_skip_reason "$1"; fi
}

HONOR_SKIP=1
[[ "$DESTROY_ONLY" == "1" || "$MODE" == "example" ]] && HONOR_SKIP=0
# The PR-only skip applies to the change-gate (changed mode) alone.
HONOR_PR_SKIP=0
[[ "$MODE" == "changed" ]] && HONOR_PR_SKIP=1

EXAMPLES=()
SKIPPED=()
# bash 3.2 + `set -u`: expanding "${arr[@]}" on an empty array errors, so guard
# every array iteration with a length check.
if [[ ${#SELECTED[@]} -gt 0 ]]; then
  for _slug in "${SELECTED[@]}"; do
    if [[ "$HONOR_SKIP" == "1" ]] && is_skipped "$_slug"; then
      SKIPPED+=("$_slug")
    elif [[ "$HONOR_PR_SKIP" == "1" ]] && is_pr_skipped "$_slug"; then
      SKIPPED+=("$_slug")
    else
      EXAMPLES+=("$_slug")
    fi
  done
fi

# --- dry-run: print the apply set (post-skip) and stop --------------------
if [[ "$DRY_RUN" == "1" ]]; then
  [[ ${#EXAMPLES[@]} -gt 0 ]] && printf '%s\n' "${EXAMPLES[@]}"
  if [[ ${#SKIPPED[@]} -gt 0 ]]; then
    for _s in "${SKIPPED[@]}"; do echo "skip $_s ($(reason_for "$_s"))" >&2; done
  fi
  exit 0
fi

if [[ ${#SKIPPED[@]} -gt 0 ]]; then
  for _s in "${SKIPPED[@]}"; do echo ">> skip $_s ($(reason_for "$_s"))"; done
fi

if [[ ${#EXAMPLES[@]} -eq 0 ]]; then
  echo "apply_smoke.sh: no examples to apply — skip"
  exit 0
fi

PROJECT_ID="${GCP_PROJECT_ID:-${GCP_VALIDATE_PROJECT_ID:-}}"
if [[ -z "$PROJECT_ID" ]]; then
  echo "apply_smoke.sh: set GCP_PROJECT_ID or GCP_VALIDATE_PROJECT_ID" >&2
  exit 64
fi
export GCP_PROJECT_ID="$PROJECT_ID"
export DB_PASSWORD="${DB_PASSWORD:-apply-smoke-placeholder}"

dart pub get

# --- terraform APPLY with stale-lock recovery (teardown uses tf_destroy) ---
# A killed apply-smoke run (e.g. GitHub's cancel-in-progress when a PR is
# re-pushed) leaves the GCS backend lock held; the next run then dies with
# "Error acquiring the state lock". Run terraform, and on THAT error force-
# unlock the reported lock id and retry once — but only when the lock is
# demonstrably old (created > 15 min ago), so a genuinely live concurrent run
# (another PR, or the weekly sweep, on the same slug) is never stolen. When the
# lock age can't be determined (no GNU `date`), treat it as stale. Output is
# streamed via `tee` so CI logs stay live while we capture it to parse the id.
tf_lockaware() {
  local out rc id created lock_epoch now_epoch age
  out="$(terraform "$@" 2>&1 | tee /dev/stderr)"
  rc=$?
  (( rc == 0 )) && return 0
  grep -q 'Error acquiring the state lock' <<<"$out" || return "$rc"
  id="$(grep -oE 'ID:[[:space:]]+[0-9]+' <<<"$out" | grep -oE '[0-9]+' | head -1)"
  [[ -n "$id" ]] || return "$rc"
  created="$(grep -oE 'Created:[[:space:]]+[0-9].*UTC' <<<"$out" | head -1 | sed -E 's/^Created:[[:space:]]+//; s/ UTC$//')"
  lock_epoch="$(date -u -d "$created" +%s 2>/dev/null || echo 0)"
  now_epoch="$(date -u +%s)"
  age=$(( now_epoch - lock_epoch ))
  if [[ "$lock_epoch" != "0" && $age -lt 900 ]]; then
    echo "  !! state lock $id is only ${age}s old — assuming a live run; NOT force-unlocking" >&2
    return "$rc"
  fi
  echo "  !! stale state lock $id (age ${age}s) — force-unlock + retry once" >&2
  terraform force-unlock -force "$id" >&2 || true
  terraform "$@"
}

# Teardown runs with -lock=false on purpose: apply-smoke processes slugs
# serially (no concurrent writer to guard), and a stale lock from a cancelled
# run — whose age is always < 15 min, so tf_lockaware treats it as "live" and
# refuses to break it — must never block reclaiming state. tf_lockaware above
# is therefore apply-only. State-UNtracked orphans (a killed apply mid-create,
# never written to state) still need a gcloud-based janitor (separate task).
tf_destroy() {
  terraform destroy -auto-approve -input=false -lock=false
}

# --- apply (or destroy-only) one example, with a GCS-backed state ----------
apply_one() {
  local slug="$1"
  local dir="examples/$slug"
  if [[ ! -f "$dir/bin/infra.dart" ]]; then
    echo "  skip $slug (no bin/infra.dart)"
    return 0
  fi
  (
    cd "$dir" || exit 1
    dart pub get || exit 1
    dart run bin/infra.dart || exit 1
    cd tf-out || exit 1
    # Runtime default-deny: after synth, inspect the freshly generated tf-out.
    # If any type is unclassified or never_apply (and this isn't an explicit
    # --example / --destroy-only), skip WITHOUT applying — the backstop for a
    # type that drifted in vs the committed tf-out the CI gate checked.
    if [[ "$DESTROY_ONLY" != "1" && "$MODE" != "example" && -f main.tf.json ]]; then
      blocked=""
      while IFS= read -r _t; do
        [[ -z "$_t" ]] && continue
        _tier="$(cost_tier_of "$_t" "$ROOT/$COST_DENYLIST")"
        if [[ -z "$_tier" || "$_tier" == "never_apply" ]]; then
          blocked="${blocked}${_t}(${_tier:-unclassified}) "
        fi
      done < <(jq -r '.resource // {} | keys[]' main.tf.json 2>/dev/null | sort -u)
      if [[ -n "$blocked" ]]; then
        echo "  >> COST-SKIP $slug — not applying: ${blocked}(classify in $COST_DENYLIST)" >&2
        echo "$slug: ${blocked}" >> "$COST_SKIP_FILE"
        exit 0
      fi
    fi
    # Placeholder for any input variable the synth references (`${var.X}`), so
    # `terraform -input=false` doesn't abort on "No value for required
    # variable". Examples needing a REAL secret / cert / org id still fail at
    # apply time — those are tracked as example issues, not a tool gap.
    for _v in $(grep -oE '\$\{var\.[a-zA-Z_][a-zA-Z0-9_]*\}' main.tf.json 2>/dev/null \
      | sed -E 's/^\$\{var\.//; s/\}$//' | sort -u); do
      export "TF_VAR_$_v"="apply-smoke-placeholder"
    done
    # Persist state in GCS so destroy can always reclaim (across runs / janitor).
    printf '{"terraform":{"backend":{"gcs":{"bucket":"%s","prefix":"apply-smoke/%s"}}}}\n' \
      "$STATE_BUCKET" "$slug" > backend.tf.json
    terraform init -input=false -reconfigure || exit 1
    if [[ "$DESTROY_ONLY" == "1" ]]; then
      tf_destroy
      exit $?
    fi
    # Apply, then ALWAYS tear down — capturing the apply result separately.
    # A teardown failure is surfaced LOUDLY and recorded, never swallowed: a
    # silently-failed destroy once left a running GKE cluster orphaned that
    # only a manual gcloud sweep caught. Recorded failures fail the run below.
    apply_rc=0
    apply_out=""
    apply_out="$(tf_lockaware apply -auto-approve -input=false 2>&1 | tee /dev/stderr)" || apply_rc=$?
    if [[ "$apply_rc" != "0" ]] && grep -qE 'already exists|AlreadyExists' <<<"$apply_out"; then
      echo "  !! apply hit alreadyExists — GCP resources likely orphaned outside state (e.g. a cancelled prior run); destroy can only remove resources tracked in state" >&2
    fi
    if ! tf_destroy; then
      echo "  !! teardown failed for $slug — retrying in 15s" >&2
      sleep 15
      if ! tf_destroy; then
        echo "  !! TEARDOWN FAILED for $slug after retry — ORPHAN RISK; a human maintainer reclaims" >&2
        echo "$slug" >> "$TEARDOWN_FAILS_FILE"
      fi
    fi
    exit "$apply_rc"
  )
}

# Records examples whose teardown failed (orphan risk) — appended from the
# apply_one subshell, read in the summary below.
TEARDOWN_FAILS_FILE="$(mktemp)"
# Records examples skipped by the runtime cost gate (unclassified/never_apply
# type in the freshly-synthed tf-out), reported in the summary below.
COST_SKIP_FILE="$(mktemp)"
export COST_SKIP_FILE

VERB="apply-smoke"
[[ "$DESTROY_ONLY" == "1" ]] && VERB="destroy-only"

FAILED=()
for slug in "${EXAMPLES[@]}"; do
  [[ -n "$slug" ]] || continue
  echo ">> $VERB: $slug"
  if apply_one "$slug"; then
    echo "  OK: $slug"
  else
    echo "  FAILED: $slug"
    FAILED+=("$slug")
    if [[ "$MODE" != "all" ]]; then
      echo "apply_smoke.sh: FAILED: ${FAILED[*]}" >&2
      exit 1
    fi
  fi
done

TEARDOWN_FAILS="$(tr '\n' ' ' < "$TEARDOWN_FAILS_FILE" 2>/dev/null)"
rm -f "$TEARDOWN_FAILS_FILE"
if [[ -n "${TEARDOWN_FAILS// /}" ]]; then
  echo "apply_smoke.sh: !! TEARDOWN FAILED (orphan risk): ${TEARDOWN_FAILS}— a human maintainer reclaims" >&2
fi
COST_SKIPS="$(tr '\n' ' ' < "$COST_SKIP_FILE" 2>/dev/null)"
rm -f "$COST_SKIP_FILE"
if [[ -n "${COST_SKIPS// /}" ]]; then
  echo "apply_smoke.sh: COST-SKIPPED (unclassified/never_apply types): ${COST_SKIPS}" >&2
fi

if [[ ${#FAILED[@]} -gt 0 ]]; then
  echo "apply_smoke.sh: ${#FAILED[@]} of ${#EXAMPLES[@]} FAILED: ${FAILED[*]}" >&2
  exit 1
fi
# A clean apply run with a failed teardown still fails — orphans must not pass silently.
if [[ -n "${TEARDOWN_FAILS// /}" ]]; then
  exit 1
fi
echo "apply_smoke.sh: OK (${#EXAMPLES[@]} example(s), $VERB)"
