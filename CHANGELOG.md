# Changelog

All notable changes to terradart are documented here. The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

Per-package changelogs live alongside each package and are the system of record for `terradart_core`, `terradart_codegen`, `terradart_google`, `terradart_agent`, and `terradart_coverage` — this top-level file summarises cross-cutting milestones.

## [0.16.0] - 2026-06-21

Lockstep release across the workspace. **No breaking changes** vs `0.15.0`.

### Added

- **`terradart_google`** — catalog grows to **322 curated resource factories + 1 data source** (323 entries; 58 service barrels), adding **66** factories across Waves 42–70: Resource Manager Tags, Essential Contacts, Service Directory, Dataplex Universal Catalog / glossary / lake, Workflows, Compute (static route, project metadata item, network firewall policy, resource policy with sealed snapshot schedules, disk resource policy attachment), Secret Manager / Parameter Manager, Document AI, Cloud Observability trace scope, Network Security lists, Migration Center, Dialogflow agent, Cloud Healthcare (dataset / DICOM / consent / HL7v2 stores + IAM members), GKE Hub scope + namespace, Cloud Deploy (delivery pipeline / target / custom target type), BigLake Metastore, Gemini for Google Cloud settings, Vertex AI (managed dataset, Tensorboard, GenAI cache config), Network Connectivity Center hub, and BigQuery standalone `dataset_access`.
- **Examples** — 14 new or extended quickstarts (`tags`, `service_directory`, `workflows`, `parameter_manager`, `document_ai`, `observability`, `healthcare`, `gke_hub`, `clouddeploy`, `biglake`, `gemini`, `compute_route`, `network_security_lists`, `vertex_ai`) plus extensions to existing stacks; all 54 quickstarts now in the CI `terraform_validate` matrix.

### Changed

- **CI** — expand `terraform_validate` matrix from 40 to 54 examples (full quickstart coverage).
- **Docs** — release Waves 42–70 in the public waves guide; align version references with the `0.16.x` line.

## [0.15.0] - 2026-06-20

Lockstep release across the workspace. **No breaking changes** vs `0.14.0`.

### Added

- **`terradart_google`** — catalog grows to **256 curated resource factories + 1 data source** (257 entries; 46 service barrels), including Apigee, Dataplex, License Manager, Discovery Engine, Config Deployment, Contact Center Insights, Dialogflow SIP trunk, Network Connectivity transport, Chronicle, Migration Center, Network Security ULL, Oracle Database@Google Cloud Waves 36–40, and Wave 41 IAM binding/policy adjuncts.
- **Examples** — new or extended quickstarts cover the added factories, including Config Deployment, Network Connectivity, Network Security ULL, Migration Center, Chronicle, Oracle GoldenGate / Autonomous Database / DB System / Exadata, and IAM binding/policy adjuncts.

### Changed

- **CI / release maintenance** — opt GitHub workflows into Node 24 and expand the Terraform validate matrix for Apigee and Dataplex quickstarts.
- **Docs** — release Waves 34–41 in the public waves guide and align package/site version references with the `0.15.x` line.

### Fixed

- **Examples / generation** — backfill Filestore snapshot coverage in `compute_quickstart`, align the Contact Center Insights barrel output directory with the wrap-init anchor, and add Config Deployment Gate 6 thunks.

## [0.14.0] - 2026-06-16

- Provider bump to `hashicorp/google` 7.36.0 (38 new resources recorded in the
  curation backlog; `google_compute_address.address_id`).
- New package **`terradart_coverage`** — a read-only Terraform coverage checker
  CLI (`terradart-coverage`, brew-distributed) plus brew release automation that
  auto-pushes the `terradart-mcp` and `terradart-coverage` formulas.
- `terradart_agent`: new `check_coverage` MCP tool wrapping the coverage core.
- **Breaking** (`terradart_google`): `connection_tracking_policy` on
  `google_compute_region_backend_service` is now typed. See MIGRATING.md.

## [0.13.0] - 2026-06-14

Lockstep release folding in the unreleased 0.12.20 (Waves 33–35) plus the
AI-autonomous-maintenance design pass and harness hardening. **Breaking** —
see [MIGRATING.md](MIGRATING.md).

### Added

- **`terradart_google`** — Waves 33–35: AlloyDB (cluster / instance / user / backup), Cloud Filestore (instance / backup / snapshot), Memorystore for Memcached, Spanner (instance / database); new `alloydb` / `filestore` / `memcache` / `spanner` barrels.

### Breaking — design pass for AI-autonomous maintenance

- **`terradart_google`** — `Apis.enable(stack, barrels: ...)` replaces the `ApisEnablement` / `ApiEnablement` two-layer API; `TimeProvider` / `TimeSleep` move in from core under the new `time` barrel; `GoogleProvider.providerAlias` removed.
- **`terradart_core`** — provider-aliasing dead surface removed (`StackProvider.providerAlias`, `ProviderBinding`, `Resource.provider`); `Stack.synth()` now fails fast when a resource's provider is not registered.
- **`terradart_google`** — `google_certificate_manager_certificate_map_entry` (`hostname` / `matcher` → required sealed `match`) and `google_logging_saved_query` (`LoggingSavedQueryVisibility.privateVisibility` → `.private`), surfaced by the MM fixture sync.

### Maintenance hardening — recurring Cursor-agent correction classes as pre-merge gates

Mined from the `cursor/*` Wave PR history (the repair loop ran entirely through fixup commits with no human review comments):

- **API-enablement ratchet** — the example synth gate now fails when an example enables some APIs but not every API its resources need (the Wave 32 secretmanager class). `tool/example_api_debt.yaml` is the audited escape hatch.
- **MM upstream fingerprint gate** + a 29-entry (+6 broken-path) manifest correction, re-activating enum-drift checks; the **73-fixture sync** then ran them with zero drift.
- **Barrel-completeness test**, **`deletion_protection` parity invariant**, **dead-customSlots `lint-override` rules**.
- **Catalog counts derived from `_catalog.g.dart`** — kills the parallel-wave count race (#136/#137/#138).
- **Pre-merge `pub publish --dry-run`** and **`dart analyze tool/`**.

Catalog: **209 curated resource factories + 1 data source** (210 entries; 35 service barrels).

## [0.12.19] - 2026-06-12

Lockstep release across the workspace. **No breaking changes** vs `0.12.18`.

### Added

- **`terradart_core`** — `TimeProvider` + `TimeSleep` (`hashicorp/time`) for API propagation waits.
- **`terradart_google`** — `ApiEnablement` / `ApisEnablement.enable` (wraps `Apis.required` + optional `TimeSleep`); Wave 32 `google_redis_instance` + `redis` barrel.
- Extended **`cloud_run_quickstart`** — Redis cache, `ApisEnablement` with 60s propagation sleep.

### Changed (examples)

- **`gke_quickstart`**, **`compute_lb_quickstart`** — replace hand-written `GoogleProjectService` with `Apis.required` (#57 dogfood).

Catalog: **199 curated resource factories + 1 data source** (200 entries).

## [0.12.18] - 2026-06-12

Lockstep release across the workspace. **No breaking changes** vs `0.12.17`.

### Added

- **`terradart_google`** — Wave 31 Private CA (2): `google_privateca_certificate_template`, `google_privateca_ca_pool_iam_member`.
- Extended **`compute_lb_quickstart`** — ENTERPRISE CAS pool, certificate template, pool IAM auditor member, template ref on leaf cert.

Catalog: **198 curated resource factories + 1 data source** (199 entries).

## [0.12.17] - 2026-06-12

Lockstep release across the workspace. **No breaking changes** vs `0.12.16`.

### Added

- **`terradart_google`** — `Apis.required(barrels: [...])` and `Barrels` enum derive `GoogleProjectService` enablement from catalog barrels; documents optional `time_sleep` propagation pattern.

## [0.12.16] - 2026-06-12

Lockstep release across the workspace. **No breaking changes** vs `0.12.15`.

### Added

- **`terradart_google`** — Wave 30 Private CA (1): `google_privateca_certificate` (CSR or typed `config` helpers, `PrivatecaCertificateX509Config.serverTls()`).
- Extended **`compute_lb_quickstart`** — CAS-issued leaf cert (CSR variable) after the root CA.

Catalog: **196 curated resource factories + 1 data source** (197 entries).

## [0.12.15] - 2026-06-12

Lockstep release across the workspace. **No breaking changes** vs `0.12.14`.

### Added

- **`terradart_google`** — Wave 29 Private CA (1): `google_privateca_certificate_authority` (typed `config` / `keySpec` helpers, `PrivatecaCertificateAuthorityX509Config.rootCa()`).
- Extended **`compute_lb_quickstart`** — root CA in the CAS pool before Certificate Manager issuance.

Catalog: **195 curated resource factories + 1 data source** (196 entries).

## [0.12.14] - 2026-06-12

Lockstep release across the workspace. **No breaking changes** vs `0.12.13`.

### Added

- **`terradart_google`** — Wave 28 Private CA (1): `google_privateca_ca_pool` (`PrivatecaCaPoolTier` enum); new `privateca` barrel.
- Extended **`compute_lb_quickstart`** — CAS pool wired to Certificate Manager issuance config (replaces placeholder `ca_pool` literal).

Catalog: **194 curated resource factories + 1 data source** (195 entries; 30 service barrels).

## [0.12.13] - 2026-06-12

Lockstep release across the workspace. **No breaking changes** vs `0.12.12`.

### Added

- **`terradart_google`** — Wave 27 Certificate Manager (2): `google_certificate_manager_trust_config`, `google_certificate_manager_certificate_issuance_config` (typed trust-store / CA-pool helpers).
- Extended **`compute_lb_quickstart`** (trust config + issuance policy alongside the Wave 26 chain).
- **`pubsub_quickstart`** — exercises the `GoogleProject` data source (Pub/Sub service-agent IAM member via project number).

### Changed (maintainer)

- `tool/example_debt.yaml`: removed stale `GoogleProject` entry (data source backfill).

Catalog: **193 curated resource factories + 1 data source** (194 entries).

## [0.12.12] - 2026-06-12

Lockstep release across the workspace.

### Breaking

- **`terradart_google`** — Seven curated factories now enforce GCP / Terraform
  `exactly_one_of` groups at compile time via sealed virtual slots (firewall
  `rulePolicy`, health-check `protocol`, uptime-check `target`, BigQuery job
  `jobConfiguration`, BigQuery connection `backend`, Cloud Build trigger
  `buildSpec`). See [MIGRATING.md](MIGRATING.md) (`0.12.11 → 0.12.12`).

### Changed (maintainer)

- Cleared `tool/exactly_one_lint_debt.yaml` (#107).

## [0.12.11] - 2026-06-09

Lockstep release across the workspace. **No breaking changes** vs `0.12.10`.

### Added

- **`terradart_google`** — Wave 25 Service Networking: `google_vpc_access_connector` (`VpcAccessConnectorSubnet` helper).
- **`terradart_google`** — Wave 26 Certificate Manager (4): DNS authorization, certificate (sealed managed/self-managed provisioning), certificate map, certificate map entry.
- Catalog: **191 curated resource factories + 1 data source** (192 entries); new `certificate_manager` barrel (29 service barrels).
- Extended **`cloud_run_quickstart`** (VPC Access connector + `template.vpcAccess` on the service).
- Extended **`compute_lb_quickstart`** (Certificate Manager chain alongside the existing Compute SSL cert).

### Changed

- **`terradart_google`** — `GoogleArtifactRegistryRepository` remote config: typed `dockerRepository` / `mavenRepository` / `npmRepository` helpers with `ArtifactRegistryDockerPublicRepository`, `ArtifactRegistryMavenPublicRepository`, and `ArtifactRegistryNpmPublicRepository` enums (replacing `advancedExtra` for the common public-registry path).

## [0.12.10] - 2026-06-09

Lockstep release across the workspace.

### Breaking

- **`terradart_google`** — Many existing factories now use typed `TerraformEnum` values and nested helpers instead of `TfArg<String>` / `TfArg<Map<String, dynamic>>` for schema-finite fields. See [MIGRATING.md](MIGRATING.md) (`0.12.9 → 0.12.10`).

### Added

- **`terradart_google`** — Wave 23 DNS: `google_dns_record_set`, `google_dns_policy`.
- **`terradart_google`** — Wave 23 Eventarc: `google_eventarc_google_channel_config`.
- **`terradart_google`** — Wave 23 Cloud Run: `google_cloud_run_v2_worker_pool`.
- **`terradart_google`** — Wave 23 IAP: `google_iap_web_backend_service_iam_member`.
- **`terradart_google`** — Wave 24 DNS: `google_dns_response_policy`, `google_dns_response_policy_rule`.
- **`terradart_google`** — Wave 24 Cloud Run: `google_cloud_run_v2_worker_pool_iam_member`.
- **`terradart_google`** — Wave 24 Compute: `google_compute_router`.
- **`terradart_google`** — Wave 24 BigQuery: `google_bigquery_datapolicy_data_policy_iam_member`.
- Catalog: **186 curated resource factories + 1 data source** (187 entries).
- Extended **`dns_quickstart`** (policy, A record, response policy), **`eventarc_quickstart`** (channel config), **`cloud_run_quickstart`** (worker pool + IAM), **`compute_lb_quickstart`** (IAP member), **`compute_quickstart`** (Cloud Router), and **`bigquery_quickstart`** (datapolicy IAM).

### Changed (maintainer)

- **`terradart_codegen`** — `tool/agent_verify.sh` runs `check_override_enum_gaps.dart --strict-nested`.

## [0.12.9] - 2026-06-09

Lockstep patch across the workspace. **No breaking changes** vs `0.12.8`.

### Added

- **`terradart_google`** — Wave 22 BigQuery Analytics Hub + connection IAM: four factories (`google_bigquery_analytics_hub_data_exchange_iam_member`, `google_bigquery_analytics_hub_listing_iam_member`, `google_bigquery_analytics_hub_listing_subscription`, `google_bigquery_connection_iam_member`).
- **`terradart_google`** — Wave 22 Compute regional Armor: `google_compute_region_security_policy_rule`.
- Catalog: **176 curated resource factories + 1 data source** (177 entries).
- Extended **`bigquery_quickstart`** (Analytics Hub IAM, listing subscription, connection + connection IAM) and **`compute_lb_quickstart`** (regional security policy rule).

## [0.12.8] - 2026-06-10

Lockstep patch across the workspace. **No breaking changes** vs `0.12.7`.

### Added

- **`terradart_google`** — Wave 17 Eventarc completion: five factories (`google_eventarc_channel`, `google_eventarc_enrollment`, `google_eventarc_google_api_source`, `google_eventarc_message_bus`, `google_eventarc_pipeline`).
- **`terradart_google`** — Wave 18 Compute LB internals: nine factories (SSL/TCP proxies, PSC service attachment, regional Armor/SSL policy, global/regional network endpoints, standalone security policy rule).
- **`terradart_google`** — Wave 19 BigQuery governance: six factories (reservation assignment, row access policy, data policy, Analytics Hub exchange/listing, BI reservation).
- **`terradart_google`** — Wave 20 Storage + Cloud SQL: `google_storage_managed_folder`, `google_sql_ssl_cert`, `google_sql_source_representation_instance`.
- **`terradart_google`** — Wave 21 Firebase App Check: `google_firebase_app_check_recaptcha_v3_config`.
- Catalog: **171 curated resource factories + 1 data source** (172 entries).
- **`examples/eventarc_quickstart`** — message bus, API source, enrollment, channel, pipeline, and Pub/Sub → HTTP trigger.
- Extended **`compute_lb_quickstart`**, **`bigquery_quickstart`**, **`storage_quickstart`**, **`cloud_sql_quickstart`**, **`firebase_app_check_quickstart`**.

## [0.12.7] - 2026-06-10

Lockstep patch across the workspace. **No breaking changes** vs `0.12.6`.

### Added

- **`terradart_google`** — Wave 12 Monitoring completion: four factories (`google_monitoring_slo`, `google_monitoring_group`, `google_monitoring_custom_service`, `google_monitoring_monitored_project`).
- **`terradart_google`** — Wave 13 Compute LB follow-up: `google_compute_region_ssl_certificate`, `google_compute_network_endpoint`.
- **`terradart_google`** — Wave 14 KMS: `google_kms_crypto_key_version`.
- **`terradart_google`** — Wave 15 adjacent IAM/Storage: `google_pubsub_schema_iam_member`, `google_storage_hmac_key`.
- **`terradart_google`** — Wave 16 Logging analytics: `google_logging_log_scope`, `google_logging_linked_dataset`.
- Catalog: **147 curated resource factories + 1 data source** (148 entries).
- **`examples/monitoring_quickstart`** — full observability chain (channel, uptime, metric descriptor, dashboard, service, SLO, alert).
- **`examples/kms_quickstart`**, **`storage_quickstart`**, **`pubsub_quickstart`**, **`compute_lb_quickstart`** — extended for new factories.
- **`examples/ops_quickstart`** — log scope + linked dataset for Log Analytics.

## [0.12.6] - 2026-06-09

Lockstep patch across the workspace. **No breaking changes** vs `0.12.5`.

### Added

- **`terradart_google`** — Wave 10 GKE Backup: six `google_gke_backup_*` factories (backup/restore plans and channels + plan IAM members; binding/policy stay uncurated per the member-only IAM policy); new `package:terradart_google/gke_backup.dart` barrel.
- **`terradart_google`** — Wave 11 Logging project ops: five factories (`google_logging_project_bucket_config`, `google_logging_log_view`, `google_logging_log_view_iam_member`, `google_logging_project_exclusion`, `google_logging_saved_query`) in the `logging` barrel.
- Catalog: **136 curated resource factories + 1 data source** (137 entries).
- **`examples/gke_quickstart`** — extended with GKE Backup API enablement, the cluster backup agent addon, channels, plans, and plan IAM members.
- **`examples/ops_quickstart`** — extended with log bucket, log view + IAM member, project exclusion, saved query, logs-based metric, and API enablement.

## [0.12.5] - 2026-06-09

Lockstep patch across the workspace. **No breaking changes** vs `0.12.4`.

### Added

- **`terradart_google`** — Wave 9 GKE Hub: `google_gke_hub_fleet` and `google_gke_hub_membership` in the `container` barrel. Catalog: **125 curated resource factories + 1 data source** (126 entries).
- **`examples/gke_quickstart`** — VPC, cluster, node pool, fleet, and membership; CI `terraform_validate` matrix entry.
- **Agent policy** — Wave shipping checklist in `AGENTS.md`, [`terradart-ship-wave`](.agents/skills/terradart-ship-wave/SKILL.md), and extended `CONTRIBUTING.md` PR checklist.

### Changed

- **`examples/iam_quickstart`** — adds `GoogleIamWorkloadIdentityPoolProvider` with sealed `trustSource` (0.12.3 API debt).

## [0.12.4] - 2026-06-09

Lockstep patch across the workspace. **No breaking changes** vs `0.12.3`.

### Added

- **`terradart_google`** — Wave 8 GKE core: `google_container_cluster` and `google_container_node_pool`; new `package:terradart_google/container.dart` barrel. Catalog: **123 curated resource factories + 1 data source** (124 entries).
- **`tool/batch_wrap_init.dart`** — maintainer helper to scaffold multiple `wrap-init` overrides in one run.

## [0.12.3] - 2026-06-09

Lockstep patch across the workspace.

### Changed

- **`terradart_google`** — **breaking:** `GoogleIamWorkloadIdentityPoolProvider` trust binding is now required `trustSource: IamWorkloadIdentityPoolProviderTrustSource` (sealed oneof) instead of optional `oidc` / `aws` / `saml` / `x509` params. See `MIGRATING.md` (0.12.2 → 0.12.3).

### Added

- **`terradart_codegen`** — `lint-override` phase-2 rule `exactly-one-optional-fanout` (MM `exactly_one_of` vs optional customSlot fanout).
- **Agent docs** — sealed `exactly_one_of` convention in `AGENTS.md` and `terradart-add-curated-resource` skill.

## [0.12.2] - 2026-06-09

Lockstep patch across the workspace. **No breaking changes** to `terradart_core` or existing `terradart_google` factory APIs.

### Added

- **`terradart_google`** — `google_iam_workload_identity_pool_provider` and `google_iap_web_backend_service_iam_binding` curated factories; new `package:terradart_google/iap.dart` barrel. Catalog: **121 curated resource factories + 1 data source** (122 entries).

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
