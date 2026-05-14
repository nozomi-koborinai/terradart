# Changelog

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
