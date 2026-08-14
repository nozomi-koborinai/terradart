<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="branding/png/logo-horizontal-dark-1024.png">
    <img src="branding/png/logo-horizontal-1024.png" alt="TerraDart — Type-safe IaC for Dart" width="520">
  </picture>
</p>

# TerraDart

> **Type-safe IaC for Dart.**
>
> Google Cloud infrastructure as real Dart code — typed, refactor-safe, drop-in for `terraform apply`.

**Alpha** — no SemVer until v1.0.0, but breaking changes land only on **minor** bumps. Pin `^0.24.x`, read [`MIGRATING.md`](MIGRATING.md) before minor bumps, and see [status on terradart.dev](https://terradart.dev/docs/status/).

<!-- identity -->
[![pub: terradart_core](https://img.shields.io/pub/v/terradart_core.svg?label=pub%3A%20core)](https://pub.dev/packages/terradart_core)
[![pub: terradart_codegen](https://img.shields.io/pub/v/terradart_codegen.svg?label=pub%3A%20codegen)](https://pub.dev/packages/terradart_codegen)
[![pub: terradart_google](https://img.shields.io/pub/v/terradart_google.svg?label=pub%3A%20google)](https://pub.dev/packages/terradart_google)
[![pub points](https://img.shields.io/pub/points/terradart_core)](https://pub.dev/packages/terradart_core/score)
[![Dart SDK](https://img.shields.io/badge/Dart-%E2%89%A53.6-blue.svg)](https://dart.dev)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
<!-- health -->
[![CI](https://github.com/nozomi-koborinai/terradart/actions/workflows/ci.yml/badge.svg)](https://github.com/nozomi-koborinai/terradart/actions/workflows/ci.yml)
[![Schema Bump](https://github.com/nozomi-koborinai/terradart/actions/workflows/schema-bump.yml/badge.svg)](https://github.com/nozomi-koborinai/terradart/actions/workflows/schema-bump.yml)

```dart
// infra/lib/app_infra.dart
// A Stack is one Terraform root module of GCP resources, written in Dart.
import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/cloud_sql.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';

final class AppInfraStack extends Stack {
  AppInfraStack({required String projectId})
      : super(providers: [
          GoogleProvider(project: projectId, region: 'asia-northeast1'),
        ]) {
    add(GoogleSqlDatabaseInstance(
      localName: 'app_sql',
      name: TfArg.literal('app-sql'),
      databaseVersion: TfArg.literal(DatabaseVersion.postgres15),
      region: TfArg.literal('asia-northeast1'),
      settings: SqlDatabaseInstanceSettings(
        tier: TfArg.literal('db-f1-micro'),
      ),
    ));

    final runSa = add(GoogleServiceAccount(
      localName: 'run_sa',
      accountId: TfArg.literal('app-run-sa'),
    ));
    add(GoogleProjectIamMember(
      localName: 'run_sa_sql_client',
      project: TfArg.literal(projectId),
      role: TfArg.literal('roles/cloudsql.client'),
      member: TfArg.ref(runSa.iamMember),
    ));

    add(GoogleCloudRunV2Service(
      localName: 'app',
      name: TfArg.literal('app'),
      location: TfArg.literal('asia-northeast1'),
      template: CloudRunV2ServiceTemplate(
        serviceAccount: TfArg.ref(runSa.email),
        containers: [
          CloudRunV2ServiceServiceContainer(
            name: TfArg.literal('app'),
            image: TfArg.literal('gcr.io/cloudrun/hello'),
            ports: CloudRunV2ServiceContainerPort(
              containerPort: TfArg.literal(8080),
            ),
            env: [
              CloudRunV2ServiceEnvVar(
                name: TfArg.literal('DATABASE_URL'),
                source: CloudRunV2ServiceEnvVarFromLiteral(
                  TfArg.literal(
                    'postgresql://app-client@${projectId}.iam@localhost:5432/app',
                  ),
                ),
              ),
            ],
          ),
          CloudRunV2ServiceServiceContainer(
            name: TfArg.literal('cloud-sql-proxy'),
            image: TfArg.literal(
              'gcr.io/cloud-sql-connectors/cloud-sql-proxy:2.18.1',
            ),
            args: TfArg.literal([
              '--port=5432',
              '--auto-iam-authn',
              '${projectId}:asia-northeast1:app-sql',
            ]),
          ),
        ],
      ),
    ));
  }
}
```

Cloud SQL, IAM, and a multi-container Cloud Run service with a `cloud-sql-proxy` sidecar — the kind of stack you would otherwise maintain in HCL or the console. Per-service imports (`cloud_run.dart`, `cloud_sql.dart`, …) keep IDE completion scoped; the legacy `package:terradart_google/terradart_google.dart` barrel re-export remains supported.

More on [terradart.dev](https://terradart.dev/) and in [`examples/`](examples/).

## The boundary

**the boundary** = the place where infrastructure values (topic IDs, queue names, secret refs, IAM members) flow into runtime Dart code. Today that boundary is held together by string literals on both sides:

- A Pub/Sub topic name is hand-typed in HCL and again as a string literal in a Cloud Function.
- A renamed secret silently breaks runtime resolution because the reference is a string.
- IAM binding members drift between modules with no compiler visibility.

TerraDart makes this boundary a first-class artifact. The same `Topic` object whose ID is consumed by `terraform apply` is exported as a typed Dart constant your Firebase Function imports — and `dart analyze` catches drift the moment it happens.

```dart
// infra/lib/orders_stack.dart
import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';

final class OrdersStack extends Stack {
  OrdersStack({required String projectId})
      : super(providers: [GoogleProvider(project: projectId)]) {
    final orders = GooglePubsubTopic(
      localName: 'orders',
      name: TfArg.literal('orders-prod'),
      messageRetentionDuration: TfArg.literal('604800s'),
    );
    add(orders);
    addExport('ORDERS_TOPIC', ResourceIdExport(orders.nameRef));
  }
}
```

```dart
// functions/lib/orders_handler.dart  (regenerated on synth)
import 'package:my_app_infra/exports.g.dart';

Future<void> handle(PubsubEvent event) async {
  if (event.topic == OrdersStackExports.ORDERS_TOPIC) {
    // ... process event
  }
}
```

Rename `orders-prod` in the Stack and the handler will not compile until the reference is fixed.

## Why TerraDart

A Dart team that wants to describe Google Cloud infrastructure has had three options up to now, none of which keep this boundary type-safe:

- **HCL** is mature and battle-tested, but the only way a Dart subscriber can read a topic ID is `terraform output | jq` and string parsing. The boundary is a string literal on both sides.
- **CDKTF** was the natural home for "infrastructure as real code" on top of Terraform. HashiCorp [archived CDKTF in December 2025](https://github.com/hashicorp/terraform-cdk); its TypeScript / Python / Java / Go targets never reached Dart, and the project's deprecation removes the long-term incentive for anyone to add it.
- **Pulumi** ships first-class TypeScript / Python / Go / Java / .NET SDKs, but no Dart SDK and no announced plans. Its state and provider-invocation model also diverge from the standard `terraform apply` pipeline most teams already run.

TerraDart deliberately occupies the Dart-shaped slot CDKTF did not reach and Pulumi did not pursue — synthesizing standard `*.tf.json` so your existing `terraform apply` pipeline runs unchanged.

## What you get

### Typed enums for every fixed-value field

```dart
GoogleStorageBucket(
  localName: 'assets',
  name: TfArg.literal('my-app-assets-prod'),
  storageClass: TfArg.literal(BucketStorageClass.standard),  // not 'STANDARD'
);
// BucketStorageClass.standerd ← typo: compile error
```

The `.terraformValue` getter convention encodes `BucketStorageClass.standard` as `"STANDARD"` at synth time. `ArgumentError` (not silent wrong JSON) on missing convention.

### Sealed types for exactly-one-of nested blocks

```dart
GoogleCloudRunV2Service(
  template: Template(
    containers: [ServiceContainer(
      image: TfArg.literal('gcr.io/cloudrun/hello'),
      env: [
        EnvVar(name: 'LOG_LEVEL',
               source: EnvVarFromLiteral(TfArg.literal('info'))),
        EnvVar(name: 'DB_PASSWORD',
               source: EnvVarFromSecret(secret: TfArg.literal('db-pwd'))),
      ],
    )],
  ),
);
```

`EnvVarSource` is a sealed type — the compiler keeps `env.value` and `env.value_source.secret_key_ref` mutually exclusive. Same pattern for BigQuery's 8-variant `Access`, Cloud Storage's `BucketObjectContent`, Cloud Run's `VolumeSource`.

### Plain Dart, not a templating DSL

`Stack` subclasses are regular Dart classes. Loops, conditionals, env config, dependency injection — all work the way they already work. There is no synth CLI; you call `stack.writeTo('tf-out')` from your own `bin/infra.dart` (or `stack.synth()` for an in-memory `SynthResult` without writing to disk).

## Quickstart

```yaml
# pubspec.yaml
dependencies:
  terradart_core: ^0.24.x
  terradart_google: ^0.24.x
```

```bash
dart pub get
dart run bin/infra.dart                                  # synth → tf-out/
cd tf-out && terraform init && terraform apply
```

Runnable end-to-end:  [`examples/pubsub_quickstart/`](examples/pubsub_quickstart/).

## terradart-mcp

**Alpha.** [`terradart-mcp`](packages/terradart_agent/) is an MCP server that exposes the curated factory **catalog** to coding agents (Claude Code, Cursor, Claude Desktop). Five read-only tools — `list_barrels`, `list_resources`, `get_resource_schema`, `get_quickstart`, and `check_coverage` — help agents author correct Dart without guessing factory names. It does **not** run Terraform or touch GCP.

```sh
brew install nozomi-koborinai/tap/terradart-mcp
# or download from GitHub releases — see packages/terradart_agent/README.md
```

Docs: [terradart.dev/docs/agent/](https://terradart.dev/docs/agent/)

## What ships

[`terradart_google`](packages/terradart_google/README.md) ships **1186 curated resource factories + 1 data source** (1187 catalog entries) across per-service barrels (`compute`, `pubsub`, `cloud_run`, `bigquery`, …). Surfaces include Compute, GKE, BigQuery, Cloud Run, IAM, networking, and Vertex AI.

The full factory table with example pointers is on [Coverage](https://terradart.dev/docs/coverage/). In Dart, discover factories via `package:terradart_google/catalog.dart` (`terradartCatalog`). CI verifies regeneration is byte-deterministic via `terradart wrap --check`.

For any other `google_*` resource: open a [feature request](https://github.com/nozomi-koborinai/terradart/issues/new/choose) to discuss adding it to the curated surface.

## Examples

Foundational

- [Pub/Sub topic/schema IAM member / binding / policy](examples/pubsub_quickstart/)
- [Cloud Tasks queue + IAM member](examples/cloud_tasks_quickstart/)
- [Secret Manager (write-only fields + global/regional secret IAM binding/policy)](examples/secret_manager_quickstart/)
- [Cloud Scheduler → Pub/Sub target](examples/cloud_scheduler_quickstart/)
- [Apigee data collector + analytics datastore](examples/apigee_quickstart/)
- [IAM members across Pub/Sub, Tasks, Secret Manager, and IAP (App Engine, Agent Registry, location web), plus OS Login SSH public key](examples/iam_quickstart/)
- [Privileged Access Manager entitlement](examples/privileged_access_manager_quickstart/)
- [WIF trust-domain pool + namespace + managed identity](examples/wif_trust_domain_quickstart/)
- [Project IAM audit config + deny policy](examples/project_iam_audit_config_quickstart/)
- [IAP settings + location-web IAM binding/policy](examples/iap_settings_quickstart/)
- [Application Integration client + dummy auth config](examples/integrations_quickstart/)
- [Cloud Endpoints OpenAPI service + service IAM member](examples/endpoints_quickstart/)
- [IAP tunnel destination group](examples/iap_tunnel_quickstart/)
- [Identity Platform tenant](examples/identity_platform_quickstart/)
- [Container Analysis note + note IAM binding/policy](examples/container_analysis_quickstart/)
- [App Hub application](examples/apphub_quickstart/)

Compute & networking

- [Compute network + external address (typed enums)](examples/compute_quickstart/) — extended with bulk per-instance MIG config, global + regional network firewall policy (rule + IAM member), and zonal VM extension policy
- [GKE cluster + node pool + Hub fleet membership](examples/gke_quickstart/)
- [DNS managed zone (private) + zone IAM binding/policy](examples/dns_quickstart/)

Data & storage

- [GCS bucket + bucket object](examples/storage_quickstart/)
- [Cloud Storage Intelligence project config](examples/storage_intelligence_quickstart/)
- [Storage Transfer + inventory reports + ACLs](examples/storage_transfer_quickstart/)
- [BigQuery Data Policy V2 (raw access + email mask)](examples/bigquery_datapolicyv2_quickstart/)
- [BigQuery dataset (sealed `Access` hierarchy)](examples/bigquery_quickstart/)
- [Cloud Bigtable instance + table + views + IAM](examples/bigtable_quickstart/)
- [Data Catalog taxonomy / entry / tag template](examples/data_catalog_quickstart/)
- [Data Lineage config](examples/data_lineage_quickstart/)
- [Dataform team folder + nested folder](examples/dataform_quickstart/)
- [Cloud Asset Inventory project feed](examples/cloud_asset_quickstart/)
- [Dataplex data product + IAM member](examples/dataplex_quickstart/)
- [Vertex AI Search data store + engine + schema / control / serving config + IAM](examples/discovery_engine_quickstart/)
- [Cloud KMS project Autokey config](examples/kms_autokey_quickstart/)
- [Cloud KMS keyring + crypto key + ciphertext/import job](examples/kms_quickstart/)
- [License Manager Office SPLA configuration](examples/license_manager_quickstart/)
- [Model Armor template](examples/model_armor_quickstart/)
- [Transcoder job template](examples/transcoder_quickstart/)
- [Spanner user-managed instance config](examples/spanner_instance_config_quickstart/)
- [Firebase Security Rules ruleset](examples/firebaserules_quickstart/)
- [Vector Search collection](examples/vector_quickstart/)
- [Migration Center sources, discovery, import, groups, and reports](examples/migration_center_quickstart/)
- [Dataproc Metastore service and federation](examples/dataproc_metastore_quickstart/)
- [Dataproc autoscaling policy + workflow template](examples/dataproc_autoscaling_quickstart/)
- [Filestore High Scale SSD snapshot](examples/filestore_quickstart/)
- [Artifact Registry project config + Docker repo + download rule + location tag binding](examples/artifact_registry_quickstart/)

Application platform & operations

- [Cloud Run v2 service (sealed `EnvVarSource`)](examples/cloud_run_quickstart/)
- [Cloud Run v1 hello service](examples/cloud_run_v1_quickstart/)
- [Access Context Manager policy + perimeter](examples/access_context_quickstart/)
- [OS Config + Binary Authorization VM compliance](examples/vm_compliance_quickstart/) (STOPPED v2 policy orchestrator)
- [API Keys + reCAPTCHA Enterprise + connectivity test](examples/api_security_quickstart/)
- [Logging sinks (project / folder / org) → BigQuery](examples/ops_quickstart/)
- [Monitoring alert policy with typed `Aligner` / `Reducer`](examples/monitoring_quickstart/)
- [Infrastructure Manager Git blueprint deployment](examples/config_deployment_quickstart/)
- [Dialogflow CX SIP trunk](examples/dialogflow_quickstart/)
- [Dialogflow ES agent + intent / entity type / fulfillment / version / environment](examples/dialogflow_es_quickstart/)
- [Customer Engagement Suite app + agent + toolset + example + deployment](examples/ces_quickstart/)
- [Developer Connect account connector](examples/developer_connect_quickstart/)
- [NetApp Volumes metadata (vault / policy / host group)](examples/netapp_metadata_quickstart/)
- [Network Connectivity CCI transport](examples/network_connectivity_quickstart/)
- [Network Connectivity Center hub / spoke](examples/ncc_hub_quickstart/)
- [Network Security ULL mirroring](examples/network_security_ull_quickstart/)
- [Oracle GoldenGate deployment and connections](examples/oracle_goldengate_quickstart/)
- [Oracle Autonomous Database on ODB networking](examples/oracle_autonomous_database_quickstart/)
- [Oracle Base Database DB System](examples/oracle_db_system_quickstart/)
- [Oracle Exadata and ExaDB](examples/oracle_exadata_quickstart/)
- [Chronicle custom list](examples/chronicle_quickstart/)
- [Eventarc message bus + pipeline + Pub/Sub trigger](examples/eventarc_quickstart/)
- [Resource Manager tags (key + value + binding + IAM member/binding/policy)](examples/tags_quickstart/)
- [Service Directory namespace + service + endpoint + IAM member/binding/policy](examples/service_directory_quickstart/)
- [Workflows workflow from inline YAML](examples/workflows_quickstart/)
- [App Engine application + standard/flex versions + routing](examples/app_engine_quickstart/)
- [Compute static route + Cloud Router Named Set + network firewall policy IAM + project metadata item](examples/compute_route_quickstart/)
- [Compute zonal instance settings](examples/compute_instance_settings_quickstart/)
- [Compute Engine preview feature](examples/compute_preview_feature_quickstart/)
- [Compute Engine rollout plan](examples/compute_rollout_quickstart/)
- [Compute VPN gateway shells](examples/compute_vpn_gateway_quickstart/)
- [Compute project Cloud Armor tier](examples/compute_cloud_armor_tier_quickstart/)
- [Compute project default network tier](examples/compute_default_network_tier_quickstart/)
- [Compute Engine usage export bucket](examples/usage_export_quickstart/)
- [Compute project snapshot settings](examples/compute_snapshot_settings_quickstart/)
- [Document AI OCR processor + default version](examples/document_ai_quickstart/)
- [Parameter Manager global + regional parameters](examples/parameter_manager_quickstart/)
- [Network Security address group + URL list](examples/network_security_lists_quickstart/)
- [Network Security client + server TLS policies](examples/network_security_tls_quickstart/)
- [Network Security gateway security policy + ALLOW rule](examples/network_security_gateway_policy_quickstart/)
- [Network Security backend authentication config](examples/network_security_backend_auth_quickstart/)
- [Network Security DNS threat detector](examples/network_security_dns_threat_quickstart/)
- [Network Management VPC Flow Logs config](examples/network_management_vpc_flow_logs_quickstart/)
- [Public CA ACME external account key](examples/public_ca_quickstart/)
- [Network Services Mesh + HTTP/gRPC/TCP routes + endpoint policy](examples/network_services_mesh_quickstart/)
- [Cloud Healthcare dataset + DICOM/consent/HL7v2/FHIR stores](examples/healthcare_quickstart/)
- [Contact Center AI Insights analysis rule + view + QA scorecard/revision/question + assessment + auto-labeling](examples/contact_center_insights_quickstart/)
- [Colab Enterprise runtime template + template IAM + paused schedule](examples/colab_quickstart/)
- [Cloud Source Repositories repo + IAM](examples/sourcerepo_quickstart/)
- [Vertex AI Workbench environment (container image)](examples/notebooks_quickstart/)
- [Sensitive Data Protection (DLP) inspect / de-identify templates + stored info type + paused job trigger](examples/dlp_quickstart/)
- [Cloud Observability trace scope](examples/observability_quickstart/)
- [GKE Hub fleet scope, namespace, scope RBAC, and rollout sequence (no cluster)](examples/gke_hub_quickstart/)
- [GKE Hub Multi-Cluster Service Discovery feature](examples/gke_hub_feature_quickstart/)

## How it compares

|   | TerraDart | HCL | CDKTF | Pulumi |
|---|---|---|---|---|
| Dart authoring | ✅ | ❌ | ❌ (TS / Py / Java / Go) | ❌ (TS / Py / Go / etc.) |
| Type-safe handoff to your app | ✅ (compile-time) | ❌ (`terraform output` + parse) | ❌ (no Dart) | ❌ (no Dart) |
| Drop-in for `terraform apply` | ✅ (emits `*.tf.json`) | ✅ (native) | ✅ | ⚠️ (different state model) |
| Project status | Alpha | Mature | **Archived Dec 2025** | Active |

## Non-goals

- **Not a Terraform replacement.** TerraDart synthesizes JSON; `terraform plan / apply` runs as before. State stays where you already keep it.
- **Not a multi-cloud tool yet.** Google provider only. AWS / Azure may follow if the curated surface stabilizes — no promise.
- **Not a constructs framework.** Composite abstractions are out of scope for the pre-1.0 cycle.
- **Not module-block support.** Compose Terraform modules in HCL alongside TerraDart-generated `*.tf.json` — both feed the same `terraform apply`.

## Status

**Alpha**, pre-1.0 (0.24.x). No SemVer until v1.0.0, but breaking changes land only on **minor** bumps, always documented in [`MIGRATING.md`](MIGRATING.md); pin `^0.24.x` and take patches freely. Beta needs external validation — see the [path to beta](https://terradart.dev/docs/status/#path-to-beta). Expectations: [terradart.dev/docs/status/](https://terradart.dev/docs/status/).

## Schema-bump automation (Plan 5.E)

A weekly GitHub Actions workflow (`.github/workflows/schema-bump.yml`)
auto-detects new `terraform-provider-google` v7 minor/patch releases and
upstream `magic-modules` MM YAML overlay updates. Each Monday morning JST
the workflow opens a PR titled `chore(schema): weekly bump YYYY-MM-DD`
whose body is a structured drift report. When the workflow finds nothing
to report, no PR is created.

**Weekly maintenance flow:**

1. PR appears (or not — silence means clean week).
2. Read the drift report's Summary table. If everything is ✅, squash-merge.
3. Wrappers (and barrels) are regenerated by the workflow and included in
   the PR — the `wrap --check` row confirms the committed result. If the
   regenerate step failed, fix `wrapper_overrides/yaml/*.yaml` locally,
   re-run `terradart wrap`, and push to the bump branch.
4. For new resources: review the appended `tool/curation_backlog.yaml`
   entries and decide whether to queue them for a future Wave.
5. For a `⚠️ NEW MAJOR AVAILABLE: v8.x` banner: do not bump in the same PR —
   plan a separate v8 migration effort (curated-surface regression sweep).

**Ad-hoc trigger:** workflow_dispatch on the Actions tab (with `dry_run`
input for detection-only runs).

**Repo secret:** `SCHEMA_BUMP_PAT` — a fine-grained PAT with **Contents**
and **Pull requests** write access. The default `GITHUB_TOKEN` can push the
bump branch but cannot open the PR when the repository blocks Actions from
creating pull requests.

**Why not Renovate for terraform-provider-google?** Renovate has no
auto-detection path with our repo shape (no `.tf` or `.terraform-version`
file). The schema-bump workflow is the single source of truth for provider
bump tracking. Dart toolchain bumps still use Renovate as configured in
`renovate.json`.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). For security issues, use the [GitHub private security advisory flow](SECURITY.md).

## Trademarks

"Terraform" is a registered trademark of HashiCorp, Inc.

Dart™ and the related logo are trademarks of Google LLC. We are not endorsed by or affiliated with Google LLC.

TerraDart is an independent open-source project and is not affiliated with, endorsed by, or sponsored by HashiCorp or Google.

## License & acknowledgements

Apache-2.0. See [LICENSE](LICENSE).

The framing draws on prior work in [CDKTF](https://github.com/hashicorp/terraform-cdk) (archived Dec 2025), [AWS CDK](https://aws.amazon.com/cdk/), and [Pulumi](https://www.pulumi.com/).
