# Changelog

## 0.18.0 - 2026-06-21

Lockstep release. No API changes vs `0.17.1`.

## 0.17.1 - 2026-06-21

Lockstep release. No user-facing CLI changes.

## 0.17.0 - 2026-06-21

Lockstep release. No user-facing CLI changes.

## 0.16.0 - 2026-06-21

Lockstep release. No user-facing CLI changes.

### Added

- Wrapper overrides / manifest entries for Waves 42–70 (66 new curated factories through `google_vertex_ai_cache_config`).

## 0.15.0 - 2026-06-20

Lockstep release. No user-facing CLI changes.

### Added

- Wrapper overrides / manifest entries for the post-`0.14.0` curated expansion through Wave 41, covering Apigee, Dataplex, License Manager, Discovery Engine, Config Deployment, Contact Center Insights, Dialogflow, Network Connectivity, Chronicle, Migration Center, Network Security ULL, Oracle Database@Google Cloud, and IAM binding/policy adjuncts.

### Fixed

- Aligned the Contact Center Insights output directory with the wrap-init anchor.
- Added Config Deployment Gate 6 thunks for blueprint source variants.

## 0.14.0 - 2026-06-16

- Refresh the provider schema fixture to `hashicorp/google` 7.36.0.
- Type the `google_compute_region_backend_service.connection_tracking_policy`
  nested block in the wrapper override (2 enums + block class), closing the last
  `check_override_enum_gaps --strict-nested` gap.

## 0.13.0 - 2026-06-14

**BREAKING** — removes the `terradart codegen` CLI subcommand, `runCodegen`, `CodegenResult`, and `FileEmitter`. Maintainer generation is `terradart wrap` only. See [MIGRATING.md](../../MIGRATING.md).

Maintainer:

- **Added** — `lint-override` phase-2 rule `exactly-one-paramorder-fanout` when MM YAML declares an `exactly_one_of` sibling group but the override lists two or more **schema-default** members in `paramOrder` without a sealed virtual `customSlot` (closes the `customSlots`-less escape hatch).
- **Changed** — `exactly-one-optional-fanout` now uses canonical MM sibling groups; pre-existing violations are listed in `tool/exactly_one_lint_debt.yaml` (#107).
- **Added** — `tool/example_synth_gates.dart` (synth-based example coverage + API-enablement dependency checker, #108).
- **Added** — label-gated `apply-smoke` GitHub workflow + `tool/apply_smoke.sh` (#109).
- **Added** — `lint-override` dead-customSlots rules `custom-slot-missing-param-order`, `custom-slot-not-in-param-order`, `custom-slot-not-in-arg-map-order`: a customSlot the emitter would silently skip now fails the gate (caught the Wave 32 `google_redis_instance` regression and two latent `url_map` slots that `wrap --check` could not see).
- **Added** — `tool/append_curation_backlog.dart` for idempotent schema-bump backlog updates (#35).
- **Fixed** — schema-bump workflow no longer appends invalid YAML outside `entries:`; excludes `.schema-bump/` from commits.
- **Changed** — the example synth gate's API-enablement check now MANDATES that an example enabling any API enables **every** API its resources require (`tool/example_api_debt.yaml` is the audited escape hatch; the Wave 32 secretmanager gap becomes a hard failure). The gate already ran via `check_docs_consistency.dart` (CI + agent gate) but only validated *already-enabled* APIs, so an enablement omission passed silently. A `tool/example_synth_gates_test.dart` unit test now guards the ratchet logic itself.
- **Added** — `dart analyze tool/` joins CI and the agent gate (the gate scripts themselves were unanalyzed; two latent errors fixed; `path` added as a direct dev dependency).
- **Added** — universal invariant `deletion_protection` parity: a curated resource whose schema exposes `deletion_protection` must list it in an explicit `paramOrder` (immediately caught `google_alloydb_cluster` and `google_memcache_instance` from Waves 33/35).
- **Added** — `tool/check_mm_upstream_fingerprint.dart` gate (CI + agent gate): flags `upstream: null` manifest entries that carry an MM fingerprint (`effective_labels` / `Possible values:` docs) and therefore almost certainly have an mmv1 upstream. Stops the Wave 26-32 copy-paste-`null` class.
- **Changed** — synced 73 MM YAML fixtures (the manifest corrections above), activating the enum-drift checks that were vacuous without them (zero drift across the frozen prelude enums). `google_dns_record_set` corrected to `upstream: null` (no `mmv1` ResourceRecordSet exists; the stale path 404'd on first sync).
- **Fixed** — `canonicalExactlyOneOfGroups` skips groups containing a list-indexed nested-block member (e.g. `[network, subnet.0.name]` on `google_vpc_access_connector`), which previously collapsed to a bogus `[name, network]` sibling group and would have demanded an impossible sealing.
- **Changed** — `google_certificate_manager_certificate_map_entry` sealed `match` slot and `google_logging_saved_query` derived `visibility` enum (the hand-written duplicate, shadowed by `deriveEnums`, is removed) — both surfaced by the fixture sync and the now-non-vacuous lint/invariants.
- **Fixed** — `tool/mm_yaml_sources.yaml`: corrected **29** mislabeled `upstream: null` entries (certificatemanager, privateca, alloydb, memcache, spanner, filestore, vpc-access, gke_hub_fleet, several logging, storage_hmac_key, eventarc, analytics-hub subscription, redis) to their real `mmv1/products/...` paths, plus 6 broken non-null paths (analyticshub→bigqueryanalyticshub rename, cloudrun→cloudrunv2 worker pool, sql_ssl_cert→null, the crossed monitoring service/custom_service pair). Re-activates MM enum-drift checks across those resources.
- **Changed** — catalog counts in `tool/doc_expectations.dart` are now DERIVED from `_catalog.g.dart` instead of hand-bumped constants, removing the parallel-wave count race that forced reconcile cycles in #136/#137/#138. `catalog_count_test` no longer pins a literal total; only human-readable prose still needs syncing (and `check_docs_consistency` enforces it).
- **Added** — pre-merge `pub publish --dry-run` CI job for `terradart_core` / `terradart_codegen` / `terradart_google`, catching fixture secret-scanner trips before they break publish (the reactive 0.12.5 and 0.12.11 false-secret fixes).

- **Added** — Wave 33–35 wrapper overrides: AlloyDB (`google_alloydb_cluster` / `_instance` / `_user` / `_backup`), Cloud Filestore (`google_filestore_instance` / `_backup` / `_snapshot`), `google_memcache_instance`, Spanner (`google_spanner_instance` / `_database`); new `alloydb` / `filestore` / `memcache` / `spanner` MM manifest entries.

## 0.12.19

Wave 32 override: `google_redis_instance` (`RedisInstanceTier`, `RedisInstanceConnectMode` enums).

## 0.12.18

Wave 31 overrides: `google_privateca_certificate_template` (identity constraints slot), `google_privateca_ca_pool_iam_member`.

## 0.12.17

No codegen changes. Lockstep version bump for `terradart_google` v0.12.17 (`Apis.required` helper).

## 0.12.16

Wave 30 override: `google_privateca_certificate` (typed `config` custom slot + `PrivatecaCertificateX509Config.serverTls()`).

## 0.12.15

Wave 29 override: `google_privateca_certificate_authority` (typed `config` + `key_spec` custom slots).

## 0.12.14

Wave 28 override: `google_privateca_ca_pool` (`google_privateca_` → `privateca.googleapis.com` in `tool/terraform_api_requirements.dart`).

## 0.12.13

Wave 27 overrides: `google_certificate_manager_trust_config`, `google_certificate_manager_certificate_issuance_config` (`certificatemanager.googleapis.com` prefix).

## 0.12.12

Maintainer: sealed virtual slots for seven `exactly_one_of` overrides (firewall,
health check ×2, uptime check, BigQuery job/connection, Cloud Build trigger).
`tool/exactly_one_lint_debt.yaml` is now empty (#107).

## 0.12.11

Wave 25 `google_vpc_access_connector` override (`google_vpc_access_` → `vpcaccess.googleapis.com`). Four Wave 26 Certificate Manager overrides (`google_certificate_manager_` → `certificatemanager.googleapis.com`). `google_artifact_registry_repository` override: typed remote `docker_repository` / `maven_repository` / `npm_repository` helpers and public-registry enums.

## 0.12.10

Ten new wrapper overrides (Waves 23–24). Maintainer enum-gap gate extended:

- **Added** — `check_override_enum_gaps.dart` nested scan (`NESTED_PARTIAL` fails
  CI; `NESTED_THIN` fails when `--strict-nested` is passed).
- **Changed** — `tool/agent_verify.sh` runs the enum gate with `--strict-nested`.

## 0.12.9

Five new wrapper overrides (Wave 22). No CLI changes.

## 0.12.8

Twenty-four new wrapper overrides (Waves 17–21). No CLI changes.

## 0.12.7

Maintainer:

- **Added** — Wave 12 Monitoring overrides (four types; SLO uses sealed `MonitoringSloSli`).
- **Added** — Waves 13–16 overrides (Compute region SSL + NEG endpoint, KMS key version, Pub/Sub schema IAM member, Storage HMAC key, Logging log scope + linked dataset).

## 0.12.6

Maintainer:

- **Added** — Wave 10 GKE Backup overrides (six `google_gke_backup_*` types; plan IAM is `iam_member`-only).
- **Added** — Wave 11 Logging project ops overrides (five `google_logging_*` types; log view IAM is `iam_member`-only).

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
