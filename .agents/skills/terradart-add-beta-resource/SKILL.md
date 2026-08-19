---
name: terradart-add-beta-resource
description: Add a beta-only curated factory to terradart_google_beta (filtered-fixture extraction, google_beta override, wrap with provider pin). Use when extending the demand-driven google-beta catalog with a new beta-only google_* resource.
metadata:
  last_modified: 2026-08-19
---
# Add a beta-only curated resource

Read [`CONTEXT.md`](../../../CONTEXT.md) for vocabulary. The beta lane's coordinates live in [`tool/providers.yaml`](../../../tool/providers.yaml); its philosophy (demand-driven, filtered fixture, no backlog/wave lane) is in `AGENTS.md`'s Current-phase section. Do **not** hand-edit files under `packages/terradart_google_beta/lib/src/` or the `source_beta/` fixture — regenerate both.

The beta catalog is **demand-driven**: add a resource only against a concrete request (issue / maintainer ask), never by sweeping the provider. GA resources belong in `terradart_google` — check the GA schema fixture first; a resource present there is NOT beta-only.

## Workflow

**Task progress:**

- [ ] 1. **Confirm beta-only.** The type must be absent from the GA fixture (`packages/terradart_codegen/test/fixtures/wrap/source/schema.json`) and present in the google-beta provider. If it exists in GA, stop — curate it in `terradart_google` instead ([`terradart-add-curated-resource`](../terradart-add-curated-resource/SKILL.md)).
- [ ] 2. **Re-extract the fixture** with the new type APPENDED to the existing list (the fixture README records the current list — the extraction replaces the whole file, so dropping a name would silently shrink the catalog's schema):
  ```bash
  dart tool/extract_schema_subset.dart \
    --provider=hashicorp/google-beta --version=<provider_version.txt> \
    --resources=<existing,list,plus_new_type> \
    --out=packages/terradart_codegen/test/fixtures/wrap/source_beta
  ```
  Requires `terraform` on PATH and terraform-registry network access (no cloud credentials). If either is missing in your environment, stop and report — never hand-write schema JSON.
- [ ] 3. **Write the override** at `packages/terradart_codegen/lib/src/codegen/wrapper_overrides/google_beta/yaml/<type>.yaml`. Same axes and rules as GA overrides (Generation Policy binds you: thin overrides, human decisions only, IAM binding/policy `curatedDoc` authoritative-semantics rule). There is no MM enrichment on this lane (`mm: false`) — `deriveEnums` has nothing to derive; hand enums go in `prelude`.
- [ ] 4. **Barrels manifest:** if the override's `outputDir` introduces a new barrel, add it to `barrels_google_beta.yaml` with a `doc:` (fail-closed — wrap errors without it).
- [ ] 5. **Regenerate** (the `--resource-provider` pin is mandatory — beta shares the GA `google_*` type prefix):
  ```bash
  cd packages/terradart_codegen
  dart run bin/terradart.dart wrap \
    --provider hashicorp/google-beta \
    --source test/fixtures/wrap/source_beta \
    --output ../terradart_google_beta/lib/src \
    --overrides-root lib/src/codegen/wrapper_overrides/google_beta/yaml \
    --barrels-manifest lib/src/codegen/barrels/barrels_google_beta.yaml \
    --resource-provider google-beta
  ```
- [ ] 6. **Cost-classify the type** (policy, apply or not): gcp-cost tools (`dart tool/gcp_cost_call.dart` in cloud-agent sessions) → record evidence in `tool/apply_cost_denylist.yaml` per its header format. When unsure, leave unclassified and say so.
- [ ] 7. **Example coverage:** extend `examples/beta_service_identity_quickstart` (or a new beta example) so the factory appears in a synth, or record a reasoned `tool/example_debt.yaml` line. NOTE: the synth coverage gate currently reads only the GA catalog, so beta coverage is enforced by THIS checklist, not by machine — a beta coverage gate is future harness work; do not treat the gate's silence as permission to skip.
- [ ] 8. **Ledger check:** any new beta example must be listed in `tool/apply_smoke_skip.yaml` under the google-beta-lane section (beta apply policy is not designed; synth + `terraform validate` only).
- [ ] 9. **Package test:** extend `packages/terradart_google_beta/test/synth_test.dart` when the new factory has synth-visible behavior worth pinning (provider pin, sealed slots, sensitive fields).
- [ ] 10. **CHANGELOG:** add the factory to `packages/terradart_google_beta/CHANGELOG.md` under the next version heading.

## Verification

Run the FULL gate from the repo root before opening or updating a PR (it includes the beta `wrap --check` and the beta package suite; CI's `wrap_check` job re-runs the beta lane on every PR):

```bash
tool/agent_verify.sh
```

Check exit codes bare — never pipe into tail/grep and trust `&&`.

## PR conventions

Single-purpose PR, Conventional Commit `feat(beta): curate <resource>`. Commit messages carry the demand source (issue link), the cost-classification evidence summary, and the example decision. English, no AI footers.
