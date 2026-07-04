#!/usr/bin/env bash
# gcp_cost_call.sh — call a gcp-cost MCP tool without an MCP host.
#
# Cursor Cloud Agents do not launch command-type MCP servers inside the VM
# (verified 2026-07-04: zero process traces across three probes, while a
# manual launch works end to end). MCP over stdio is plain line-delimited
# JSON-RPC, so this helper speaks it directly: initialize → initialized →
# tools/call, then extracts the result text. No node/npx dependency.
#
# The server starts via gcp-cost-mcp-wrapper.sh, which materializes the
# GOOGLE_APPLICATION_CREDENTIALS secret (inline JSON) into a file for ADC —
# the same auth chain local IDE setups use.
#
# Usage:
#   tool/gcp_cost_call.sh --list
#   tool/gcp_cost_call.sh <tool_name> '<json_arguments>'
#
# Examples:
#   tool/gcp_cost_call.sh list_services '{"name":"Cloud Run"}'
#   tool/gcp_cost_call.sh get_estimation_guide '{"service_name":"Cloud Tasks"}'
#   tool/gcp_cost_call.sh list_skus '{"service_id":"152E-C115-5142","region":"us-central1","keyword":"CPU"}'
#   tool/gcp_cost_call.sh get_sku_price '{"sku_id":"XXXX-YYYY-ZZZZ"}'
set -euo pipefail

readonly WRAPPER="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/gcp-cost-mcp-wrapper.sh"

if [[ "${1:-}" == "--list" ]]; then
  METHOD='{"jsonrpc":"2.0","id":2,"method":"tools/list"}'
elif [[ $# -ge 1 ]]; then
  TOOL="$1"
  ARGS_JSON="${2:-{\}}"
  # Validate the arguments are real JSON before sending them anywhere.
  printf '%s' "$ARGS_JSON" | python3 -c 'import json,sys; json.load(sys.stdin)' \
    || { echo "gcp_cost_call: second argument must be a JSON object" >&2; exit 2; }
  METHOD=$(python3 - "$TOOL" "$ARGS_JSON" <<'EOF'
import json, sys
print(json.dumps({
    "jsonrpc": "2.0", "id": 2, "method": "tools/call",
    "params": {"name": sys.argv[1], "arguments": json.loads(sys.argv[2])},
}))
EOF
)
else
  echo "usage: $0 --list | $0 <tool_name> '<json_arguments>'" >&2
  exit 2
fi

printf '%s\n%s\n%s\n' \
  '{"jsonrpc":"2.0","id":1,"method":"initialize","params":{"protocolVersion":"2024-11-05","capabilities":{},"clientInfo":{"name":"terradart-gcp-cost-call","version":"1.0"}}}' \
  '{"jsonrpc":"2.0","method":"notifications/initialized"}' \
  "$METHOD" \
  | bash "$WRAPPER" 2>/dev/null \
  | python3 -c '
import json, sys
for line in sys.stdin:
    line = line.strip()
    if not line:
        continue
    msg = json.loads(line)
    if msg.get("id") != 2:
        continue
    if "error" in msg:
        print(json.dumps(msg["error"], indent=2))
        sys.exit(1)
    result = msg.get("result", {})
    content = result.get("content")
    if content:  # tools/call: unwrap the text payload
        for part in content:
            print(part.get("text", ""))
        sys.exit(1 if result.get("isError") else 0)
    print(json.dumps(result, indent=2))  # tools/list
    sys.exit(0)
print("gcp_cost_call: no response with id=2 from the server", file=sys.stderr)
sys.exit(1)
'
