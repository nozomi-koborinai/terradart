<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="branding/png/logo-horizontal-dark-1024.png">
    <img src="branding/png/logo-horizontal-1024.png" alt="TerraDart — Type-safe IaC for Dart" width="520">
  </picture>
</p>

# TerraDart

> **Type-safe IaC for Dart.**
>
> Cloud infrastructure as real Dart code — typed, refactor-safe, drop-in for `terraform apply`.

**Alpha** — no SemVer until v1.0.0, but breaking changes land only on **minor** bumps. Pin `^0.27.x`, read [`MIGRATING.md`](MIGRATING.md) before minor bumps, and see [status on terradart.dev](https://terradart.dev/docs/status/).

[![CI](https://github.com/nozomi-koborinai/terradart/actions/workflows/ci.yml/badge.svg)](https://github.com/nozomi-koborinai/terradart/actions/workflows/ci.yml)
[![Dart SDK](https://img.shields.io/badge/Dart-%E2%89%A53.6-blue.svg)](https://dart.dev)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![Docs](https://img.shields.io/badge/docs-terradart.dev-blue.svg)](https://terradart.dev)

---

See [terradart.dev](https://terradart.dev) for documentation, guides, and API reference.

| Package | Description | Pub |
| :--- | :--- | :--- |
| [`terradart_core`](packages/terradart_core) | Core runtime — `Stack`, `Resource`, `Provider`, `Data`, `TfArg`, and synth behavior. | [![pub](https://img.shields.io/pub/v/terradart_core.svg)](https://pub.dev/packages/terradart_core) |
| [`terradart_google`](packages/terradart_google) | Curated factory wrappers for Google Cloud resources (`hashicorp/google`). | [![pub](https://img.shields.io/pub/v/terradart_google.svg)](https://pub.dev/packages/terradart_google) |
| [`terradart_google_beta`](packages/terradart_google_beta) | Curated factory wrappers for beta-only Google Cloud resources (`hashicorp/google-beta`). | [![pub](https://img.shields.io/pub/v/terradart_google_beta.svg)](https://pub.dev/packages/terradart_google_beta) |
| [`terradart_appwrite`](packages/terradart_appwrite) | Curated factory wrappers for Appwrite resources (`appwrite/appwrite`). | [![pub](https://img.shields.io/pub/v/terradart_appwrite.svg)](https://pub.dev/packages/terradart_appwrite) |
| [`terradart_cloudflare`](packages/terradart_cloudflare) | Curated factory wrappers for Cloudflare resources (`cloudflare/cloudflare`). | [![pub](https://img.shields.io/pub/v/terradart_cloudflare.svg)](https://pub.dev/packages/terradart_cloudflare) |
| [`terradart_agent`](packages/terradart_agent) | MCP server (`terradart-mcp`) exposing the curated factory catalog to AI agents. | *(unlisted)* |
| [`terradart_codegen`](packages/terradart_codegen) | Maintainer generation tooling and CLI (`terradart wrap`). | [![pub](https://img.shields.io/pub/v/terradart_codegen.svg)](https://pub.dev/packages/terradart_codegen) |

---

## Quickstart

```yaml
# pubspec.yaml
dependencies:
  terradart_core: ^0.27.x
  terradart_google: ^0.27.x
```

```dart
// docs:pitch:start
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
// docs:pitch:end
```

```bash
dart pub get
dart run bin/infra.dart                                  # synth → tf-out/
cd tf-out && terraform init && terraform apply
```

Per-service imports (`cloud_run.dart`, `cloud_sql.dart`, …) keep IDE completion scoped; the legacy `package:terradart_google/terradart_google.dart` barrel re-export remains supported.

Runnable end-to-end example: [`examples/pubsub_quickstart/`](examples/pubsub_quickstart/).

---

## What you get

### The boundary: type-safe handoff to your runtime code

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

---

## AI Agent MCP Server (`terradart-mcp`)

**Alpha.** [`terradart-mcp`](packages/terradart_agent/) is an MCP server that exposes the curated factory **catalog** to coding agents (Claude Code, Cursor, Claude Desktop). Five read-only tools — `list_barrels`, `list_resources`, `get_resource_schema`, `get_quickstart`, and `check_coverage` — help agents author correct Dart without guessing factory names. It does **not** run Terraform or touch GCP.

```sh
brew install nozomi-koborinai/tap/terradart-mcp
# or download from GitHub releases — see packages/terradart_agent/README.md
```

Docs: [terradart.dev/docs/agent/](https://terradart.dev/docs/agent/)

---

## Coverage & Examples

- [`terradart_google`](packages/terradart_google/README.md) ships **1333 curated resource factories + 461 data sources** (1794 catalog entries) across per-service barrels (`compute`, `pubsub`, `cloud_run`, `bigquery`, …). The GA `hashicorp/google` catalog is filled.
- [`terradart_google_beta`](packages/terradart_google_beta/README.md) ships the **beta-only** `hashicorp/google-beta` catalog (**128 resource factories**, schema pin tracking the weekly GA bump).
- [`terradart_appwrite`](packages/terradart_appwrite/README.md) ships the filled `appwrite/appwrite` catalog at `2.0.0-beta.1` (38 resource factories + 24 data sources).
- [`terradart_cloudflare`](packages/terradart_cloudflare/README.md) ships the filled `cloudflare/cloudflare` catalog at `5.23.0` (**257 resource factories + 446 data sources**). Nested plugin-framework objects are typed Dart helpers.

Explore ready-to-run examples in [`examples/`](examples/):
- **Foundational & IAM**: [Pub/Sub](examples/pubsub_quickstart/), [Cloud Tasks](examples/cloud_tasks_quickstart/), [Secret Manager](examples/secret_manager_quickstart/), [IAM](examples/iam_quickstart/)
- **Compute & Networking**: [Compute & Firewall](examples/compute_quickstart/), [GKE](examples/gke_quickstart/), [Cloud DNS](examples/dns_quickstart/)
- **Data & Storage**: [Cloud Storage](examples/storage_quickstart/), [BigQuery](examples/bigquery_quickstart/), [Cloud Bigtable](examples/bigtable_quickstart/), [KMS](examples/kms_quickstart/)
- **Application Platform**: [Cloud Run v2](examples/cloud_run_quickstart/), [Cloud Monitoring](examples/monitoring_quickstart/), [Workflows](examples/workflows_quickstart/), [Eventarc](examples/eventarc_quickstart/)
- **AI & Agents**: [Vertex AI](examples/vertex_ai_quickstart/), [Agentic Applications](examples/agentic_applications_quickstart/)

See the full factory table on [terradart.dev/docs/coverage/](https://terradart.dev/docs/coverage/).

---

## How it compares

|   | TerraDart | HCL | CDKTF | Pulumi |
|---|---|---|---|---|
| Dart authoring | ✅ | ❌ | ❌ (TS / Py / Java / Go) | ❌ (TS / Py / Go / etc.) |
| Type-safe handoff to your app | ✅ (compile-time) | ❌ (`terraform output` + parse) | ❌ (no Dart) | ❌ (no Dart) |
| Drop-in for `terraform apply` | ✅ (emits `*.tf.json`) | ✅ (native) | ✅ | ⚠️ (different state model) |
| Project status | Alpha | Mature | **Archived Dec 2025** | Active |

---

## Non-goals

- **Not a Terraform replacement.** TerraDart synthesizes JSON; `terraform plan / apply` runs as before. State stays where you already keep it.
- **Not a multi-cloud abstraction layer.** Curated wrappers faithfully mirror provider schemas rather than imposing cross-cloud abstractions.
- **Not a constructs framework.** Composite abstractions are out of scope for the pre-1.0 cycle.
- **Not module-block support.** Compose Terraform modules in HCL alongside TerraDart-generated `*.tf.json` — both feed the same `terraform apply`.

---

## Status

**Alpha**, pre-1.0 (0.27.x). No SemVer until v1.0.0, but breaking changes land only on **minor** bumps, always documented in [`MIGRATING.md`](MIGRATING.md); pin `^0.27.x` and take patches freely. Beta needs external validation — see the [path to beta](https://terradart.dev/docs/status/#path-to-beta). Expectations: [terradart.dev/docs/status/](https://terradart.dev/docs/status/).

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). For security issues, use the [GitHub private security advisory flow](SECURITY.md).

---

## Trademarks

"Terraform" is a registered trademark of HashiCorp, Inc.

Dart™ and the related logo are trademarks of Google LLC. We are not endorsed by or affiliated with Google LLC.

TerraDart is an independent open-source project and is not affiliated with, endorsed by, or sponsored by HashiCorp or Google.

---

## License & acknowledgements

Apache-2.0. See [LICENSE](LICENSE).

The framing draws on prior work in [CDKTF](https://github.com/hashicorp/terraform-cdk) (archived Dec 2025), [AWS CDK](https://aws.amazon.com/cdk/), and [Pulumi](https://www.pulumi.com/).
