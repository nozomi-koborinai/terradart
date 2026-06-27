#!/usr/bin/env bash
# Cost-classification helpers shared by apply_smoke.sh (runtime gate) and
# apply_smoke_test.sh (CI gate). Source this file; it defines functions only.

# Resource-type name fragments that imply existence/hourly billing. A `safe`
# classification matching this is almost certainly a mis-classification (the
# License Manager gap). Used by the sanity check; false positives are handled
# by an explicit exception list in the denylist (see test12).
COST_DANGER_RE='(license|reservation|commitment|_instance|cluster|node_pool|environment|_endpoint)'

# Echo the tier (safe|sweep_only|never_apply) for a terraform type, or empty
# if the type is absent from the denylist (= unclassified).
cost_tier_of() {
  local type="$1" denylist="$2"
  grep -vE '^[[:space:]]*#' "$denylist" 2>/dev/null \
    | grep -E "^${type}:[[:space:]]" \
    | head -1 \
    | sed -E 's/^[^:]+:[[:space:]]*([a-z_]+).*/\1/'
}

# Exit 0 if the type name matches the danger pattern.
cost_is_dangerous_type() {
  [[ "$1" =~ $COST_DANGER_RE ]]
}
