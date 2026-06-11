---
name: terradart-tighten-example-topology
description: After example backfill, wire orphan factories into sibling refs (SSL certs on proxies, health checks on backends) and run topology + terraform validate gates.
metadata:
  last_modified: 2026-06-09
---
# Tighten example topology

Use after [`terradart-backfill-examples`](../terradart-backfill-examples/SKILL.md) when a quickstart gained **coverage-only** resources that synth + validate but are not linked into the stack.

## When to use

- Reviewer or agent notices factories that "exist only to appear in synth output."
- `dart tool/check_example_topology.dart` reports unwired **must-reference** types on a strict quickstart.
- Before merging a large example extension (especially `compute_lb_quickstart`).

## Workflow

- [ ] 1. **Identify orphans** — resources with no incoming `TfArg.ref` / `dependsOn` from siblings. Natural **leaf** nodes (forwarding rules, IAM members, one-shot jobs, firewalls) do not need incoming refs.
- [ ] 2. **Wire must-reference types** (common cases):

  | Factory type | Wire into |
  |--------------|-----------|
  | `GoogleComputeSslCertificate` | `sslCertificates` on `GoogleComputeTargetSslProxy` / `GoogleComputeTargetHttpsProxy` |
  | `GoogleComputeRegionSslCertificate` | `sslCertificates` on `GoogleComputeRegionTargetHttpsProxy` |
  | `GoogleComputeRegionHealthCheck` | `healthChecks` on `GoogleComputeRegionBackendService` |
  | `GoogleComputeTargetHttpProxy` | `target` on `GoogleComputeGlobalForwardingRule` (port 80) |
  | `GoogleComputeRegionTargetHttpProxy` | `target` on `GoogleComputeForwardingRule` (regional ILB) |

- [ ] 3. **Reorder** `add(...)` blocks so referenced resources are created before consumers; capture `final x = add(...)` when later siblings need `TfArg.ref(x.*)`.
- [ ] 4. **Sensitive fields** — keep `TfArg.variable` + `variables.tf.json` (see backfill skill).
- [ ] 5. **Register strict quickstarts** — add slug to `strict:` in `tool/example_topology_allowlist.yaml` when the example should enforce must-reference rules in CI.
- [ ] 6. **Verify**:
  ```bash
  dart tool/check_example_topology.dart
  dart tool/check_docs_consistency.dart
  tool/agent_verify.sh
  ```

## Automation

`tool/check_example_topology.dart` scans synth JSON for Terraform types listed under `must_be_referenced` in `tool/example_topology_allowlist.yaml`. If the resource address appears only once, the quickstart is **unwired**.

- Quickstarts under `strict:` **fail** the check.
- Others print hints only (expand `strict` as examples are tightened).

This does **not** replace `terraform validate` (schema shape) or full CI matrix fan-out.

## Related

- [`terradart-backfill-examples`](../terradart-backfill-examples/SKILL.md) — initial coverage + debt removal
- [`terradart-agent-verify`](../terradart-agent-verify/SKILL.md) — shared done gate
