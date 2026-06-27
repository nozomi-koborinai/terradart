#!/usr/bin/env bash
# Maintainer/agent helper: look up Cloud Billing Catalog SKUs via gcp-cost MCP
# and print a denylist comment snippet for tool/apply_cost_denylist.yaml.
#
# Usage:
#   tool/agent_cost_classify.sh <terraform_type> [service_display_name]
#
# Examples:
#   tool/agent_cost_classify.sh google_storage_bucket "Cloud Storage"
#   tool/agent_cost_classify.sh google_dataplex_zone Dataplex
#
# Requires: gcp-cost-mcp-server on PATH, GOOGLE_APPLICATION_CREDENTIALS (or
# Cursor Secret JSON inline — see tool/gcp-cost-mcp-wrapper.sh).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

if [[ $# -lt 1 ]]; then
  sed -n '2,14p' "$0"
  exit 64
fi

TYPE="$1"
SERVICE_QUERY="${2:-}"

export ROOT

if ! command -v gcp-cost-mcp-server >/dev/null 2>&1; then
  echo "agent_cost_classify: gcp-cost-mcp-server not on PATH (see .cursor/install.sh)" >&2
  exit 69
fi

if [[ -z "${GOOGLE_APPLICATION_CREDENTIALS:-}" ]]; then
  echo "agent_cost_classify: GOOGLE_APPLICATION_CREDENTIALS is unset — register the gcp-cost SA JSON as a Cursor Secret" >&2
  exit 69
fi

python3 - "$TYPE" "$SERVICE_QUERY" "$ROOT" <<'PY'
import json, os, re, subprocess, sys

tf_type = sys.argv[1]
service_query = sys.argv[2]
root = sys.argv[3]

proc = subprocess.Popen(
    ["bash", os.path.join(root, "tool/gcp-cost-mcp-wrapper.sh")],
    stdin=subprocess.PIPE,
    stdout=subprocess.PIPE,
    stderr=subprocess.PIPE,
    text=True,
    cwd=os.environ["ROOT"],
)

def send(msg):
    proc.stdin.write(json.dumps(msg) + "\n")
    proc.stdin.flush()

def read_line():
    line = proc.stdout.readline()
    return json.loads(line) if line.strip() else None

send({
    "jsonrpc": "2.0",
    "id": 1,
    "method": "initialize",
    "params": {
        "protocolVersion": "2024-11-05",
        "capabilities": {},
        "clientInfo": {"name": "agent_cost_classify", "version": "1.0"},
    },
})
read_line()
send({"jsonrpc": "2.0", "method": "notifications/initialized", "params": {}})

send({"jsonrpc": "2.0", "id": 2, "method": "tools/call", "params": {"name": "list_services", "arguments": {}}})
resp = read_line()
text = resp["result"]["content"][0]["text"]

service_id = None
if service_query:
    pat = re.escape(service_query)
    m = re.search(rf"display_name:({pat}[^]]*) service_id:([0-9A-F-]+)", text)
    if m:
        service_id = m.group(2)
        print(f"# service: {m.group(1).strip()} ({service_id})")
if not service_id:
  # Heuristic from tf type: google_foo_bar -> Foo
  parts = tf_type.removeprefix("google_").split("_")
  guess = " ".join(p.capitalize() for p in parts[:2])
  m = re.search(rf"display_name:({re.escape(guess)}[^]]*) service_id:([0-9A-F-]+)", text, re.I)
  if m:
    service_id = m.group(2)
    print(f"# guessed service: {m.group(1).strip()} ({service_id})")

if not service_id:
    print(f"agent_cost_classify: could not resolve Billing Catalog service for {tf_type!r}", file=sys.stderr)
    print("# Fallback: document billing-behavior: (destroy stops charge? existence-billed?) from Terraform docs", file=sys.stderr)
    proc.terminate()
    sys.exit(1)

send({
    "jsonrpc": "2.0",
    "id": 3,
    "method": "tools/call",
    "params": {"name": "list_skus", "arguments": {"service_id": service_id}},
})
resp = read_line()
sku_text = resp["result"]["content"][0]["text"]
skus = re.findall(r"display_name:([^]]+) sku_id:([0-9A-F-]+)", sku_text)
print(f"# list_skus returned {len(skus)} SKUs — pick a region-relevant line and run get_sku_price")
for name, sid in skus[:8]:
    send({
        "jsonrpc": "2.0",
        "id": 4,
        "method": "tools/call",
        "params": {"name": "get_sku_price", "arguments": {"sku_id": sid}},
    })
    price_resp = read_line()
    price_text = price_resp["result"]["content"][0]["text"]
    unit_m = re.search(r"unit:([^ ]+)", price_text)
    price_m = re.search(r"price_per_unit:([0-9.]+)", price_text)
    unit = unit_m.group(1) if unit_m else "?"
    price = price_m.group(1) if price_m else "?"
    print(f"#   {name.strip()} SKU {sid} ~${price}/{unit}")
    break  # one sample price is enough for the snippet

print()
print(f"# Paste into tool/apply_cost_denylist.yaml (adjust tier + wording):")
print(f"{tf_type}: safe  # gcp-cost: <service> SKU <id> ~$<price>/<unit>; billing-behavior: <destroy stops charge?>")
proc.terminate()
PY
