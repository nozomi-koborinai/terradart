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

**Pre-alpha** — no SemVer guarantees until v1.0.0. Pin `^0.14.x`, read [`MIGRATING.md`](MIGRATING.md) before bumping, and see [status on terradart.dev](https://terradart.dev/docs/status/).

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
  terradart_core: ^0.14.x
  terradart_google: ^0.14.x
```

```bash
dart pub get
dart run bin/infra.dart                                  # synth → tf-out/
cd tf-out && terraform init && terraform apply
```

Runnable end-to-end:  [`examples/pubsub_quickstart/`](examples/pubsub_quickstart/).

## terradart-mcp

**Pre-alpha.** [`terradart-mcp`](packages/terradart_agent/) is an MCP server that exposes the curated factory **catalog** to coding agents (Claude Code, Cursor, Claude Desktop). Four read-only tools — `list_barrels`, `list_resources`, `get_resource_schema`, `get_quickstart` — help agents author correct Dart without guessing factory names. It does **not** run Terraform or touch GCP.

```sh
brew install nozomi-koborinai/tap/terradart-mcp
# or download from GitHub releases — see packages/terradart_agent/README.md
```

Docs: [terradart.dev/docs/agent/](https://terradart.dev/docs/agent/)

## What ships

[`terradart_google`](packages/terradart_google/README.md) ships **218 curated resource factories + 1 data source** (219 catalog entries): AlloyDB (4 — cluster + instance + user + backup), Artifact Registry (2 — repository + repository IAM member), BigQuery (22 — dataset / table / dataset_iam_member / table_iam_member + job / routine / routine_iam_member / data_transfer_config / reservation / capacity_commitment / connection + assignment / row access / data policy / datapolicy IAM + Analytics Hub exchange/listing/IAM/subscription + BI reservation + connection IAM), Certificate Manager (6 — DNS authorization / certificate / certificate map / map entry / trust config / issuance config), Private CA (5 — CA pool + pool IAM member + certificate authority + certificate + certificate template), Cloud Build (4 — v2 SCM connection / v2 repository / trigger + worker pool), Cloud Functions (2), Cloud Run v2 (6), Cloud Scheduler (1), Cloud SQL (5 — instance / database / user + SSL cert + source representation), Cloud Tasks (2), Container / GKE (4 — cluster + node pool + fleet + membership), GKE Backup (6 — plans + channels + plan IAM members), Apigee (2 — data collector + GCS datastore), Dataplex (2 — data product + IAM member), data collector + GCS datastore), Compute (51 — including Cloud Router and the full L7 Application LB stack: forwarding rules + target proxies + URL maps + backend services + managed/self-managed SSL + MIG + Autoscaler + NEG + Cloud Armor + SSL Policy + health checks + SSL/TCP proxies + PSC + regional Armor/SSL + network endpoints + security policy rules + zonal disk / region disk / regional instant snapshot / snapshot IAM member), DNS (6 — managed zone + zone IAM + policy + record set + response policy + rule), Eventarc (7 — trigger + channel + channel config + enrollment + API source + message bus + pipeline), Firebase App Check (8), Firebase App Hosting (5), Firebase Data Connect (1), Firebase Remote Config (1), Cloud Filestore (3 — instance + backup + snapshot), Firestore (5), IAM (7 — service accounts + project IAM + workload identity pool + provider), IAP (2 — web backend service IAM binding + member), KMS (5), Logging (11 — metric + sinks + bucket / view / IAM / exclusion / saved query / log scope / linked dataset), Monitoring (10 — alert policy + notification channel + uptime check + dashboard + metric descriptor / service + SLO / group / custom service / monitored project), project service enablement (1), Pub/Sub (6 — topic / subscription / 2 iam_member + schema + schema_iam_member), Memorystore Memcached (1 — instance), Memorystore Redis (1 — instance), Cloud Spanner (2 — instance + database), Secret Manager (3), Service Networking (2 — connection + VPC access connector), Cloud Storage (6 — bucket / bucket_object / bucket_iam_member + notification + hmac_key + managed folder), and the `google_project` data source. CI verifies regeneration is byte-deterministic via `terradart wrap --check`.

For any other `google_*` resource: open a [feature request](https://github.com/nozomi-koborinai/terradart/issues/new/choose) to discuss adding it to the curated surface.

## Examples

Foundational

- [Pub/Sub topic + IAM member](examples/pubsub_quickstart/)
- [Cloud Tasks queue + IAM member](examples/cloud_tasks_quickstart/)
- [Secret Manager (write-only fields)](examples/secret_manager_quickstart/)
- [Cloud Scheduler → Pub/Sub target](examples/cloud_scheduler_quickstart/)
- [Apigee data collector + analytics datastore](examples/apigee_quickstart/)
- [IAM members across all four services](examples/iam_quickstart/)

Compute & networking

- [Compute network + external address (typed enums)](examples/compute_quickstart/)
- [GKE cluster + node pool + Hub fleet membership](examples/gke_quickstart/)
- [DNS managed zone (private + DNSSEC)](examples/dns_quickstart/)

Data & storage

- [GCS bucket + bucket object](examples/storage_quickstart/)
- [BigQuery dataset (sealed `Access` hierarchy)](examples/bigquery_quickstart/)
- [Dataplex data product + IAM member](examples/dataplex_quickstart/)
- [Cloud KMS keyring + crypto key](examples/kms_quickstart/)

Application platform & operations

- [Cloud Run v2 service (sealed `EnvVarSource`)](examples/cloud_run_quickstart/)
- [Logging sinks (project / folder / org) → BigQuery](examples/ops_quickstart/)
- [Monitoring alert policy with typed `Aligner` / `Reducer`](examples/monitoring_quickstart/)
- [Eventarc message bus + pipeline + Pub/Sub trigger](examples/eventarc_quickstart/)

## How it compares

|   | TerraDart | HCL | CDKTF | Pulumi |
|---|---|---|---|---|
| Dart authoring | ✅ | ❌ | ❌ (TS / Py / Java / Go) | ❌ (TS / Py / Go / etc.) |
| Type-safe handoff to your app | ✅ (compile-time) | ❌ (`terraform output` + parse) | ❌ (no Dart) | ❌ (no Dart) |
| Drop-in for `terraform apply` | ✅ (emits `*.tf.json`) | ✅ (native) | ✅ | ⚠️ (different state model) |
| Project status | Pre-alpha | Mature | **Archived Dec 2025** | Active |

## Non-goals

- **Not a Terraform replacement.** TerraDart synthesizes JSON; `terraform plan / apply` runs as before. State stays where you already keep it.
- **Not a multi-cloud tool yet.** Google provider only. AWS / Azure may follow if the curated surface stabilizes — no promise.
- **Not a constructs framework.** Composite abstractions are out of scope for the pre-alpha cycle.
- **Not module-block support.** Compose Terraform modules in HCL alongside TerraDart-generated `*.tf.json` — both feed the same `terraform apply`.

## Status

**Pre-alpha**, pre-1.0 (0.14.x). No SemVer guarantees until v1.0.0; pin `^0.14.x` and read [`MIGRATING.md`](MIGRATING.md) before every minor bump. Beta is planned from **v0.14.0** once [readiness gates](https://terradart.dev/docs/status/#beta-readiness-checklist) are met. Expectations: [terradart.dev/docs/status/](https://terradart.dev/docs/status/).

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
3. For wrap `--check` divergence: re-run `terradart wrap` locally and adjust
   `wrapper_overrides/yaml/*.yaml` as needed.
4. For new resources: review the appended `tool/curation_backlog.yaml`
   entries and decide whether to queue them for a future Wave.
5. For a `⚠️ NEW MAJOR AVAILABLE: v8.x` banner: do not bump in the same PR —
   plan a separate v8 migration effort (curated-surface regression sweep).

**Ad-hoc trigger:** workflow_dispatch on the Actions tab (with `dry_run`
input for detection-only runs).

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
