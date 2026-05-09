# Changelog

All notable changes to terradart are documented here. The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [0.0.1-dev] - 2026-05-09

Initial pre-alpha public release. Surface, APIs, and emitted Dart symbol names may change between 0.0.x versions. Pin tightly.

### Added

- **Tier 1 surface** — 12 hand-written factories with golden tests:
  - **Pub/Sub** — `google_pubsub_topic`, `google_pubsub_subscription`, `google_pubsub_topic_iam_member`, `google_pubsub_subscription_iam_member`
  - **Cloud Tasks** — `google_cloud_tasks_queue`, `google_cloud_tasks_queue_iam_member`
  - **Secret Manager** — `google_secret_manager_secret` (write-only `secret_data_wo` + `secret_data_wo_version`), `google_secret_manager_secret_version`, `google_secret_manager_secret_iam_member`
  - **Cloud Scheduler** — `google_cloud_scheduler_job` (Pub/Sub target via `topic.id`)
  - **Project enablement** — `google_project_service`
  - **IAM** — `google_service_account` (with pre-formatted `member` ref for IAM bindings)
  - Plus the **`google_project` data source** for project-number lookups.
- **Tier 2 surface** (planned): generator-supported bindings for every other `google_*` / `google-beta_*` resource via `terradart_codegen`. No semver guarantees on emitted Dart names.
- **Stage 1 codegen CLI**: `dart pub global activate terradart_codegen 0.0.1-dev` puts `terradart` on PATH; `terradart codegen --provider hashicorp/google --source <schema-dir> --output lib/generated`.
- **Stage 2 synthesizer**: `StackSynth.synth(stack)` returns drop-in `main.tf.json`.
- **Stack-level primitives**: `Provider`, `Variable<T>`, `Data<S>`, `LifecycleOptions`, `AppExport`.
- **Annotations** (`terradart_annotations`): `@TerraformResource`, `@ForceNew`, `@Sensitive`. `@Sensitive` is folded into a top-level public const `<terraformTypeCamelCase>Sensitive` in each generated schema file.
- **Tier 1 schema carriers are machine-derived from the provider schema** — `terradart_codegen + schemantic` emits `<resource>.schema.dart` (+ `.g.dart`) committed to `terradart_google`. Published consumers do not need `build_runner`.
- **Dart Pub Workspaces** monorepo layout; SDK `^3.6.0` requirement (`terradart_google` requires `^3.10.0` for its schemantic floor).
- Five Tier 1 quickstart examples under `examples/`.
- OSS community profile: README, CONTRIBUTING.md, SECURITY.md, ISSUE_TEMPLATE/bug-or-question.yml.

### Notes

- Firebase Functions for Dart does not currently expose a Pub/Sub trigger decorator. terradart can emit topic IDs as typed constants for HTTP-fronted subscribers; the runtime gap is documented but not papered over.
- CDKTF was archived by HashiCorp in October 2025 and never targeted Dart. terradart deliberately occupies the Dart-shaped slot CDKTF did not reach.
- Dependency management uses Renovate.
