# Changelog

## 0.3.0-dev - 2026-05-16

Wave 4: adds 21 new GA resources across 6 Firebase / Cloud Functions / Firestore services. terradart_google now 49 resources, 22 per-service barrels.

### Added — resources

- **Cloud Functions Gen 2** (2): `google_cloudfunctions2_function`, `google_cloudfunctions2_function_iam_member`.
- **Firestore** (5): `google_firestore_database`, `google_firestore_field`, `google_firestore_index`, `google_firestore_backup_schedule`, `google_firestore_user_creds`.
- **Firebase App Hosting** (5): `google_firebase_app_hosting_backend`, `_build`, `_default_domain`, `_domain`, `_traffic`.
- **Firebase App Check** (7): `_recaptcha_enterprise_config`, `_play_integrity_config`, `_app_attest_config`, `_device_check_config`, `_service_config`, `_debug_token`, `_resource_policy`.
- **Firebase Data Connect** (1): `google_firebase_data_connect_service`.
- **Firebase Remote Config** (1): `google_firebase_remote_config_remote_config`.

### Added — per-service barrels

6 new barrels following Plan 5.B convention: `cloud_functions.dart`, `firestore.dart`, `firebase_app_hosting.dart`, `firebase_app_check.dart`, `firebase_data_connect.dart`, `firebase_remote_config.dart`. The umbrella `terradart_google.dart` re-exports them transitively — existing umbrella consumers see all new resources without code change.

### Added — quickstart examples

6 new end-to-end stacks under `examples/`: `cloud_functions_quickstart`, `firestore_quickstart`, `firebase_app_hosting_quickstart`, `firebase_app_check_quickstart`, `firebase_data_connect_quickstart`, `firebase_remote_config_quickstart`. Each validated by CI `terraform_validate` matrix.

### Notes

- `google-beta` provider integration intentionally out of scope; tracked at GitHub Issue with `wave-4.5-candidate` label for demand-driven promotion.
- `google_firestore_document` intentionally not curated (IaC anti-pattern at production scale).
- IAM pattern remains `*_iam_member` only; `_iam_binding` / `_iam_policy` deferred to a future universal IAM spec.
- `AppCheckEnforcementMode` enum is declared once in `firebase_app_check_service_config` and re-imported by `firebase_app_check_resource_policy` — single source of truth for the shared enum.

## 0.2.1-dev - 2026-05-16

No API change since the 0.2.0-dev attempt. Neither 0.1.0-dev nor 0.2.0-dev reached pub.dev for this package — 0.1.0-dev was blocked by an unrelated `terradart_google` job failure, and 0.2.0-dev was blocked by the upstream `terradart_codegen` failure in the parallel matrix. 0.2.1-dev ships through a re-ordered publish pipeline (`publish-google` now waits for `publish-codegen` instead of the parallel `publish-leaves` matrix) and is the first version of this package to land on pub.dev.

## 0.2.0-dev - 2026-05-16

No API change since the 0.1.0-dev attempt. The 0.1.0-dev publish run did not reach pub.dev for this package (the leaf packages succeeded but `terradart_google` did not); 0.2.0-dev is the first version to ship the full surface documented below.

## 0.1.0-dev - 2026-05-14

Adds 15 new GCP resource factories. Total surface: **28 resources + 1 data source**.

### Added — resources

- **Compute** (5): `google_compute_network`, `google_compute_address`, `google_compute_subnetwork`, `google_compute_firewall`, `google_compute_instance`.
- **BigQuery** (2): `google_bigquery_dataset`, `google_bigquery_table`.
- **KMS** (2): `google_kms_key_ring`, `google_kms_crypto_key`.
- **Cloud Storage** (2): `google_storage_bucket`, `google_storage_bucket_object`.
- **DNS** (1): `google_dns_managed_zone`.
- **Cloud Run v2** (1): `google_cloud_run_v2_service`.
- **Logging** (1): `google_logging_project_sink`.
- **Monitoring** (1): `google_monitoring_alert_policy`.

### Added — typed enums

Each new resource ships typed Dart enums for every schema field with a fixed value set — `TfArg<MyEnum>.literal(MyEnum.foo)` encodes to the Terraform string via the new `.terraformValue` convention (see `terradart_core` 0.1.0-dev). Examples: `RoutingMode`, `AddressType`, `NetworkTier`, `BucketStorageClass`, `LifecycleActionType`, `DatasetStorageBillingModel`, `KmsKeyPurpose`, `KmsProtectionLevel`, `DnsZoneVisibility`, `DnssecState`, `DnssecKeyAlgorithm`, `Ingress`, `LaunchStage`, `ScalingMode`, `ExecutionEnvironment`, `OnHostMaintenance`, `ProvisioningModel`, `AlertCombiner`, `AlertSeverity`, `Comparison`, `Aligner`, `Reducer`.

### Added — sealed types for exactly-one-of nested blocks

- `Access` (`google_bigquery_dataset.access`) — 8 variants: `AccessUserByEmail`, `AccessGroupByEmail`, `AccessSpecialGroup`, `AccessDomain`, `AccessIamMember`, `AccessView`, `AccessDataset`, `AccessRoutine`.
- `BucketObjectContent` (`google_storage_bucket_object`) — `BucketObjectFromSource`, `BucketObjectFromContent`.
- `EnvVarSource` (`google_cloud_run_v2_service.template.containers.env`) — `EnvVarFromLiteral`, `EnvVarFromSecret`.
- `VolumeSource` (`google_cloud_run_v2_service.template.volumes`) — `VolumeSecret`, `CloudSqlVolume`, `EmptyDirVolume`, `GcsVolume`, `NfsVolume`.

### Added — nested-block helpers

Each resource that has nested blocks exposes them as typed Dart classes (e.g. `BootDisk`, `NetworkInterface`, `Scheduling`, `Versioning`, `LifecycleRule`, `LifecycleAction`, `LifecycleCondition`, `PrivateVisibilityConfig`, `DnssecConfig`, `Template`, `ServiceContainer`, `ContainerResources`, `ContainerPort`, `VolumeMount`, `AlertCondition`, `ConditionThreshold`, `Aggregation`, `AlertStrategy`, `Documentation`, ...). All helpers carry `toArgMap()` and serialize via the standard `TfArg.literal([...])` pattern.

### Added — per-service barrels

- Per-service barrels (`package:terradart_google/<service>.dart`) for every
  curated service. Example: `import 'package:terradart_google/pubsub.dart';`
  re-exports `GooglePubsubTopic`, `GooglePubsubSubscription`, both IAM
  bindings, and their nested helpers — and nothing else.
- `package:terradart_google/provider.dart` exports `GoogleProvider` and the
  pinned-version constants for the `hashicorp/google` provider.
- `package:terradart_google/data.dart` exports the `GoogleProject` data
  source.

### Changed

- `package:terradart_google/terradart_google.dart` umbrella now re-exports
  the per-service barrels instead of inlining every symbol export. Every
  previously-exported symbol is still available through the umbrella —
  zero migration required for existing consumers.

### Quickstart examples

9 new end-to-end stacks under `examples/` showing every new resource: `compute_quickstart`, `kms_quickstart`, `storage_quickstart`, `bigquery_quickstart`, `dns_quickstart`, `ops_quickstart`, `cloud_run_quickstart`, `monitoring_quickstart` (+ extensions to existing ones). Total examples: 14.

### Notes

- Pre-alpha. Pin tightly.
- One cross-resource collision was resolved by renaming the helper class for cloud_run_v2_service's `template.vpc_access.network_interfaces` entry to `VpcNetworkInterface`; the canonical `NetworkInterface` belongs to `google_compute_instance`.
- See `terradart_core` 0.1.0-dev for the underlying enum-serialization runtime change.

## 0.0.4-dev - 2026-05-11

- chore: the 13 wrapper files under `lib/src/{pubsub,cloud_tasks,secret_manager,cloud_scheduler,iam,project,data}/` are now produced by `terradart wrap` (run from `packages/terradart_codegen/`). Output is byte-identical with the Wave 0 handwritten_baseline goldens; no behavioural changes for consumers.
- feat: new Layer 1 schema carrier at `lib/src/generated/data_google_project.schema.dart` (reserved for future ResourceRef placeholder migration; not yet imported by Layer 2).

## 0.0.3-dev - 2026-05-09

- Fix: rename terradart_core main library file to match package name.

## 0.0.2-dev - 2026-05-09

- CI automated publishing via OIDC trusted publisher.
- Fix: prepare_publish.sh now syncs version from tag name.

## 0.0.1-dev - 2026-05-09

### Added

- Initial pre-alpha release of `terradart_google` curated GCP factory wrappers.
- 12 hand-written factories: Pub/Sub (4), Cloud Tasks (2), Secret Manager (3), Cloud Scheduler (1), `google_project_service`, `google_service_account`. Plus the `google_project` data source.
- Schema carriers (`<resource>.schema.dart` + `.g.dart`) generated and committed; consumers do not need `build_runner`.
- `disableOnDestroy` / write-only `secret_data_wo` / `IamMember` helper patterns.

### Notes

- Pre-alpha — factory APIs and emitted Terraform JSON may change between 0.0.x releases. Pin tightly.
