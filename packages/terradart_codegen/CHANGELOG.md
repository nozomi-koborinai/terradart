# Changelog

## Unreleased

**BREAKING** — removes the `terradart codegen` CLI subcommand, `runCodegen`, `CodegenResult`, and `FileEmitter`. Maintainer generation is `terradart wrap` only. See [MIGRATING.md](../../MIGRATING.md).

## 0.12.6

Maintainer:

- **Added** — Wave 10 GKE Backup overrides (ten `google_gke_backup_*` types).

## 0.12.5

Maintainer:

- **Added** — Wave 9 GKE Hub overrides (`google_gke_hub_fleet`, `google_gke_hub_membership`).

## 0.12.4

Maintainer:

- **Added** — Wave 8 GKE overrides (`google_container_cluster`, `google_container_node_pool`) and `tool/batch_wrap_init.dart`.

## 0.12.3

Maintainer:

- **Changed** — `google_iam_workload_identity_pool_provider` override uses sealed `trust_source` virtual slot (matches scheduler / firestore convention).
- **Added** — `lint-override` phase-2 rule `exactly-one-optional-fanout` when MM YAML declares top-level `exactly_one_of` but the override fans out optional member `customSlots`.

## 0.12.2

Maintainer-only: wrapper overrides for `google_iam_workload_identity_pool_provider` and `google_iap_web_backend_service_iam_binding`, plus synced MM YAML fixture for the WIF provider. No CLI changes. Lockstep bump; `terradart_core` constraint `^0.12.2`.

## 0.12.1

No user-facing changes. Lockstep version bump alongside the `terradart_agent` v0.12.1 fix. `terradart_core` constraint bumped to `^0.12.1`.

## 0.12.0

Adds static-catalog emission so the curated `terradart_google` surface can be introspected without loading or analyzing the wrapper source. Powers the new `terradart-mcp` server (`terradart_agent`).

- Bumped `terradart_core` constraint to `^0.12.0`.
- **New `CatalogMetadataEmitter`** — emits `terradart_google/lib/src/_catalog.g.dart`, a generated `const List<CatalogEntry> terradartCatalog` with one entry per curated resource and data source (tfType, Dart class name, per-service barrel, kind, summary, constructor params, nested types, sensitive fields, doc comment).
- **New `catalog_entry_builder.dart`** — builds the per-resource `CatalogEntry` metadata from the same parsed IR + YAML overrides the wrapper emitters consume, so the catalog never drifts from the emitted wrappers.
- **`terradart wrap` now emits the catalog.** The catalog file is regenerated as part of the normal wrap cycle (and verified under `wrap --check`) alongside the wrapper files — no separate command, and zero drift against the emitted source.
- No new CLI surface in this release.

## 0.11.0 - 2026-MM-DD

**BREAKING** — template-side rename pass that pairs with the `terradart_core` 0.11.0 public-surface change (ADR-0016). v0.x permits breaking changes; emitted wrappers in `terradart_google` 0.11.0 follow the new shape. See [MIGRATING.md](../../MIGRATING.md) for before / after snippets.

- Bumped `terradart_core` constraint to `^0.11.0`.
- `wrapper_emitter.dart` / `data_source_wrapper_emitter.dart` emit `static const String tfType` and `Set<String> get sensitiveFields` (and `bool get supportsDeletionProtection` when the schema opts in) **without** the dollar prefix. The accompanying `// ignore: constant_identifier_names` and `// ignore: non_constant_identifier_names` directives are dropped.
- `enum_emitter.dart` appends `implements TerraformEnum` on every emitted enum declaration. The wrapper file already imports `package:terradart_core/terradart_core.dart`, which re-exports the interface — no additional import at the enum-emit site.
- `valid_values_emitter.dart` (wrap-promote scaffold) emits the same `implements TerraformEnum` clause plus `@override` on the generated `String get terraformValue` body.
- `universal_invariants/enum_extractor.dart` regex now tolerates the optional `implements TerraformEnum` clause so the extractor stays backwards-compatible with wrap-promote scaffolds that haven't been fleshed out yet.
- YAML prelude bodies (62 files, 233 enums) updated: `implements TerraformEnum` added to every `enum X {` declaration plus `@override` on the matching `final String terraformValue;` field. Doc-comment / inline-comment references to the dollar-prefixed identifiers are renamed in sync so the regen output and the override YAML stay aligned.
- `wrapper_override.dart` / `sensitive_set_emitter.dart` dartdoc strings reference `sensitiveFields` / `tfType` without the dollar prefix.
- No new CLI surface in this release.

## 0.10.0 - 2026-MM-DD

- Bumped `terradart_core` constraint to `^0.10.0`.
- New YAML override `wrapper_overrides/yaml/google_firestore_document.yaml` enabling the `terradart_google` v0.10.0 Firestore document curation.

## 0.9.0 - 2026-05-21

**BREAKING** — pre-1.0 polish wave. Codegen template changes that propagate to `terradart_google`'s emitted wrappers (0.9.x staging for the 1.0 surface; breaking changes still permitted within 0.9.x → 1.0):

- Bumped `terradart_core` constraint to `^0.9.0`.
- Wrapper emitter emits `@override bool get $supportsDeletionProtection => true;` on wrappers whose schema includes a `deletion_protection` attribute.
- Abstract-class emitter emits service-prefixed nested helper class names (`SqlDatabaseInstanceSettings`, `BigqueryDatasetAccess`, `SecretManagerSecretReplication`, `LoggingProjectSinkBigqueryOptions`, etc.) — no more bare `Settings` / `Access` / `Replication` / `BigqueryOptions` Wave 4-era shapes.
- Abstract-class emitter emits `TfArg<T>`-wrapped nested-helper fields uniformly. Plain Dart-type fields on helpers (Wave 7-era Monitoring uptime check shapes) are eliminated.
- Wrapper emitter emits `.iamMember` getter (was `.member`) for IAM-binding refs.
- Wrapper emitter emits `.locationRef` mirror getter on `google_cloud_run_v2_service` + `google_cloud_run_v2_job` (cookbook-evidence allow list; v1.x may extend).
- Added Gates 6 (nested-helper prefix), 7 (TfArg-wrap uniformity), 8 (enum value identifier length ≥ 4 with industry-acronym allow-list) to `universal_invariants_test`.
- YAML override format extended for per-resource class renames.

See [MIGRATING.md](../../MIGRATING.md) for the full migration guide.

## 0.8.0-dev - 2026-05-19

- Plan 5.H Wave 7: 23 new curated GA resources added to the registry (Data ops + observability + CI/CD).
- Constraint bump: `terradart_core: ^0.8.0-dev` (lockstep with `terradart_core` and `terradart_google`).
- Discovered + corrected a manifest naming bug in `tool/mm_yaml_sources.yaml`: the Wave 7 Batch 0 seed used `google_logging_log_metric` (a non-existent Terraform resource); the actual provider resource is `google_logging_metric` (renamed in Batch 2, see pitfall #12 in wave-commit-pitfalls memory).
- No CLI / codegen / wrap-promote changes.

## 0.7.0-dev - 2026-05-19

- Plan 5.G Wave 6: 25 new curated GA resources added to the registry (Compute LB stack — L7 Application LB Global + Regional/Internal cores + Health checks + MIG/Autoscaler + NEG + Cloud Armor + SSL Policy).
- Constraint bump: `terradart_core: ^0.7.0-dev` (lockstep with `terradart_core` and `terradart_google`).
- No CLI / codegen / wrap-promote changes.

## 0.6.0-dev - 2026-05-18

Plan 5.E: Schema-bump automation. Adds a weekly GitHub Actions workflow
(`.github/workflows/schema-bump.yml`) that detects `terraform-provider-google`
v7 bumps + `magic-modules` MM YAML overlay updates, runs drift detection
(`terradart wrap --check` + 6 universal QA gates), and opens a PR with a
structured drift report. v8+ majors are surfaced as a banner but never
auto-bumped. New `google_*` resources are appended to
`tool/curation_backlog.yaml`.

- New: `tool/fetch_schema.dart`, `tool/sync_mm_yaml.dart`,
  `tool/generate_drift_report.dart`, `tool/mm_yaml_sources.yaml`,
  `tool/curation_backlog.yaml`.
- New: `dev_dependencies` add `http: ^1.0.0` and `pub_semver: ^2.1.0`.
- See ADR-aligned spec at
  `docs/superpowers/specs/2026-05-17-plan5e-schema-bump-automation-design.md`.

WrapperOverride YAML registry expands from 49 to 71 resources (Wave 5 additions; see `terradart_google` 0.6.0-dev for the resource list). All 6 universal QA gates continue to hold over the expanded registry. Workspace consistency bump alongside `terradart_google` 0.6.0-dev.

## 0.5.0-dev

Plan 5.X: schemantic codegen path removed.

- `file_emitter` no longer emits `part 'X.schema.g.dart';`.
- `abstract_class_emitter` + `data_source_class_emitter` deactivated (Layer 1 schema-carrier classes no longer emitted).
- `wrapper_emitter` + `data_source_wrapper_emitter`: stop emitting `_<R>SchemaInstance` stub block, stop emitting `schema:` arg, drop generic from `extends Resource`, emit file-private `_<resource>Sensitive` const at the top of the wrapper file.
- `sensitive_set_emitter` retargeted to wrapper-file inline (no longer writes into `.schema.dart`).
- `wrap_command`: Layer 1 emit step + Layer 2 build_runner invocation removed.
- `WrapperOverride.schemaStubComment` axis dropped from `wrapper_override.dart` + `yaml_loader.dart` + 14 YAML override files.
- Dropped `terradart_annotations` runtime dep.
- See [ADR-0013](../../docs/decisions/0013-drop-schemantic-and-flatten-resource-type.md) for full rationale.

## 0.4.0-dev - 2026-05-17

Plan 5.D — codegen correctness improvements (4 PRs).

### Added

- **Gate 6: sealed-class `encode()` round-trip (structural)** — new universal QA gate (joining the existing 5 from Plan 5.A) that, for every shipped sealed-class member, constructs a synthetic instance, calls `encode()` (or `toArgMap()` fallback), and asserts the result is a non-empty `Map<String, Object?>` (or single-element `List<Map<...>>` for `nesting_mode: list, max_items: 1`), every required ctor param's snake_case schema key is present (recursively — discriminator-block wire formats nest required keys inside), no raw `TfArg<T>` values leak, and no `UnimplementedError` is thrown. Currently covers 34 sealed-class members across 11 sealed classes.
- `SealedClassExtractor` + `SyntheticInstanceBuilder` modules under `lib/src/codegen/universal_invariants/` — building blocks for Gate 6 (regex-based prelude parsing).
- `MinItemsAssertEmitter` — wrap-promote now emits curator-facing commented `assert(list.length >= N)` hint snippets for top-level list-shape nested blocks with `min_items >= 1 && max_items != 1`. Curator copies the snippet into their helper-class constructor on next regen. Scalar attribute constraints (`min_length` / `max_length` / `min` / `max` / `regex`) stay at the schemantic layer.
- `tool/measure_param_order.dart` — standalone measurement script that quantifies how well a candidate paramOrder heuristic predicts the curator-curated orders across the 49-yaml corpus. Output (gitignored, regenerable) drives a Wave 5-close decision matrix on whether to ship the heuristic.

### Fixed

- `MmYamlParser` now reads `deprecation_message:` from MM YAML field overrides into `Constraints.deprecationMessage`. `IrMerger._mergeAttr` propagates the field with the MM-wins precedence used for `regex` / `minLength` / etc. Closes a Plan 4.2-era dead-code path in `wrap_init_generator._buildDeprecatedParamsAxis` that read a perpetually-null field. Skeleton emission of `deprecatedParams:` (the now-populated downstream consumer) stays deferred to Plan 5.E (Renovate-driven schema-bump automation).
- `exactly_one_of_emitter.dart` skeleton: replaced misleading `String encode()` signature with `Map<String, Object?> encode()`. The previous shape mismatched all 12 production sealed-class instances and pointed curators at the wrong wire format.

## 0.3.0-dev - 2026-05-16

No user-facing CLI changes. WrapperOverride YAML registry expands from 30 to **49 resources** (Wave 4 additions: see `terradart_google` 0.3.0-dev for the resource list). Plan 5.A's 5 universal QA gates continue to hold over the expanded registry. Workspace consistency bump alongside `terradart_google` 0.3.0-dev.

## 0.2.1-dev - 2026-05-16

No API change since 0.2.0-dev. Re-published after the 0.2.0-dev tag's publish run failed at the parallel matrix validation step — `terradart_codegen` was uploaded before pub.dev's index had `terradart_core` 0.2.0-dev, causing the `^0.2.0-dev` constraint to fail version solving. 0.2.1-dev ships through a re-ordered publish pipeline (`publish-codegen` now waits for `publish-no-deps` to complete + pub.dev index propagation before uploading).

## 0.2.0-dev - 2026-05-16

### Added

- `extraSensitiveFields:` yaml override axis — curators can declare per-resource sensitive paths beyond what the Terraform schema flags. Each entry is a dotted path (e.g. `metadata_startup_script`); the resulting `<Resource>Sensitive` const ships the union of schema-declared and curator-declared paths.
- `terradart wrap --only=<resource>` — regenerates a single wrapper file even when sibling yaml overrides have validation errors. Designed for the case where unrelated breakage in another resource blocks the whole-package `wrap` cycle.
- `wrap-promote` now extracts enum candidates from prose descriptions matching `Possible values: A, B, C` in addition to schema `enum_values` blocks. Falls back to the prose set when the schema declares no enum, with MM yaml taking priority when both are present.
- 5 universal QA gates (CI-only invariants over `terradart_google/lib/src/**`): `paramOrder` covers every required schema attribute, emitted enum `terraformValue` matches schema `enum_values`, no `UnimplementedError('TODO(wrap-promote)')` ships in the curated source, every emitted enum member is lowerCamelCase, and sensitive path masking round-trips to `""`.

## 0.1.0-dev - 2026-05-14

### Added

- New `terradart wrap-promote` subcommand. Scans a curated override yaml against the parsed provider schema and appends a `# === wrap-promote additions ===` marker block proposing `enum_values` blocks and `dartTypeOverrides` entries for fields whose schema declares a fixed value set. Authors review, integrate into the main `prelude:` / `dartTypeOverrides:` blocks, then strip the marker. Naming choices stay with the human.
- `dartTypeOverrides` now correctly handles ALL_CAPS leaf field names (`ADD_COST_TO_MED` → `addCostToMed`), Dart reserved words via a `Case` suffix (`default` → `defaultCase`), and aggregates all generated enums into a single `prelude: |` block per resource.
- Schema descriptions containing literal `$` (e.g. BigQuery's `sample_table$20190123` partition-decorator example) and over-escaped apostrophes (e.g. `compute_instance.advanced_machine_features.visible_core_count`'s `instance\'s nominal CPU`) are now sanitized at the parser layer (`$` → `＄`, `\'` → `'`) so the generated `.schema.g.dart` remains parseable Dart.
- `ProviderRules` abstraction lets non-`hashicorp/google` providers ship their own resource allow/deny lists, output-dir aliases, and slot-resolution rules. `GoogleProviderRules` is the built-in implementation for the google provider; existing behaviour is unchanged.
- WrapperOverride YAML registry expanded from 13 to **27 resources + 1 data source**.

## 0.0.4-dev - 2026-05-11

- feat: new `terradart wrap` subcommand regenerates the curated factory wrapper files from the package's production YAML overrides. Flags: `--provider`, `--source`, `--output`, `--check` (CI-gate mode, exit 65 on divergence), `--force` (overwrite non-generated files).
- feat: `DataSourceWrapperEmitter` produces data source Layer 2 factories (`final class X extends Data<$X>`). `DataSourceClassEmitter` produces Layer 1 schema carriers (`data_<resource>.schema.dart`).
- feat: WrapperOverride YAML schema extended from 11 to 15 axes (`kind`, `outputDir`, `schemaStubBodyMode`, `fileLeadingComment`); kind dispatches resource vs data source overrides.
- feat: `LoaderErrorReport` aggregates YAML override validation failures into a single report with stable error codes (E101 `unknownKind`, E102 `outputDirRequired`, E103 `outputDirInvalid`, E104 `outputDirMismatchForDataSource`, E201 `axisNotAllowedForDataSource`, E301 `checkMismatch`, E401 `refuseOverwriteNonGenerated`).
- feat: `generatedFileHeader` constant prepended to all wrap-emitted files (3 lines: GENERATED FILE marker + regen hint + `ignore_for_file: prefer_relative_imports`).
- chore: production YAML registry covers 12 resources + 1 data source (google_project).

## 0.0.3-dev - 2026-05-09

- Fix: rename terradart_core main library file to match package name.

## 0.0.2-dev - 2026-05-09

- CI automated publishing via OIDC trusted publisher.
- Fix: prepare_publish.sh now syncs version from tag name.

## 0.0.1-dev - 2026-05-09

### Added

- Initial pre-alpha release of `terradart_codegen`.
- `terradart codegen` CLI — consumes `terraform providers schema -json` output (+ optional Magic Modules YAML overlay) and emits annotated abstract Dart classes for `schemantic`.
- Pipelines together with `terradart_annotations` to feed `package:schemantic` / `build_runner` codegen.

### Notes

- Pre-alpha — emitted symbol names and CLI flags may change between 0.0.x releases.
