---
name: terradart-backfill-examples
description: Backfill example quickstarts for curated factories listed in tool/example_debt.yaml — extend stacks, sync debt, and run terraform validate locally before PR.
metadata:
  last_modified: 2026-06-09
---
# Backfill example coverage

Read [`CONTEXT.md`](../../../CONTEXT.md) for vocabulary. Wave policy lives in [`AGENTS.md`](../../../AGENTS.md) and [`terradart-ship-wave`](../terradart-ship-wave/SKILL.md). This skill covers **pre-existing catalog gaps** — factories already curated but not yet in any quickstart synth output.

## When to use

- Shrinking `tool/example_debt.yaml` (explicit backfill PRs).
- After a Wave lands factories in examples, but older debt remains.
- When CI `terraform validate` fails on an example you extended.

## Workflow

**Task progress:**

- [ ] 1. **Pick targets** from `tool/example_debt.yaml`. Prefer extending the natural quickstart (Storage → `storage_quickstart`, Compute LB → `compute_lb_quickstart`) over inventing a new example.
- [ ] 2. **Extend `lib/main.dart`** with minimal, self-contained resources that demonstrate real constructor patterns (refs to siblings in the same stack).
- [ ] 3. **Apply pitfall checklist** (below) before committing.
- [ ] 4. **Sensitive / variable fields** — use `TfArg.variable('name')` in the stack and declare the variable in `bin/infra.dart` via `tf-out/variables.tf.json` (see existing `cloud_sql_quickstart`, `firebase_app_check_quickstart`, `compute_lb_quickstart`).
- [ ] 5. **Remove covered lines** from `tool/example_debt.yaml`. Keep reasoned deferrals only (org/folder scope, `iam-adjunct-debt:` for binding/policy when sibling member is in synth, etc.).
- [ ] 6. **Tighten topology** — wire must-reference factories into siblings; see [`terradart-tighten-example-topology`](../terradart-tighten-example-topology/SKILL.md).
- [ ] 7. **Verify** — from repo root:
  ```bash
  dart tool/check_example_topology.dart   # unwired SSL cert / health check / HTTP proxy
  dart tool/check_docs_consistency.dart   # synth coverage + terraform validate all quickstarts
  tool/agent_verify.sh
  ```
- [ ] 8. No version bump or catalog count change unless you also curated new factories.

## Pitfall checklist (repeat mistakes)

| Mistake | Correct pattern |
|---------|-----------------|
| Flat map keys copied from a **different** resource's docs (e.g. `bigquery_dataset: {dataset: ...}` on `listing_subscription`) | Read the **target resource's** Terraform schema nested blocks. Run `terraform validate` on the example. |
| `destination_dataset` on Analytics Hub listing subscription | `location` + `dataset_reference` list with `dataset_id` / `project_id` — not a `dataset` URL string. |
| Sensitive provider fields with `TfArg.literal` (including `certificate` / `private_key` on `google_compute_ssl_certificate`) | `TfArg.variable` + `variables.tf.json` in `bin/infra.dart`. Synth fails at encode time if you use literals on sensitive paths. |
| GCS notification `topic` as bare topic name | Full path: `TfArg.ref(topic.id)` on a sibling `GooglePubsubTopic`. |
| Eventarc / workflow destinations as nested objects when schema expects a map | Match provider schema literally; validate early. |
| Forgetting to remove `example_debt.yaml` entry after coverage | `check_docs_consistency` fails on stale debt lines. |

## Schema probe (when unsure)

```bash
cd examples/<slug>_quickstart
GCP_PROJECT_ID=ci-test-project-id dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```

`tool/example_synth_gates.dart` (via `check_docs_consistency.dart`) now runs this validate step for **every** quickstart when `terraform` is on `PATH`.

## What this does not cover

- Curating **new** `google_*` factories — use [`terradart-add-curated-resource`](../terradart-add-curated-resource/SKILL.md).
- Live `terraform apply` or `apply-smoke` — label-gated CI only when needed.
