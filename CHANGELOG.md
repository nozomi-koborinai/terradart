# Changelog

All notable changes to terradart are documented here. The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

Per-package changelogs live alongside each package and are the system of record for `terradart_core`, `terradart_codegen`, `terradart_google`, and `terradart_agent` — this top-level file summarises cross-cutting milestones.

## [0.12.1] - 2026-05-25

Lockstep patch across the workspace. **No breaking changes** to `terradart_core` or `terradart_google`.

### Fixed

- **`terradart-mcp`** — `list_resources` and `list_barrels` return JSON objects (`{"resources": [...]}`) instead of bare arrays so strict MCP clients (e.g. Cursor) accept `structuredContent`.

### Added

- **`terradart-mcp`** — Intel macOS (`darwin-amd64`) release binary.

## [0.12.0] - 2026-05-25

Pre-alpha milestone: static curated catalog, optional MCP agent tooling. **No breaking changes** to `terradart_core` or `terradart_google` vs `0.11.0`. See [MIGRATING.md](MIGRATING.md#011x--012x) (0.11.x → 0.12.x).

### Added

- **`terradart_google`** — generated static catalog (`terradartCatalog`) for discovery and MCP; 119 curated factories + 1 data source unchanged.
- **`terradart_agent` / `terradart-mcp`** — read-only MCP server (four catalog tools); Homebrew + GitHub Releases binary (`publish_to: none`).

## [0.11.0] - 2026-05-23

Pre-1.0 polish wave focused on the `terradart_core` public surface. All three packages bump from 0.10.0 to 0.11.0 in lockstep. Coordinated breaking changes from ADR-0016 (codegen identifier rename) and ADR-0017 (Stack API surface). See [MIGRATING.md](MIGRATING.md) for before / after snippets covering every breaking change in this release.

### Breaking changes

- **Stack API surface (ADR-0017).** `Stack.synth({required outDir})` split into two methods: `Stack.synth() → SynthResult` is the pure in-memory step that returns the encoded tfJson and any AppExports Dart constants, and `Stack.writeTo(outDir) → Future<void>` is the file-IO wrapper that persists `main.tf.json` (and the optional generated Dart constants file when `setAppExportsOutputPath` was called). `writeTo` throws `StateError` atomically — before any disk write — when `addExport` was called without `setAppExportsOutputPath`. `StackSynth` is removed from the `terradart_core` public barrel and annotated `@internal` (still importable via the deep `src/synth/stack_synth.dart` path for advanced use). `Stack`, `Resource`, and `Data` are promoted to `abstract base class`; user subclasses must now be declared `final class XxxStack extends Stack` (or `base` / `sealed`) and `implements Stack` / `implements Resource` / `implements Data` are no longer permitted.
- **Codegen identifier rename (ADR-0016).** `$tfType` → `tfType`, `$sensitiveFields` → `sensitiveFields`, `$supportsDeletionProtection` → `supportsDeletionProtection`. The two getters are now annotated `@protected` (from `package:meta`); non-subclass reads require an `// ignore: invalid_use_of_protected_member` directive with rationale. All 118 curated `terradart_google` wrappers regenerated with the new identifier names.
- **`TerraformEnum` interface.** Hand-rolled Terraform-mapped enums must add `implements TerraformEnum` and `@override final String terraformValue;`. Codegen-emitted enums get this automatically.

### Non-breaking improvements

- `encodeArg` / `encodeArgMap` / `encodeArgMapWithSensitive` return types tightened from `dynamic` to `Object?` / `Map<String, Object?>`.
- `_DedupKey` internal type rewritten as a Dart 3 named record.
- `dart:convert` import prefixes unified (`as dart_convert` / `as conv` / `as convert` → no prefix everywhere).
- `terradart_google` pubspec switched from `path:` deps to hosted carets; examples are now workspace members of the monorepo.
- Stale schemantic-era comments in per-package `analysis_options.yaml` refreshed.

## [0.1.0-dev] - 2026-05-14

Adds 15 new GCP resource factories (terradart_google grows 13 → 28), typed enum support for `TfArg`, sealed types for exactly-one-of nested blocks, and the `terradart wrap-promote` codegen subcommand. Pre-alpha — pin tightly.

### Added — 15 new GCP resource factories

- **Compute** (5): `google_compute_network`, `google_compute_address`, `google_compute_subnetwork`, `google_compute_firewall`, `google_compute_instance`.
- **BigQuery** (2): `google_bigquery_dataset`, `google_bigquery_table`.
- **KMS** (2): `google_kms_key_ring`, `google_kms_crypto_key`.
- **Cloud Storage** (2): `google_storage_bucket`, `google_storage_bucket_object`.
- **DNS** (1): `google_dns_managed_zone`.
- **Cloud Run v2** (1): `google_cloud_run_v2_service`.
- **Logging** (1): `google_logging_project_sink`.
- **Monitoring** (1): `google_monitoring_alert_policy`.

Each resource ships typed Dart enums for every schema field with a fixed value set, plus typed helper classes for every nested block. See `packages/terradart_google/CHANGELOG.md` for the full per-resource detail.

### Added — runtime / codegen

- `TfArg<MyEnum>.literal(MyEnum.foo)` encodes typed Dart enums to Terraform strings via a new `.terraformValue` getter convention (`terradart_core`).
- Sealed Dart types for nested blocks the schema declares exactly-one-of: `Access` (8 variants on `google_bigquery_dataset`), `BucketObjectContent` (`google_storage_bucket_object`), `EnvVarSource` and `VolumeSource` (`google_cloud_run_v2_service`).
- `terradart wrap-promote` proposes enum_values and dartTypeOverrides for un-typed leaf fields by scanning the parsed schema; authors integrate and strip the marker block manually (`terradart_codegen`).
- Schema descriptions containing literal `$` or over-escaped apostrophes are now sanitized at the parser layer so generated `.schema.g.dart` files stay parseable.

### Quickstart examples

- 9 new end-to-end stacks under `examples/`: `compute_quickstart`, `kms_quickstart`, `storage_quickstart`, `bigquery_quickstart`, `dns_quickstart`, `ops_quickstart`, `cloud_run_quickstart`, `monitoring_quickstart`, plus extensions to existing ones. Total examples: 14.
- CI runs `terraform validate` against each example's synth output (13 matrix entries).

## [0.0.1-dev] - 2026-05-09

Initial pre-alpha public release. Surface, APIs, and emitted Dart symbol names may change between 0.0.x versions. Pin tightly.

### Added

- **Built-in factories** — 12 hand-written wrappers with golden tests:
  - **Pub/Sub** — `google_pubsub_topic`, `google_pubsub_subscription`, `google_pubsub_topic_iam_member`, `google_pubsub_subscription_iam_member`
  - **Cloud Tasks** — `google_cloud_tasks_queue`, `google_cloud_tasks_queue_iam_member`
  - **Secret Manager** — `google_secret_manager_secret` (write-only `secret_data_wo` + `secret_data_wo_version`), `google_secret_manager_secret_version`, `google_secret_manager_secret_iam_member`
  - **Cloud Scheduler** — `google_cloud_scheduler_job` (Pub/Sub target via `topic.id`)
  - **Project enablement** — `google_project_service`
  - **IAM** — `google_service_account` (with pre-formatted `member` ref for IAM bindings)
  - Plus the **`google_project` data source** for project-number lookups.
- **Generated bindings** (planned): codegen output for every other `google_*` / `google-beta_*` resource via `terradart_codegen`. No semver guarantees on emitted Dart names.
- **Stage 1 codegen CLI**: `dart pub global activate terradart_codegen 0.0.1-dev` puts `terradart` on PATH; `terradart codegen --provider hashicorp/google --source <schema-dir> --output lib/generated`.
- **Stage 2 synthesizer**: `StackSynth.synth(stack)` returns drop-in `main.tf.json`.
- **Stack-level primitives**: `Provider`, `Variable<T>`, `Data<S>`, `LifecycleOptions`, `AppExport`.
- **Annotations** (`terradart_annotations`): `@TerraformResource`, `@ForceNew`, `@Sensitive`. `@Sensitive` is folded into a top-level public const `<terraformTypeCamelCase>Sensitive` in each generated schema file.
- **Schema carriers are machine-derived from the provider schema** — `terradart_codegen + schemantic` emits `<resource>.schema.dart` (+ `.g.dart`) committed to `terradart_google`. Published consumers do not need `build_runner`.
- **Dart Pub Workspaces** monorepo layout; SDK `^3.6.0` requirement (`terradart_google` requires `^3.10.0` for its schemantic floor).
- Five quickstart examples under `examples/`.
- OSS community profile: README, CONTRIBUTING.md, SECURITY.md, ISSUE_TEMPLATE/bug-or-question.yml.

### Notes

- Firebase Functions for Dart does not currently expose a Pub/Sub trigger decorator. terradart can emit topic IDs as typed constants for HTTP-fronted subscribers; the runtime gap is documented but not papered over.
- CDKTF was archived by HashiCorp in October 2025 and never targeted Dart. terradart deliberately occupies the Dart-shaped slot CDKTF did not reach.
- Dependency management uses Renovate.
