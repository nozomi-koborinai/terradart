<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="branding/png/logo-horizontal-dark-1024.png">
    <img src="branding/png/logo-horizontal-1024.png" alt="TerraDart — Type-safe IaC for Dart" width="520">
  </picture>
</p>

# TerraDart

> **Type-safe IaC for Dart.**
>
> Write your infrastructure and your app in one typed Dart codebase. TerraDart synthesizes Terraform JSON for Google Cloud, AWS, Cloudflare and Appwrite, and hands the values your app needs — topic names, IDs, URLs — to it as typed Dart instead of copied strings. The `terradart` command plans and applies it with OpenTofu, and you never install Terraform.

**Alpha** — no SemVer until v1.0.0, but breaking changes land only on **minor** bumps. Pin `^0.33.0`, read [`MIGRATING.md`](MIGRATING.md) before minor bumps, and see [status on terradart.dev](https://terradart.dev/docs/status/).

[![CI](https://github.com/nozomi-koborinai/terradart/actions/workflows/ci.yml/badge.svg)](https://github.com/nozomi-koborinai/terradart/actions/workflows/ci.yml)
[![Dart SDK](https://img.shields.io/badge/Dart-%E2%89%A53.10-blue.svg)](https://dart.dev)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![Docs](https://img.shields.io/badge/docs-terradart.dev-blue.svg)](https://terradart.dev)

---

## Quickstart

```yaml
# pubspec.yaml
name: my_app
environment:
  sdk: ^3.10.0
dependencies:
  terradart_core: ^0.33.0
  terradart_google: ^0.33.0  # or terradart_aws / terradart_cloudflare / terradart_appwrite
```

A `Stack` is one Terraform root module, written as a Dart class. This one runs an API on Cloud Run that publishes to a Pub/Sub topic, and tells the app which topic that is:

```dart
// docs:pitch:start
// lib/orders_stack.dart
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';

final class OrdersStack extends Stack {
  OrdersStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'asia-northeast1')],
        appExports: AppExports('lib/generated/orders_stack.app.dart'),
      ) {
    final orders = add(GooglePubsubTopic('orders', name: .literal('orders')));
    final apiSa = add(GoogleServiceAccount('api', accountId: .literal('orders-api')));
    add(GooglePubsubTopicIamMember(
      'api_publishes_orders',
      topic: orders.ref, // only a GooglePubsubTopic fits here
      role: .literal('roles/pubsub.publisher'),
      member: apiSa.principal,
    ));

    // Typed in the app: a constant now, an output after apply.
    addConstant('ordersTopic', .ref(orders.name));
    addOutput('orders_topic_id', orders.id);

    final api = add(GoogleCloudRunV2Service(
      'api',
      name: .literal('orders-api'),
      location: .literal('asia-northeast1'),
      ingress: .all, // an enum, not a string
      template: CloudRunV2ServiceTemplate(
        serviceAccount: apiSa.ref,
        containers: [
          .new(
            image: .literal('us-docker.pkg.dev/my-project/app/orders-api'),
            env: [
              for (final (:name, :value) in outputEnvironment())
                .new(name: .literal(name), source: .value(value)),
            ],
          ),
        ],
      ),
    ));

    // Pub/Sub pushes as its own service account, which may invoke the API.
    final pushSa = add(GoogleServiceAccount('push', accountId: .literal('orders-push')));
    add(GoogleCloudRunV2ServiceIamMember(
      'push_invokes_api',
      service: api.ref, // emits the service's name, location and project
      role: .literal('roles/run.invoker'),
      member: pushSa.principal,
    ));
    add(GooglePubsubSubscription(
      'orders_push',
      name: .literal('orders-push'),
      topic: orders.ref,
      // A sealed choice: push, BigQuery or Cloud Storage — exactly one.
      delivery: .pushConfig(.new(
        pushEndpoint: api.uri,
        oidcToken: .new(serviceAccountEmail: pushSa.ref),
      )),
    ));
  }
}
// docs:pitch:end
```

The app imports the file synth generates. Constants are plain Dart; outputs are read from the environment the Stack gave the service:

```dart
// lib/orders_api.dart
import 'dart:io';

import 'generated/orders_stack.app.dart';

/// The topic this service publishes to, passed in as ORDERS_TOPIC_ID.
String ordersTopicId() =>
    OrdersStackOutputs.fromEnvironment(Platform.environment).ordersTopicId;

/// Whether a pushed message came from the orders topic.
bool fromOrders(String topicName) => topicName == OrdersStackConstants.ordersTopic;
```

```dart
// bin/infra.dart
import 'package:my_app/orders_stack.dart';
import 'package:terradart_core/terradart_core.dart';

Future<void> main(List<String> args) =>
    runStack(args, () => OrdersStack(projectId: 'my-project'));
```

```bash
dart pub get
dart pub global activate terradart_cli
terradart apply
```

`terradart apply` runs `bin/infra.dart`, which writes `tf-out/main.tf.json` and `lib/generated/orders_stack.app.dart`, then `init` and `apply` in `tf-out/` with the `tofu` or `terraform` on your `PATH` — or a checksum-verified OpenTofu it downloads when there is neither. `terradart plan`, `destroy` and `outputs` work the same way; environments are a Dart enum `bin/infra.dart` hands to `runEnvironments` (`terradart apply --env prod`), and a Stack with `addDartDefineOutput()` gets the define file a Flutter client builds with. See [The terradart command](https://terradart.dev/docs/cli/), [Environments](https://terradart.dev/docs/environments/) and [Outputs in client apps](https://terradart.dev/docs/client-outputs/).

Already have `tofu` or `terraform` installed, or a pipeline that runs one? `terradart` uses the engine on your `PATH` (`--engine` picks one), and `tf-out/` is standard Terraform JSON any of them can apply. The default path is still the `terradart` command, which needs neither.

What the compiler now checks for you:

- **References are typed.** An argument that names another resource takes that resource's `ref` (`topic: orders.ref`, `serviceAccount: apiSa.ref`) and picks the attribute it emits; passing a bucket where a topic belongs does not compile. Every attribute also has a plain getter (`orders.name`, `apiSa.email`) that is itself a `TfArg`, so it passes straight into any argument of its type.
- **Fixed value sets are enums and exclusive blocks are sealed types**, written as Dart 3.10 dot shorthands: `.all`, `.pushConfig(...)`, `.value(...)`. A typo or a second delivery mode is a compile error, not a failed plan.
- **The app and the infra share one source of truth.** Rename the topic in the Stack and `OrdersStackConstants.ordersTopic` follows on the next synth; remove the output and `ordersTopicId` stops compiling. `outputEnvironment()` passes every output to the service, so no variable name is written twice. A Flutter or web client gets the same variables at build time: `addDartDefineOutput()` declares the file `--dart-define-from-file` reads (`terradart apply` and `terradart outputs` write it to `.terradart/dart_defines.json`), and `const OrdersStackOutputs.fromDartDefine()` reads it — see [Outputs in client apps](https://terradart.dev/docs/client-outputs/).
- **It is plain Dart.** Loops, conditionals and your own classes work as they always do. Synth is your own `bin/infra.dart` running; `terradart` only runs it and then the engine.

Runnable versions: [`examples/pubsub_quickstart`](examples/pubsub_quickstart/), [`examples/flutter_client_quickstart`](examples/flutter_client_quickstart/) (a Flutter app reading typed outputs after `terradart apply --env dev`), and the [`single-project-app` cookbook recipe](cookbook/single-project-app/) (Cloud Run + Cloud SQL + the app). Full walkthrough: [Getting started](https://terradart.dev/docs/getting-started/).

### Writing arguments

<!-- argument-rules:start -->
Pick the form by where the value comes from. The argument's type tells you which forms it takes, and a dot shorthand (`.literal`, `.new`, `.providedAl2023`) names the constructor of that type.

| The value is | Write | Example |
|---|---|---|
| known when you synth | `.literal(...)` | `functionName: .literal('hello')` |
| another resource of this Stack (a `RefTo<R>` input) | its `ref` | `role: role.ref` |
| one attribute of another block | its getter | `assumeRolePolicy: trust.json` |
| a resource outside this Stack (a `RefTo<R>` input) | `.literal(id)` | `zoneId: .literal('023e105f4ecef8ad9ca31a8372d0c353')` |
| one of a fixed set (an enum) | the member | `runtime: .providedAl2023` |
| one of several exclusive arguments (a sealed type) | the variant | `code: .filename(.literal('build/fn.zip'))` |
| a nested block | its helper class; `.new(...)` inside another block or a variant | `environment: LambdaFunctionEnvironment(...)` |
| a Terraform variable | the handle `variable<T>()` returns | `memorySize: memory` |
| a variable in an enum or `RefTo<R>` input | `.arg(handle)` | `runtime: .arg(runtimeName)` |
| a secret (a `Sensitive<T>` input) | a sensitive variable, never a literal | `value: .value(dbPassword)` |
| a reference inside a literal list or map | the getter's `.interpolation` | `{'ROLE_ARN': role.arn.interpolation}` |
| anything else Terraform evaluates | `.expression(...)` | `.expression(r'${file("trust.json")}')` |

```dart
final memory = variable<num>('memory_mb');
final runtimeName = variable<String>('runtime');
final dbPassword = variable<String>('db_password', sensitive: true);

final trust = add(
  DataAwsIamPolicyDocument(
    'trust',
    statement: [
      DataIamPolicyDocumentStatement(
        actions: .literal(['sts:AssumeRole']),
        principals: [
          .new(
            type: .literal('Service'),
            identifiers: .literal(['lambda.amazonaws.com']),
          ),
        ],
      ),
    ],
  ),
);
final role = add(AwsIamRole('hello', assumeRolePolicy: trust.json));
add(
  AwsLambdaFunction(
    'hello',
    functionName: .literal('hello'),
    role: role.ref,
    runtime: .arg(runtimeName),
    code: .filename(.literal('build/fn.zip')),
    memorySize: memory,
    environment: LambdaFunctionEnvironment(
      variables: .literal({'ROLE_ARN': role.arn.interpolation}),
    ),
  ),
);
add(
  AwsSsmParameter(
    'db_password',
    name: .literal('/hello/db_password'),
    type: .securestring,
    value: .value(dbPassword),
  ),
);
```
<!-- argument-rules:end -->

More on each row: [Writing arguments](https://terradart.dev/docs/arguments/).

---

## Providers

Each package wraps an official Terraform provider: one generated factory per resource and data source, with the provider's own docs, enums and exclusive groups.

| Package | Terraform provider | Catalog | Pub |
| :--- | :--- | :--- | :--- |
| [`terradart_google`](packages/terradart_google) | `hashicorp/google` | **1366 curated resource factories + 468 data sources** (1834 catalog entries) | [![pub](https://img.shields.io/pub/v/terradart_google.svg)](https://pub.dev/packages/terradart_google) |
| [`terradart_google_beta`](packages/terradart_google_beta) | `hashicorp/google-beta` | the beta-only types (**112 resource factories**); everything also in GA stays in `terradart_google` | [![pub](https://img.shields.io/pub/v/terradart_google_beta.svg)](https://pub.dev/packages/terradart_google_beta) |
| [`terradart_aws`](packages/terradart_aws) | `hashicorp/aws` | every resource and data source at the pinned provider version | [![pub](https://img.shields.io/pub/v/terradart_aws.svg)](https://pub.dev/packages/terradart_aws) |
| [`terradart_cloudflare`](packages/terradart_cloudflare) | `cloudflare/cloudflare` | every resource and data source at the pinned provider version | [![pub](https://img.shields.io/pub/v/terradart_cloudflare.svg)](https://pub.dev/packages/terradart_cloudflare) |
| [`terradart_appwrite`](packages/terradart_appwrite) | `appwrite/appwrite` | every resource and data source at `2.0.0-beta.1` (38 resource factories + 24 data sources) | [![pub](https://img.shields.io/pub/v/terradart_appwrite.svg)](https://pub.dev/packages/terradart_appwrite) |
| [`terradart_time`](packages/terradart_time) | `hashicorp/time` | `TimeSleep`, the propagation wait for a stack on any provider | [![pub](https://img.shields.io/pub/v/terradart_time.svg)](https://pub.dev/packages/terradart_time) |

All of them build on [`terradart_core`](packages/terradart_core) ([![pub](https://img.shields.io/pub/v/terradart_core.svg)](https://pub.dev/packages/terradart_core)): `Stack`, `Resource`, `Data`, `TfArg`, `RefTo` and synth. One Stack can mix providers — this one puts a Cloudflare zone in front of the Cloud Run service:

```dart
// lib/edge_stack.dart
import 'package:terradart_cloudflare/dns.dart';
import 'package:terradart_cloudflare/provider.dart';
import 'package:terradart_cloudflare/zone.dart';

final class EdgeStack extends Stack {
  EdgeStack({required String accountId}) : super(providers: [const CloudflareProvider()]) {
    final zone = add(CloudflareZone(
      'main',
      name: .literal('example.com'),
      account: ZoneAccount(id: .literal(accountId)),
    ));
    add(CloudflareDnsRecord(
      'api',
      zoneId: zone.ref,
      name: .literal('api.example.com'),
      type: .cname,
      ttl: .literal(1),
      content: .content(.literal('ghs.googlehosted.com')),
      proxied: .literal(true),
    ));
  }
}
```

Credentials never enter the synthesized JSON: each provider authenticates at apply time through its usual environment variables or credential chain. Per-provider guides: [Google Cloud](https://terradart.dev/docs/providers/google/), [AWS](https://terradart.dev/docs/providers/aws/) (Lambda, HTTP API + DynamoDB, ECS Express Mode, S3 + CloudFront), [Cloudflare](https://terradart.dev/docs/providers/cloudflare/) and [Appwrite](https://terradart.dev/docs/providers/appwrite/).

---

## Already on Terraform?

[`terradart migrate`](packages/terradart_cli/) turns an existing Terraform source tree into a TerraDart package: one `Stack` per module directory, a `tf-out/` tree mirroring the source, and a **leftover sidecar** beside each `main.tf.json` holding, verbatim and with a reason, every block it cannot translate yet. Resource addresses are preserved, so `terradart plan` against your existing state reports *No changes* — move one resource at a time, no big-bang rewrite. It reads `.tf` / `.tf.json` only: no Terraform run, no state access.

```sh
dart pub global activate terradart_cli
terradart migrate --dir infra --out infra_dart
cd infra_dart && dart pub get && terradart plan
```

`terradart migrate --report` sizes a tree without writing anything. `--merge-envs` folds sibling environments into one Stack, and `terradart plan --env <name>` runs one of them. Guide: [Migrating from HCL](https://terradart.dev/docs/migrate-from-hcl/).

---

## Tools

| Package | What it is | Pub |
| :--- | :--- | :--- |
| [`terradart_cli`](packages/terradart_cli) | The `terradart` command: synth, plan, apply, destroy, outputs, migrate and the client define file, with OpenTofu or Terraform. | [![pub](https://img.shields.io/pub/v/terradart_cli.svg)](https://pub.dev/packages/terradart_cli) |
| [`terradart_migrate`](packages/terradart_migrate) | The HCL → Dart migrator library (`terradart migrate`). | [![pub](https://img.shields.io/pub/v/terradart_migrate.svg)](https://pub.dev/packages/terradart_migrate) |
| [`terradart_hcl`](packages/terradart_hcl) | A pure Dart HCL / `*.tf.json` parser and Terraform module model — the migrator's input side. | [![pub](https://img.shields.io/pub/v/terradart_hcl.svg)](https://pub.dev/packages/terradart_hcl) |
| [`terradart_codegen`](packages/terradart_codegen) | The maintainer generation CLI (`terradart-codegen wrap`) that produces the provider packages. | [![pub](https://img.shields.io/pub/v/terradart_codegen.svg)](https://pub.dev/packages/terradart_codegen) |

**Coding agents.** The factories are generated Dart committed to the provider packages, so an agent can read the exact constructor, its doc comment and a CI-validated example instead of guessing. The [TerraDart Agent Skill](skills/terradart/SKILL.md) tells it where to look (each package's `lib/src/_catalog.g.dart`, [`examples/`](examples/), [`/llms.txt`](https://terradart.dev/llms.txt)):

```sh
npx skills add nozomi-koborinai/terradart --skill terradart
```

Docs: [terradart.dev/docs/agents/](https://terradart.dev/docs/agents/).

---

## Non-goals

- **Not a Terraform replacement.** TerraDart synthesizes Terraform JSON, and OpenTofu or Terraform plans and applies it as before. State stays where you already keep it.
- **Not a multi-cloud abstraction layer.** Curated wrappers faithfully mirror provider schemas rather than imposing cross-cloud abstractions.
- **Not a constructs framework.** Composite abstractions are out of scope for the pre-1.0 cycle.
- **Not a module system.** `addModule(ModuleCall(...))` calls an existing Terraform module by its `source`, and HCL files beside the generated `*.tf.json` feed the same apply; TerraDart does not turn modules into Dart.

How TerraDart compares with HCL, CDKTF and Pulumi: [Why TerraDart](https://terradart.dev/docs/why-terradart/).

---

## Status

**Alpha**, pre-1.0 (0.33.x). No SemVer until v1.0.0, but breaking changes land only on **minor** bumps, always documented in [`MIGRATING.md`](MIGRATING.md); pin `^0.33.0` and take patches freely. Beta needs external validation — see the [path to beta](https://terradart.dev/docs/status/#path-to-beta).

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). For security issues, use the [GitHub private security advisory flow](SECURITY.md).

## Trademarks

"Terraform" is a registered trademark of HashiCorp, Inc.

Dart™ and the related logo are trademarks of Google LLC. We are not endorsed by or affiliated with Google LLC.

TerraDart is an independent open-source project and is not affiliated with, endorsed by, or sponsored by HashiCorp or Google.

## License & acknowledgements

Apache-2.0. See [LICENSE](LICENSE).

The framing draws on prior work in [CDKTF](https://github.com/hashicorp/terraform-cdk) (archived Dec 2025), [AWS CDK](https://aws.amazon.com/cdk/), and [Pulumi](https://www.pulumi.com/).
