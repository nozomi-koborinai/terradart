---
title: Upgrading
description: Upgrade notes for every TerraDart package — the 0.33.x → 0.34.0, 0.32.x → 0.33.0 and 0.31.x → 0.32.0 changes, and where to find older ones.
---

Read this page before every **minor** bump. Breaking changes land only on minor releases, and every one has a section in [MIGRATING.md on GitHub](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md), which stays the full, canonical history. This page summarizes the latest two.

## 0.33.x → 0.34.0

0.34.0 changes no Stack code: the Dart API, synth output and every provider pin stay as they were.

1. **Raise every TerraDart constraint to `^0.34.0` by hand**, then run `dart pub upgrade`, and `dart pub global activate terradart_cli` for the new command.
2. **Optional: name a default environment.** `runEnvironments(args, Env.values, build, defaultEnv: Env.dev)` lets `terradart plan` run without `--env`; `TERRADART_ENV` overrides it. See [Environments](/docs/environments/).
3. **Appwrite Stacks run on Terraform.** The `terradart` command now picks the `terraform` on `PATH` for a Stack that uses `terradart_appwrite`, and stops before `init` when there is none or OpenTofu is asked for.
4. **A state another engine wrote now needs an answer.** When `.terradart/engines.json` has no record (a fresh clone, or right after a migration), `plan`, `apply` and `destroy` read the state first. If the engine the command picked by itself is not the one that wrote the state, they ask on a terminal. Without a terminal they stop with exit code 64; pass `--engine`, or set `terradart: engine:` in `pubspec.yaml`, in CI.

## 0.32.x → 0.33.0

0.33.0 adds the [`terradart` command](/docs/cli/) (`terradart_cli`) and changes no Stack code: the provider packages keep their Dart API, no provider pin moves, and synth output is unchanged.

1. **Raise every TerraDart constraint to `^0.33.0` by hand**, then run `dart pub upgrade`:

   ```yaml
   dependencies:
     terradart_core: ^0.33.0
     terradart_google: ^0.33.0
     # and ^0.33.0 for terradart_google_beta, terradart_aws,
     # terradart_cloudflare, terradart_appwrite or terradart_time
   ```

2. **Switch to the command.** `dart pub global activate terradart_cli`, then `terradart apply` replaces `dart run bin/infra.dart`, `cd tf-out`, `terraform init` and `terraform apply`, and writes the define file a client reads its outputs from. An existing `bin/infra.dart` keeps working; calling `runStack` or `runEnvironments` from it lets the command select an environment with `--env <name>`. See [The terradart command](/docs/cli/).
3. **`terradart-migrate` users:** run `terradart migrate` with the same flags. `terradart-migrate` still runs, prints that it is deprecated, and goes away in a later release.
4. **Maintainers only:** `dart pub global activate terradart_codegen` now installs `terradart-codegen` (`terradart-codegen wrap ...`), because `terradart` is the user command. Deactivate and reactivate `terradart_codegen` before activating `terradart_cli`; `dart run terradart_codegen:terradart` is unchanged.

## 0.31.x → 0.32.0

0.32.0 makes every argument take what it means — an attribute getter, an enum member, a variable handle, a provider instance, the blocks a resource depends on — so most of the upgrade is deleting wrappers. It breaks the Dart API of every package, not your Terraform: no provider pin moves, and synthesized JSON changes only where a typed reference now emits the attribute the provider expects, an IAM adjunct now carries its parent's `project` / `location`, or an explicit `false` lifecycle flag is now written.

### Upgrade steps

1. **Raise every TerraDart constraint to `^0.32.0` by hand**, then run `dart pub upgrade`. The Dart SDK minimum stays 3.10:

   ```yaml
   dependencies:
     terradart_core: ^0.32.0
     terradart_google: ^0.32.0
     # and ^0.32.0 for terradart_google_beta, terradart_aws,
     # terradart_cloudflare, terradart_appwrite or terradart_time
   ```

2. **Drop `import 'package:terradart_core/terradart_core.dart';`** where a file imports a provider barrel: every barrel re-exports it.
3. **Fix the compile errors** with the [upgrade guide in MIGRATING.md](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md#upgrade-guide), which lists the groups in order of how many stacks they touch, each with a before / after table.
4. **Read `terradart plan` before you apply.** A few typed references emit a different attribute than the one a stack passed ([the list](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md#more-arguments-take-reftor)); `.ref.pinned('id')` keeps the old one.
5. **`terradart-migrate` users:** `dart pub global activate terradart_migrate` installs 0.32.0, which writes the new API.

### The common changes

| Before (0.31) | After (0.32) |
| --- | --- |
| `GooglePubsubTopic(localName: 'orders', ...)` | `GooglePubsubTopic('orders', ...)` |
| `topic.nameRef`, `labels: .ref(other.labels)` | `topic.name`, `labels: other.labels` |
| `routingMode: .literal(.regional)` | `routingMode: .regional` |
| `addVariable('region', const TfVariable(type: 'string'))`, then `TfArg.variable('region')` | `final region = variable<String>('region');`, then `location: region` |
| `dependsOn: [ResourceDependency(api)]`, `addData(...)` | `dependsOn: [api]`, `add(...)` |
| `provider: 'google.eu'` | `provider: eu`, from `final eu = addProvider(GoogleProvider(alias: 'eu'));` |
| `setBackend(...)`, `TfTimeouts(create: '30m')` | `super(backend: ...)`, `TfTimeouts(create: Duration(minutes: 30))` |
| `Apis.enable(this, barrels: [Barrels.cloudRun])` | `enableApis([.cloudRun])` |
| `member: .ref(sa.iamMember)`, `member: .literal('user:a@example.com')` | `member: sa.principal`, `member: .user('a@example.com')` |
| `name: .ref(api.nameRef), location: ...` on an IAM member | `service: api.ref` |
| `password: .literal('...')` on a sensitive argument | a variable or an expression; `Sensitive<T>` has no `.literal` |
| `ignoreChanges: ['target_size']` | `ignoreChanges: .of(['target_size'])` |
| `on StateError` / `on SensitiveLiteralError` around `synth()` | `on SynthException`, or `stack.validate()` |

Together:

```dart
// lib/publisher_stack.dart
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';

final class PublisherStack extends Stack {
  PublisherStack({required String projectId})
    : super(providers: [GoogleProvider(project: projectId)]) {
    final topic = add(GooglePubsubTopic('orders', name: .literal('orders')));
    final publisher = add(
      GoogleServiceAccount('publisher', accountId: .literal('orders-publisher')),
    );
    add(
      GooglePubsubTopicIamMember(
        'publish',
        topic: topic.ref, // was name: .ref(topic.nameRef)
        role: .literal('roles/pubsub.publisher'),
        member: publisher.principal, // was .ref(publisher.iamMember)
      ),
    );
    addOutput('orders_topic_id', topic.id);
  }
}
```

New in 0.32.0 and not breaking: [typed outputs in Flutter and web clients](/docs/client-outputs/) (`addDartDefineOutput`), and provider aliases in migrated child modules.

## 0.30.x → 0.31.0

0.31.0 reshapes the Dart API of every package for type safety, but not your Terraform: no provider pin moves, and synthesized JSON changes only where a typed reference now emits a different attribute. `dart analyze` lists every break, and code completion on the argument offers the replacement.

### Upgrade steps

1. **Install Dart 3.10 or later** and set `sdk: ^3.10.0` in your stack's `pubspec.yaml`. Dot shorthands need it.
2. **Raise every TerraDart constraint to `^0.31.0` by hand** — below 1.0 a caret never crosses a minor — then run `dart pub upgrade`. The packages release in lockstep:

   ```yaml
   environment:
     sdk: ^3.10.0

   dependencies:
     terradart_core: ^0.31.0
     terradart_google: ^0.31.0
     # and ^0.31.0 for terradart_google_beta, terradart_aws,
     # terradart_cloudflare, terradart_appwrite or terradart_time
   ```

3. **Fix the compile errors**, group by group (each section of MIGRATING.md has a before / after table):
   [sealed arguments](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md#sealed-arguments-and-dot-shorthands),
   [typed references](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md#typed-references),
   [outputs and constants](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md#outputs-and-constants),
   [typed nested helpers](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md#typed-nested-helpers),
   [type names](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md#type-names).
4. **Read `terradart plan` before you apply.** Typed references emit the attribute the argument expects — Google `network` / `subnetwork` emit `id` where many stacks passed `self_link`. Pin the old one with `.ref.pinned('self_link')` to keep the old value exactly.
5. **`terradart-migrate` users:** `dart pub global activate terradart_migrate` installs 0.31.0, which writes the new API.

### Sealed arguments and dot shorthands

An argument that takes exactly one (or at most one) of several inputs is one sealed argument, named by concept like a protobuf `oneof`. Each member is a factory constructor, picked with a Dart 3.10 dot shorthand. Leaving it out, or setting two, no longer compiles:

```dart
final role = add(AwsIamRole(
  'fn',
  name: .namePrefix(.literal('app-')), // was name / namePrefix
  assumeRolePolicy: .literal('{}'),
));
add(AwsLambdaFunction(
  'fn',
  functionName: .literal('hello'),
  role: role.ref,
  code: .filename(.literal('bootstrap.zip')), // was filenameOrImageUriOrS3Bucket
));
```

The same shorthand works for every `TfArg` and enum: `.literal('orders')`, `sa.principal`, `.postgres15`.

### Typed references

An argument that names another resource takes `RefTo<R>`, so passing the wrong kind of resource does not compile. Take it from the target's `ref` getter; the argument picks the attribute it emits:

| Before (0.30) | After |
| --- | --- |
| `network: TfArg.ref(vpc.selfLink)` | `network: vpc.ref` |
| `role: TfArg.ref(role.arn)` | `role: role.ref` |
| `zoneId: TfArg.ref(zone.id)` | `zoneId: zone.ref` |
| `network: TfArg.literal('default')` | `network: .literal('default')` |

```dart
final vpc = add(GoogleComputeNetwork('vpc', name: .literal('app')));
add(GoogleComputeSubnetwork(
  'app',
  name: .literal('app'),
  ipCidrRange: .literal('10.0.0.0/24'),
  network: vpc.ref, // emits id; vpc.ref.pinned('self_link') keeps the 0.30 value
));
```

Every input also has a `<name>Ref` getter (`topic.nameRef`) for wiring one resource's argument into another, or into a constant.

### Outputs and constants

`addExport` is gone. `addOutput` declares a Terraform output, `addConstant` a Dart constant, and the generated file is configured once with `appExports:`:

```dart
// lib/orders_stack.dart
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';

final class OrdersStack extends Stack {
  OrdersStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId)],
        appExports: AppExports('lib/generated/orders_stack.app.dart'),
      ) {
    final topic = add(GooglePubsubTopic('orders', name: .literal('orders-prod')));
    addConstant('ordersTopicName', .ref(topic.name));
    addOutput('orders_topic_id', topic.id);
  }
}
```

The same file now also holds `OrdersStackOutputs`, a typed reader of the outputs, and `outputEnvironment()` hands them to a service as its environment. See [How TerraDart works — the app boundary](/docs/how-it-works/#the-app-boundary-constants-and-outputs).

### Typed nested helpers and type names

Google blocks take helper classes derived from the provider schema (no Google `TfArg<Map>` block is left), and derived types are named `<ResourceStem><Block>` without repeated words — `CloudRunV2ServiceContainers`, not `CloudRunV2ServiceServiceContainer`. Arguments and synth output do not change; `dart analyze` lists the old names, and completion offers the new ones.

## Older releases

Every earlier breaking change — `TfArg.expression` and provider aliases in 0.28.0, sealed exactly-one slots in 0.12.12, typed enums in 0.12.10, and more — is documented in [MIGRATING.md](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md).

## Next steps

- [Status & versioning](/docs/status/) — alpha expectations and change policy
- [Examples](https://github.com/nozomi-koborinai/terradart/tree/main/examples) — every quickstart is on the current API
