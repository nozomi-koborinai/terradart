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

- [ ] 1. **Confirm the type** exists in `schema.json`. Note the exact `google_*` key (do not infer from MM product file names).
- [ ] 2. **Manifest:** add or update **one** row in `tool/mm_yaml_sources.yaml` (`upstream` path or `null` with reason). Every curated override must have a manifest entry.
- [ ] 3. **MM fixture (when `upstream` is set):** run `dart tool/sync_mm_yaml.dart` for that type only if you intend to consume new MM hints in this PR.
- [ ] 4. **New resource only:** scaffold with `terradart wrap-init` (skip when editing an existing override).
- [ ] 5. **Edit** `packages/terradart_codegen/lib/src/codegen/wrapper_overrides/yaml/<terraform_type>.yaml` — keep it thin (human API decisions only).
- [ ] 6. **Lint:** `cd packages/terradart_codegen && dart run bin/terradart.dart lint-override` (must exit 0).
- [ ] 7. **Regenerate:** `dart run bin/terradart.dart wrap --only <terraform_type> ...` then full `wrap --check` against the fixture paths in `AGENTS.md` **Useful Commands**.
- [ ] 8. **Review** the generated `terradart_google` diff (constructors, enums, sealed types, sensitive fields, barrel export).
- [ ] 9. **Counts:** if catalog size changed, update `tool/doc_expectations.dart`, `catalog_count_test.dart`, and `wrap_command_test.dart` file-count assertions in the same PR.
- [ ] 10. **Verify:** run the [`terradart-agent-verify`](../terradart-agent-verify/SKILL.md) workflow (`tool/agent_verify.sh`; add `--maintainer` when touching wrap-init / wrap-promote).

## Override checklist

- Omit `paramOrder` / `requiredParams` unless intentionally deviating from schema defaults.
- Turn on `deriveEnums` / `deriveOutputGetters` instead of hand-writing what derivation produces.
- Keep sealed types in `prelude`; do not generate them.
- No dead derivation config: `deriveClassDoc: true` must not also set `classDocComment`; `curatedDoc` only under `deriveClassDoc: true`.
- `wrap --only <type>` does not regenerate unrelated factories.

## Verification

```bash
cd packages/terradart_codegen && dart run bin/terradart.dart wrap \
  --provider hashicorp/google \
  --source test/fixtures/wrap/source \
  --output ../terradart_google/lib/src \
  --check
```

Then from repo root: `tool/agent_verify.sh` (and `--maintainer` when applicable).
