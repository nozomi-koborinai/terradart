# Changelog

## Unreleased

### Breaking

- `Apis.enable(stack, barrels: ...)` replaces `ApisEnablement.enable(...).registerOn(stack)` and the `ApiEnablement` bundle — one call registers the services plus the propagation `TimeSleep` and returns the dependency list. See [MIGRATING.md](../../MIGRATING.md).
- `TimeProvider` / `TimeSleep` moved here from `terradart_core` — import `package:terradart_google/time.dart`.
- `GoogleProvider.providerAlias` removed (a silent no-op: synth never emitted the alias).

### Fixed

- `secret_manager` barrel exports the sealed replication variants (`SecretManagerSecretAutoReplication` / `SecretManagerSecretUserManagedReplication`) that the catalog already advertised.
- `google_alloydb_cluster` / `google_memcache_instance` — `deletionProtection` input wired (the schema capability was advertised with no setter; caught by the new parity gate).

### Added (maintainer)

- Barrel completeness gate: every public type of a generated wrapper must appear in its barrel's `show` clause (`per_service_barrel_test`).

## 0.12.20 - 2026-06-12

### Added

- Wave 33 AlloyDB (3): `google_alloydb_cluster` (network + initial user helpers), `google_alloydb_instance` (machine config), `google_alloydb_user`.
- New `alloydb` barrel; `Barrels.alloydb` → `alloydb.googleapis.com`.
- Extended `cloud_sql_quickstart` — AlloyDB on the same PSA chain as private Cloud SQL.
- `GoogleRedisInstance` — `authEnabled`, `transitEncryptionMode`, `replicaCount`, `readReplicasMode` inputs plus `RedisInstanceTransitEncryptionMode`, `RedisInstanceReadReplicasMode`, `RedisInstancePersistenceMode`, `RedisInstanceMaintenanceStartTime`, backing the previously input-less `authString` / `serverCaCerts` / `readEndpoint` / `readEndpointPort` getters.
- `GoogleRedisInstance` — `deletionProtection` input, matching every other `supportsDeletionProtection` wrapper (the capability was advertised with no way to set the flag).
- `GoogleComputeUrlMap` / `GoogleComputeRegionUrlMap` — `defaultRouteAction` parameter (the customSlot existed in both specs but was dropped from both constructors).

### Fixed

- `GoogleRedisInstance` — the Wave 32 `maintenancePolicy` / `persistenceConfig` customSlots were silently dropped (missing from `paramOrder`), so neither block could ever be configured; both now reach the constructor. `RedisInstanceWeeklyMaintenanceWindow` requires `startTime` (`start_time` is `min_items = 1` in the provider schema) and `RedisInstancePersistenceConfig` gains `persistenceMode` / `rdbSnapshotStartTime` so RDB persistence can actually be turned on.
- `redis` barrel — exports every nested helper type (previously 3 of 7; the catalog `nestedTypes` advertised symbols the barrel hid from importers).
- `ApiEnablement.registerOn` — validates before mutating the stack: throws `StateError` when the stack has no `time` provider (previously synthesized `time_sleep` with an unpinned implied `hashicorp/time`) and `ArgumentError` for positive sub-second delays; non-positive delays skip the sleep (now documented).
- `ApiEnablement.registerOn` — the propagation `TimeSleep` carries a `triggers` map keyed to the service set, so APIs enabled in later applies get the same propagation wait instead of racing `SERVICE_DISABLED`.
- `ApisEnablement.enable` — `propagationLocalName` defaults to `'<localNamePrefix>_propagation'`, so two enablement groups with distinct prefixes no longer collide on `time_sleep.api_propagation`.
- `cloud_run_quickstart` — enables `secretmanager.googleapis.com` via `Barrels.secretManager` (the README already claimed credentials-only setup) and wires `REDIS_HOST` into the service env from the cache's typed `host` ref.
- `ApiEnablement.registerOn` — an empty `services` list registers nothing and returns no deps (previously a barrel set contributing no APIs still gated all dependents behind a 60s no-op `time_sleep`).
- pubspec description no longer hardcodes a resource count (was stale at 118).

Catalog: **202 curated resource factories + 1 data source** (203 entries; 32 service barrels).

## 0.12.19 - 2026-06-12

### Added

- `ApiEnablement` / `ApisEnablement.enable` — wraps `Apis.required` with optional `TimeSleep` propagation delay (requires `TimeProvider` on the stack).
- Wave 32 Memorystore: `google_redis_instance` (`RedisInstanceTier`, `RedisInstanceConnectMode`); new `redis` barrel.
- Extended `cloud_run_quickstart` — Redis cache + `ApisEnablement` with 60s propagation sleep.

Catalog: **199 curated resource factories + 1 data source** (200 entries; 31 service barrels).

## 0.12.18 - 2026-06-12

### Added

- Wave 31 Private CA (2): `google_privateca_certificate_template` (identity constraints helpers), `google_privateca_ca_pool_iam_member`.
- Extended `compute_lb_quickstart` — ENTERPRISE pool tier, template + IAM member wired into CAS chain.

Catalog: **198 curated resource factories + 1 data source** (199 entries).

## 0.12.17 - 2026-06-12

### Added

- `Apis.required(barrels: [...])` — derives distinct `GoogleProjectService` resources from [Barrels] catalog names.
- `Barrels` enum — typed barrel selectors aligned with per-service `package:terradart_google/<barrel>.dart` imports.
- Shared `requiredApiForTerraformType` moved into the package (re-exported for `tool/` gates).

## 0.12.16 - 2026-06-12

### Added

- Wave 30 Private CA (1): `google_privateca_certificate` with `PrivatecaCertificateConfig`, `PrivatecaCertificateX509Config.serverTls()`, and CSR / inline-config issuance paths.
- Extended `compute_lb_quickstart` (CAS leaf cert after root CA).

Catalog: **196 curated resource factories + 1 data source** (197 entries).

## 0.12.15 - 2026-06-12

### Added

- Wave 29 Private CA (1): `google_privateca_certificate_authority` with `PrivatecaCertificateAuthorityConfig`, `PrivatecaCertificateAuthorityKeySpec`, and X.509 / key-algorithm enums.
- Extended `compute_lb_quickstart` (root CA → pool → issuance chain).

Catalog: **195 curated resource factories + 1 data source** (196 entries).

## 0.12.14 - 2026-06-12

### Added

- Wave 28 Private CA (1): `google_privateca_ca_pool` (`PrivatecaCaPoolTier`).
- New barrel: `privateca.dart` (30 service barrels total).
- Extended `compute_lb_quickstart` — `GooglePrivatecaCaPool` referenced by issuance config.

Catalog: **194 curated resource factories + 1 data source** (195 entries).

## 0.12.13 - 2026-06-12

### Added

- Wave 27 Certificate Manager (2): trust config (`CertificateManagerTrustConfigTrustStore` helpers), certificate issuance config (`CertificateManagerCertificateIssuanceConfigCertificateAuthorityConfig` for CAS `ca_pool` references).
- Extended `compute_lb_quickstart` and `pubsub_quickstart` (`GoogleProject` data source).

Catalog: **193 curated resource factories + 1 data source** (194 entries).

## 0.12.12 - 2026-06-12

### Breaking

Seven existing factories now use **required sealed virtual slots** instead of
optional per-block constructor params, enforcing GCP `exactly_one_of` at compile
time:

| Factory | New required param | Sealed type |
| --- | --- | --- |
| `GoogleComputeFirewall` | `rulePolicy` | `ComputeFirewallRulePolicy` |
| `GoogleComputeHealthCheck` | `protocol` | `ComputeHealthCheckProtocol` |
| `GoogleComputeRegionHealthCheck` | `protocol` | `ComputeRegionHealthCheckProtocol` |
| `GoogleMonitoringUptimeCheckConfig` | `target` | `MonitoringUptimeCheckConfigTarget` |
| `GoogleBigqueryJob` | `jobConfiguration` | `BigqueryJobConfiguration` |
| `GoogleBigqueryConnection` | `backend` | `BigqueryConnectionBackend` |
| `GoogleCloudbuildTrigger` | `buildSpec` | `CloudbuildTriggerBuildSpec` |

Migration guide: [MIGRATING.md](../../MIGRATING.md) (`0.12.11 → 0.12.12`).

Updated quickstarts: `compute_lb_quickstart`, `monitoring_quickstart`,
`bigquery_quickstart`, `cloud_build_quickstart`.

Catalog unchanged: **191 curated resource factories + 1 data source** (192 entries).

## 0.12.11 - 2026-06-09

### Added

- Wave 25 Service Networking (1): VPC Access connector (`VpcAccessConnectorSubnet` helper for subnet mode).
- Wave 26 Certificate Manager (4): DNS authorization, certificate (`CertificateManagerCertificateProvisioningSource` sealed managed/self-managed), certificate map, certificate map entry.

New barrel: `certificate_manager.dart` (29 service barrels total).

Catalog: **191 curated resource factories + 1 data source** (192 entries).

### Changed

- `GoogleArtifactRegistryRepository` — `remoteRepositoryConfig` now exposes typed `dockerRepository`, `mavenRepository`, and `npmRepository` blocks with public-registry enums (`ArtifactRegistryDockerPublicRepository`, `ArtifactRegistryMavenPublicRepository`, `ArtifactRegistryNpmPublicRepository`) and a shared deprecated `ArtifactRegistryRepositoryArtifactRegistryRemoteCustomRepository` helper. `advancedExtra` remains for `python_repository` and other rare upstreams.

## 0.12.10 - 2026-06-09

### Breaking

Finite schema fields across many existing factories now use typed enums and
nested helpers instead of `TfArg<String>` / raw maps. New Wave 23–24 factories
ship with enums from day one. Full migration table:
[MIGRATING.md](../../MIGRATING.md) (`0.12.9 → 0.12.10`).

Highlights:

- Top-level enum conversions (e.g. `ServiceAttachmentConnectionPreference`,
  `RegionSecurityPolicyType`, `BigqueryDatapolicyDataPolicyType`, …).
- Nested helper conversions (Armor WAF/rate-limit blocks, URL map cache policy /
  metadata filters, DNS routing policy, Pub/Sub schema settings, GKE backup
  restore config, Cloud Run worker pool template, Artifact Registry APT/YUM
  remote bases, …).
- `GoogleComputeRegionSecurityPolicy` now requires embedded `rules` (standalone
  `GoogleComputeRegionSecurityPolicyRule` remains for additional rules).

### Added

- Wave 23 DNS (2): record set, project policy.
- Wave 23 Eventarc (1): Google channel config.
- Wave 23 Cloud Run (1): v2 worker pool.
- Wave 23 IAP (1): web backend service IAM member.
- Wave 24 DNS (2): response policy, response policy rule.
- Wave 24 Cloud Run (1): v2 worker pool IAM member.
- Wave 24 Compute (1): Cloud Router.
- Wave 24 BigQuery (1): datapolicy data policy IAM member.

Catalog: **186 curated resource factories + 1 data source** (187 entries).

## 0.12.9 - 2026-06-09

### Added

- Wave 22 BigQuery (4): Analytics Hub data-exchange IAM member, listing IAM member, listing subscription, connection IAM member.
- Wave 22 Compute (1): regional security policy rule.

Catalog: **176 curated resource factories + 1 data source** (177 entries). Additive; no breaking API changes vs `0.12.8`.

## 0.12.8 - 2026-06-10

### Added

- Wave 17 Eventarc (5): channel, enrollment, google API source, message bus, pipeline.
- Wave 18 Compute LB internals (9): target SSL/TCP proxies, regional TCP proxy, service attachment, regional SSL/Armor policies, global/regional network endpoints, security policy rule.
- Wave 19 BigQuery governance (6): reservation assignment, row access policy, data policy, Analytics Hub exchange/listing, BI reservation.
- Wave 20 Storage + Cloud SQL (3): managed folder, SSL cert, source representation instance.
- Wave 21 Firebase App Check (1): reCAPTCHA v3 config.

Catalog: **171 curated resource factories + 1 data source** (172 entries). Additive; no breaking API changes vs `0.12.7`.

## 0.12.7 - 2026-06-10

**ADDED** — Waves 12–15:

- **Wave 12 (Monitoring):** `google_monitoring_slo`, `google_monitoring_group`, `google_monitoring_custom_service`, `google_monitoring_monitored_project`; `monitoring.dart` extended (10 factories total).
- **Wave 13 (Compute LB):** `google_compute_region_ssl_certificate`, `google_compute_network_endpoint`.
- **Wave 14 (KMS):** `google_kms_crypto_key_version`.
- **Wave 15:** `google_pubsub_schema_iam_member`, `google_storage_hmac_key`.
- **Wave 16 (Logging analytics):** `google_logging_log_scope`, `google_logging_linked_dataset`; `logging.dart` extended (11 factories total).

Catalog: **147 curated resource factories + 1 data source** (148 entries). Additive; no breaking API changes vs `0.12.6`.

## 0.12.6 - 2026-06-09

**ADDED** — Wave 10 (GKE Backup):

- `google_gke_backup_backup_plan` / `google_gke_backup_restore_plan`
- `google_gke_backup_backup_channel` / `google_gke_backup_restore_channel`
- Plan-scoped IAM: `*_iam_member` (×2; binding/policy stay uncurated — member-only IAM policy)
- New `package:terradart_google/gke_backup.dart` barrel (28 service barrels total).

**ADDED** — Wave 11 (Logging project ops):

- `google_logging_project_bucket_config` — project log bucket (retention, analytics).
- `google_logging_log_view` — filtered view into a log bucket.
- `google_logging_log_view_iam_member` — additive IAM on a log view (`*_binding` / `*_policy` stay uncurated).
- `google_logging_project_exclusion` — project-wide log exclusion.
- `google_logging_saved_query` — saved Logs Explorer / Ops Analytics query.
- `logging.dart` barrel extended (9 factories total).

Catalog: **136 curated resource factories + 1 data source** (137 entries). Additive; no breaking API changes vs `0.12.5`.

## 0.12.5 - 2026-06-09

**ADDED** — Wave 9 (GKE Hub):

- `google_gke_hub_fleet` — project default fleet.
- `google_gke_hub_membership` — enroll a [GoogleContainerCluster] in the fleet.
- `container.dart` barrel extended (4 factories total).

Catalog: **125 curated resource factories + 1 data source** (126 entries). Additive; no breaking API changes vs `0.12.4`.

## 0.12.4 - 2026-06-09

**ADDED** — Wave 8 (GKE core):

- `google_container_cluster` — GKE cluster on an existing VPC / subnetwork.
- `google_container_node_pool` — node pool attached to a cluster.
- New `package:terradart_google/container.dart` barrel.

Catalog: **123 curated resource factories + 1 data source** (124 entries). Additive; no breaking API changes vs `0.12.3`.

## 0.12.3 - 2026-06-09

**CHANGED** — breaking API fix for WIF provider oneof typing:

- `GoogleIamWorkloadIdentityPoolProvider` now takes required
  `trustSource: IamWorkloadIdentityPoolProviderTrustSource` (sealed) instead
  of optional `oidc` / `aws` / `saml` / `x509` constructor params.
- Trust helper types renamed: `IamWorkloadIdentityPoolProviderOidcTrust`,
  `…AwsTrust`, `…SamlTrust`, `…X509Trust` (+ `IamWorkloadIdentityPoolProviderTrustSource`).

See root `MIGRATING.md` (0.12.2 → 0.12.3). Catalog size unchanged (122 entries).

## 0.12.2 - 2026-06-09

**ADDED** — two curated factories for external HTTPS LB + GitHub Actions federation paths:

- `google_iam_workload_identity_pool_provider` — OIDC / AWS / SAML / X.509 trust bindings for [GoogleIamWorkloadIdentityPool].
- `google_iap_web_backend_service_iam_binding` — authoritative IAP access on external HTTPS load balancer backend services.
- New `package:terradart_google/iap.dart` barrel.

Catalog: **121 curated resource factories + 1 data source** (122 entries). Additive; no breaking API changes vs `0.12.1`.

## 0.12.1

No user-facing changes. Lockstep version bump alongside the `terradart_agent` v0.12.1 fix. The generated catalog and public surface are unchanged from 0.12.0.

## 0.12.0

**ADDED** — ships a generated static catalog of the curated factory surface. Additive change; no breaking modifications to the v0.11.0 API and no resource additions or removals (still 118 curated GCP factories + 1 data source).

- Bumped `terradart_core` constraint to `^0.12.0` (and `terradart_codegen` dev-dep to `^0.12.0`).
- **New `package:terradart_google/catalog.dart` barrel** — the introspection entry point, separate from the umbrella so existing consumers are unaffected.
- **New hand-written `CatalogEntry` / `CatalogKind` types** (`lib/src/catalog_entry.dart`) — the public catalog API. `CatalogEntry` describes one curated factory (tfType, Dart class name, per-service barrel, kind, summary, constructor params, nested helper types, sensitive fields, doc comment); `CatalogKind` distinguishes a managed `resource` from a read-only `dataSource`.
- **New generated `terradartCatalog`** (`lib/src/_catalog.g.dart`) — a `const List<CatalogEntry>` with one entry per curated resource and data source, regenerated by `terradart wrap` (verified under `wrap --check`; never hand-edited). Consumed by `terradart-mcp` (the `terradart_agent` package) to answer catalog queries without analyzing the wrapper source.

## 0.11.0 - 2026-MM-DD

**BREAKING** — pre-1.0 polish wave consuming the `terradart_core` 0.11.0 / `terradart_codegen` 0.11.0 changes (ADR-0016, ADR-0017). v0.x permits breaking changes. See [MIGRATING.md](../../MIGRATING.md) for before / after snippets.

- Bumped `terradart_core` constraint to `^0.11.0` (and `terradart_codegen` dev-dep to `^0.11.0`).
- **118 curated GCP factories + 1 data source retained** — no resource additions or removals in this release. The polish wave focuses on identifier-rename propagation and pubspec hygiene.
- **All 118 wrappers regenerated with unprefixed identifiers.** Every emitted wrapper now exposes `static const String tfType` (was `$tfType`), `Set<String> get sensitiveFields` (was `$sensitiveFields`), and `bool get supportsDeletionProtection` where applicable (was `$supportsDeletionProtection`). External code that read these by `$`-prefixed name must drop the prefix. The two getters are annotated `@protected`; non-subclass reads require an `// ignore: invalid_use_of_protected_member` directive with rationale.
- **All emitted enums implement `TerraformEnum`.** Every enum declaration emitted by `terradart_codegen` 0.11.0 carries the `implements TerraformEnum` clause and `@override final String terraformValue;`. Mostly invisible to direct users; matters when authoring custom hand-rolled enums (must add the `implements` clause to satisfy `TfArg<MyEnum>.literal`).
- **Hosted pubspec carets.** Examples no longer carry `path:` deps to sibling packages; they are workspace members of the monorepo and resolve against the published versions on pub.dev.

## 0.10.0 - 2026-MM-DD

**ADDED** — small Firestore master-data IaC support. Additive change; no breaking modifications to v0.9.0 API.

- `google_firestore_document` curated. Manages a single Firestore document as a Terraform resource. Intended for **small fixed master-data sets** (feature flags, pricing tiers, lookup tables, regional config).
- `FirestoreFields.encode(Map<String, Object?>)` static method added — converts a Dart map to the Firestore wire-format JSON string expected by `fields`. 11-type coverage: `null`, `bool`, `int` (string-encoded for 64-bit precision), `double`, `String`, `DateTime` (UTC-ISO-8601), `Uint8List` (base64), `List` (recursive), `Map<String, Object?>` (recursive), `FirestoreReference`, `FirestoreGeoPoint`. Unsupported types throw `ArgumentError` at synth time.
- `FirestoreReference(String path)` sentinel for `referenceValue` (document-path) Firestore values.
- `FirestoreGeoPoint({latitude, longitude})` sentinel for `geoPointValue` Firestore values.

### Supersedes 0.3.0-dev note

The 0.3.0-dev CHANGELOG entry listed `google_firestore_document` as "intentionally not curated (IaC anti-pattern at production scale)". That assessment holds for production-scale datasets (1000s of documents with frequent app-side writes drifting from Terraform state). For **small fixed master-data sets** (feature flags, pricing tiers, lookup tables, regional config) the IaC pattern is appropriate and reproducible — v0.10.0 enables this case.

Use `FirestoreFields.encode(...)` for the `fields` argument; the helper handles the type-discriminated Firestore wire format automatically. See `recipes/firestore-seeded-data/` in `terradart-cookbook` for a worked example.

## 0.9.0 - 2026-05-21

**BREAKING** — pre-1.0 polish wave. Coordinated rename pass + behaviour fixes consuming Plans 1-3 from terradart_core / terradart_codegen (0.9.x staging for the 1.0 surface; breaking changes still permitted within 0.9.x → 1.0):

- Bumped `terradart_core` constraint to `^0.9.0`.
- 118 curated GCP factories + 1 data source retained — no resource additions or removals in this release. The polish wave focuses on naming consistency, sensitive-field correctness, and Stack-level devMode.
- **Service-prefixed nested helpers**: every nested helper class is `<Service><Resource><HelperName>` shape. Affects logging, bigquery, secret_manager, sql, cloud_run, monitoring, pubsub, and other barrels with formerly unprefixed helpers. See MIGRATING.md for the full table.
- **`TfArg<T>`-wrapped nested-helper fields** — uniform across all barrels. Monitoring uptime check's previously plain `String` fields are now `TfArg<String>`.
- **`.iamMember`** getter (was `.member`) on `GoogleServiceAccount` and analogous IAM-member-emitting resources.
- **`.locationRef`** added on `GoogleCloudRunV2Service` + `GoogleCloudRunV2Job`.
- **Enum values verbose-natural** — `Comparison.lessThan` (was `.lt`), `Aligner.alignNextOlder` (was `.nextOlder`), etc. See MIGRATING.md for the per-barrel table.
- **`deletion_protection` synth-time devMode** — when `Stack(devMode: true)`, the 6 curated resources with a `deletion_protection` schema attribute emit `deletion_protection: false`. Production stacks leave `devMode: false` (default).
- **Sensitive masking removed in favour of `SensitiveLiteralError`** — see `terradart_core` CHANGELOG entry.

See [MIGRATING.md](../../MIGRATING.md) for the migration guide with `find` + `sed` recipes.

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
