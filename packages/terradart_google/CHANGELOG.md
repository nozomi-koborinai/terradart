# Changelog

## 0.8.0-dev - 2026-05-19

### Wave 7 — Data ops + observability + CI/CD (Plan 5.H, final wave before v1.0.0)

Adds **23 GA resources** covering Data operations + observability + CI/CD on Google Cloud. terradart_google now ships **118 curated resource factories + 1 data source** across **27 per-service barrels**.

**Cloud Build CI/CD (4):**

- `google_cloudbuild_trigger`
- `google_cloudbuild_worker_pool`
- `google_cloudbuildv2_connection` (SCM — GitHub App / Bitbucket / GitLab v2)
- `google_cloudbuildv2_repository`

**Artifact Registry (2):**

- `google_artifact_registry_repository` (Docker / Maven / npm / Python / Apt / Yum / Go / Generic / KFP)
- `google_artifact_registry_repository_iam_member`

**Logging (3):**

- `google_logging_metric` (corrected from the plan's `google_logging_log_metric` — the actual Terraform provider resource is `google_logging_metric`)
- `google_logging_folder_sink`
- `google_logging_organization_sink`

(`google_logging_project_sink` was already curated since Wave 2 and is unchanged.)

**Monitoring (5):**

- `google_monitoring_notification_channel`
- `google_monitoring_uptime_check_config`
- `google_monitoring_dashboard`
- `google_monitoring_metric_descriptor`
- `google_monitoring_service` (SLO — only `basic_service` variant is exposed by the provider schema; the other 8 SLO service-type variants listed in the original spec are not present and cannot be set via Terraform)

**BigQuery Data ops (6):**

- `google_bigquery_job` (one-of: `query` / `load` / `extract` / `copy`; ephemeral — for scheduled work use `data_transfer_config`)
- `google_bigquery_routine`
- `google_bigquery_data_transfer_config`
- `google_bigquery_reservation`
- `google_bigquery_capacity_commitment`
- `google_bigquery_connection` (one-of with 7 schema-present variants: `cloud_sql` / `cloud_spanner` / `aws` / `azure` / `cloud_resource` / `spark` / `configuration`; `vertex_ai` and `salesforce_data_cloud` listed in the original spec are not in the GA provider schema)

**Adjacent event-driven Data ops (3):**

- `google_eventarc_trigger` (destination one-of: `cloud_run_service` / `cloud_function` / `workflow` / `http_endpoint` / `gke`; `gke` and `retry_policy` block are schema-required additions not in the original spec)
- `google_pubsub_schema` (`PROTOCOL_BUFFER` / `AVRO`)
- `google_storage_notification`

**New per-service barrels:** `cloud_build.dart`, `artifact_registry.dart`, `eventarc.dart` (24 → 27 barrels).

**Quickstart:** `examples/cloud_build_quickstart/` — full CI/CD pipeline end-to-end.

**Constraint bump:** `terradart_core: ^0.8.0-dev` (lockstep).

**Note on Wave 7 final count vs original spec:** the original Plan 5.H spec targeted 25 new resources (96 → 121). Schema-of-truth verification during execution removed 2 from scope: the plan's `google_logging_log_metric` was a misnaming (already covered by the existing `google_logging_project_sink` curation since Wave 2 means logging adds 3 not 4 new), and `google_artifact_registry_vpcsc_config` is beta-only and not in the GA schema. Final delivery: 23 new resources (96 → 119 = 118 factories + 1 data source).

## 0.7.0-dev - 2026-05-19

### Wave 6 — Compute LB stack (Plan 5.G)

Adds **25 GA resources** covering the L7 Application Load Balancer stack on Google Cloud. terradart_google now ships **96 curated resources** across **24 per-service barrels**.

**L7 Global Application LB core (8):**

- `google_compute_global_forwarding_rule`
- `google_compute_target_http_proxy`, `google_compute_target_https_proxy`
- `google_compute_url_map`
- `google_compute_backend_service` (global)
- `google_compute_managed_ssl_certificate`, `google_compute_ssl_certificate`
- `google_compute_backend_bucket`

**L7 Regional/Internal Application LB core (5):**

- `google_compute_forwarding_rule` (regional)
- `google_compute_region_target_http_proxy`, `google_compute_region_target_https_proxy`
- `google_compute_region_url_map`
- `google_compute_region_backend_service`

**Health checks (2):**

- `google_compute_health_check`, `google_compute_region_health_check` (unified HTTP/HTTPS/TCP/SSL/HTTP2/GRPC)

**MIG / Autoscaler (5):**

- `google_compute_instance_template`
- `google_compute_instance_group_manager`, `google_compute_region_instance_group_manager`
- `google_compute_autoscaler`, `google_compute_region_autoscaler`

**NEG (3):**

- `google_compute_network_endpoint_group` (zonal)
- `google_compute_global_network_endpoint_group` (Internet)
- `google_compute_region_network_endpoint_group` (Cloud Run / Cloud Functions Gen 2 / App Engine flex)

**Cloud Armor + SSL Policy (2):**

- `google_compute_security_policy` (Cloud Armor; rules inline; CEL expressions as raw `String`)
- `google_compute_ssl_policy` (TLS profile + min_tls_version)

**Quickstart:** `examples/compute_lb_quickstart/` — full L7 Global Application LB chain end-to-end.

**Constraint bump:** `terradart_core: ^0.7.0-dev` (lockstep).

## 0.6.0-dev - 2026-05-18

Wave 5: adds 22 new GA resources across IAM completion + Cloud SQL + `*_iam_member` fill. terradart_google now 71 resources, 24 per-service barrels.

### Added — resources

- **IAM** (5): `google_project_iam_member`, `google_project_iam_custom_role`, `google_service_account_iam_member`, `google_service_account_key`, `google_iam_workload_identity_pool`.
- **Cloud SQL** (3 + 2 network adjuncts): `google_sql_database_instance`, `google_sql_database`, `google_sql_user`, `google_service_networking_connection`, `google_compute_global_address`.
- **Cloud Run v2** (1 + 2 IAM): `google_cloud_run_v2_job`, `google_cloud_run_v2_service_iam_member`, `google_cloud_run_v2_job_iam_member`.
- **`*_iam_member` fill** (9): `google_bigquery_dataset_iam_member`, `google_bigquery_table_iam_member`, `google_storage_bucket_iam_member`, `google_kms_crypto_key_iam_member`, `google_kms_key_ring_iam_member`, `google_compute_instance_iam_member`, `google_compute_disk_iam_member`, `google_compute_subnetwork_iam_member`, `google_dns_managed_zone_iam_member`.

### Added — per-service barrels

2 new barrels: `cloud_sql.dart`, `service_networking.dart`. The umbrella `terradart_google.dart` re-exports them transitively.

### Added — quickstart examples

1 new end-to-end stack: `cloud_sql_quickstart` (Cloud SQL instance + database + user with private-IP wiring through `service_networking_connection` + `compute_global_address`). 7 existing quickstarts (iam, cloud_run, bigquery, storage, kms, compute, dns) extended with `*_iam_member` showcases.

### Notes

- IAM-binding variants remain `*_iam_member` only (additive / safe). `_iam_binding` (authoritative per role) and `_iam_policy` (authoritative for resource) are out of scope; demand-driven follow-up tracked under GitHub label `wave-5-followup`.
- WIF pool shipped without its provider sibling (`iam_workload_identity_pool_provider`); the pool alone is meaningful for identity grouping. Provider deferred to a future wave.
- Cloud SQL replicas / read pools deferred to a future wave; `sql_database_instance` covers the single-primary case which is the dominant deployment shape.
- Spec originally targeted `google_compute_network_iam_member`, but Google Cloud does not expose VPC-network-level IAM at that granularity. Substituted with `google_compute_disk_iam_member` — same rationale (resource-scoped grants without project-wide compute admin) and a real production pattern (backup SAs scoped to specific data disks).
- Plan 5.E weekly drift PR cron remained active during Wave 5 as the automation's first real-world evaluation vehicle. See `docs/superpowers/notes/2026-05-18-plan5e-vehicle-eval.md` (local) for operational findings; Task 8 will produce that note.

## 0.5.0-dev

**BREAKING** — Plan 5.X: schemantic removal.

- Dropped `package:schemantic` runtime dep.
- Dropped `package:terradart_annotations` runtime dep.
- Deleted all 48 `.schema.dart` + 48 `.schema.g.dart` files under `lib/src/generated/`.
- 96 wrapper files regenerated: no `_<Resource>SchemaInstance` stub, no `extends Resource<$<R>>` (now `extends Resource`), no `schema:` constructor arg, file-private `_<resource>Sensitive` const inline (previously imported as public const from `.schema.dart`).
- Sensitive masking unchanged — IR-derived const Set → wrapper `$sensitiveFields` getter → `JsonEncoder.encodeArgMapWithSensitive`.
- Dropped `build_runner` dev_dep (no more schemantic generation).
- Dart SDK floor restored to `^3.6.0` (was `^3.10.0` solely for schemantic).
- See [ADR-0013](../../docs/decisions/0013-drop-schemantic-and-flatten-resource-type.md) for full rationale.

## 0.4.0-dev - 2026-05-17

### Added

- `BucketObjectContent` sealed class (in `storage/google_storage_bucket_object.dart`) now exposes an `encode()` method for parity with other sealed-class encoders. No production behavior change — the parent factory still wires `blockKey + value` directly into the argMap.
- Gate 6 (`test/synth/encode_round_trip_test.dart`) — 34 sealed-class members across 11 sealed classes now exercise encode round-trip structural assertions (see `terradart_codegen` 0.4.0-dev for the gate's contract).

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
