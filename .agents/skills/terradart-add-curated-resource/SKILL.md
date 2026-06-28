---
name: terradart-add-curated-resource
description: Add or update a curated Google Cloud factory via terradart wrap (schema.json, optional MM YAML, wrapper override, lint, regenerate). Use when extending terradart_google with a new google_* resource.
metadata:
  last_modified: 2026-06-09
---
# Add or update a curated Google resource

Read [`CONTEXT.md`](../../../CONTEXT.md) for vocabulary. Generation policy and pitfalls are in [`AGENTS.md`](../../../AGENTS.md). Do **not** hand-edit files under `packages/terradart_google/lib/src/` — regenerate with `terradart wrap`.

## Contents

- [Inputs](#inputs)
- [Workflow](#workflow)
- [Override checklist](#override-checklist)
- [Verification](#verification)

## Inputs

- `schema.json` with the target Terraform type (checked-in fixture or task-provided artifact).
- Optional Magic Modules YAML when semantic hints help (see `tool/mm_yaml_sources.yaml`).
- Do **not** fetch schemas ad hoc or assume `terraform` is installed in cloud-agent VMs unless the task provides it.

## Workflow

**Task progress:**

- [ ] 1. **Confirm the type** exists in `schema.json`. Note the exact `google_*` key (do not infer from MM product file names). For IAM adjuncts, curate `*_iam_member` only — `*_iam_binding` / `*_iam_policy` are authoritative and land only on an explicit maintainer decision (allowlist-gated in `yaml_loader_test.dart`).
- [ ] 2. **Manifest:** add or update **one** row in `tool/mm_yaml_sources.yaml` (`upstream` path or `null` with reason). Every curated override must have a manifest entry.
- [ ] 3. **MM fixture (when `upstream` is set):** run `dart tool/sync_mm_yaml.dart` for that type only if you intend to consume new MM hints in this PR.
- [ ] 4. **New resource only:** scaffold with `terradart wrap-init` (skip when editing an existing override).
- [ ] 5. **Edit** `packages/terradart_codegen/lib/src/codegen/wrapper_overrides/yaml/<terraform_type>.yaml` — keep it thin (human API decisions only).
- [ ] 6. **Lint:** `cd packages/terradart_codegen && dart run bin/terradart.dart lint-override` (must exit 0).
- [ ] 7. **Regenerate:** `dart run bin/terradart.dart wrap --only <terraform_type> ...` then full `wrap --check` against the fixture paths in `AGENTS.md` **Useful Commands**.
- [ ] 8. **Review** the generated `terradart_google` diff (constructors, enums, sealed types, sensitive fields, barrel export).
- [ ] 9. **Counts:** if catalog size changed, update `tool/doc_expectations.dart`, `catalog_count_test.dart`, and `wrap_command_test.dart` file-count assertions in the same PR.
- [ ] 10. **Wave / example:** if this resource is part of a Wave release, follow [`terradart-ship-wave`](../terradart-ship-wave/SKILL.md) — add or extend a quickstart and README Examples; `curatedDoc` alone is not enough.
- [ ] 10b. **Cost-classify (mandatory — do not skip):** every Terraform type in the example synth output (including dependencies like `google_storage_bucket`). **Before** editing `tool/apply_cost_denylist.yaml`, call gcp-cost MCP: `list_services` → `list_skus` → `get_sku_price`. Record `gcp-cost: SKU …` (or `gcp-cost: no Cloud Billing Catalog SKU` after MCP lookup) plus `billing-behavior:` in the comment. `billing-behavior:` alone is **only** valid for `*_iam_member` / `*_iam_binding` / `*_iam_policy`. Hourly-billed types (e.g. VPN tunnel) → `sweep_only`, not `safe`. When unsure, leave unclassified (default-deny). CI test 13 rejects hand-wavy `safe` comments.
- [ ] 11. **Verify:** run the [`terradart-agent-verify`](../terradart-agent-verify/SKILL.md) workflow (`tool/agent_verify.sh`; add `--maintainer` when touching wrap-init / wrap-promote).

## Override checklist

- Omit `paramOrder` / `requiredParams` unless intentionally deviating from schema defaults.
- Turn on `deriveEnums` / `deriveOutputGetters` instead of hand-writing what derivation produces.
- Keep sealed types in `prelude`; do not generate them.
- No dead derivation config: `deriveClassDoc: true` must not also set `classDocComment`; `curatedDoc` only under `deriveClassDoc: true`.
- `wrap --only <type>` does not regenerate unrelated factories.
- **Every `customSlots` key must also appear in `paramOrder`** (and `argMapOrder` when set). The emitter silently skips unlisted slots, so the parameter never reaches the constructor while `wrap --check` stays green. `lint-override`'s `custom-slot-*` rules catch it, but list it the first time (see `google_cloud_scheduler_job.yaml` → `target`).
- **Outputs need their gating inputs.** Before relying on a derived output getter, curate the input that enables it (`auth_string` ← `auth_enabled`, `server_ca_certs` ← `transit_encryption_mode`, `read_endpoint` ← `replica_count` + `read_replicas_mode`). A getter whose enabling input is uncurated is dead API.
- **`deletion_protection` parity.** If the schema has a `deletion_protection` attribute and you write an explicit `paramOrder`, include it (enforced by `deletion_protection_parity_test`); otherwise users have no way to set the flag.
- **Never write `upstream: null # handwritten` without checking the MM fingerprint.** `effective_labels` / `terraform_labels`, or attribute docs ending in `Default value: … Possible values: […]`, mean the resource is Magic-Modules-generated and has an `mmv1/products/<product>/<Resource>.yaml` upstream. A wrong `null` silently disables enum-drift checks; verify with `dart tool/check_mm_upstream_fingerprint.dart` (Wave 32 mislabeled `google_redis_instance` this way).

## Exactly-one blocks (`exactly_one_of`)

When the synced MM fixture (`test/fixtures/wrap/source/mm/<type>.yaml`) declares a **top-level** `exactly_one_of` group (sibling nested blocks such as `oidc` / `aws` / `saml` / `x509`):

1. **Do not** model each member as a separate optional `customSlot` (doc-only “pick exactly one” is not enough — compile time must enforce it).
2. **Do** add a `sealed class` hierarchy in `prelude` (one `final class` per member, each with `blockKey` + `encode()`).
3. **Do** add one **required** virtual `customSlot` (e.g. `trust_source`, `target`, `recurrence`) whose `argMapEntry` uses `slot.blockKey: TfArg.literal(slot.encode())`.
4. **Do** list only the virtual slot in `paramOrder` — omit the IR nested-block names the virtual slot replaces.
5. Run `terradart lint-override` — rule `exactly-one-optional-fanout` catches the anti-pattern.

**Reference overrides:** `google_cloud_scheduler_job.yaml`, `google_firestore_backup_schedule.yaml`, `google_iam_workload_identity_pool_provider.yaml`, `google_storage_bucket_object.yaml`.

Optional: `terradart wrap-promote <type>` can scaffold sealed skeletons from MM `exactly_one_of`; still requires human review of `encode()` bodies.

## Verification

```bash
cd packages/terradart_codegen && dart run bin/terradart.dart wrap \
  --provider hashicorp/google \
  --source test/fixtures/wrap/source \
  --output ../terradart_google/lib/src \
  --check
```

Then from repo root: `tool/agent_verify.sh` (and `--maintainer` when applicable).
