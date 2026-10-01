---
title: Upgrading
description: Upgrade notes for every TerraDart package — the 0.30.x → 0.31.0 breaking changes, and where to find older ones.
---

Read this page before every **minor** bump. Breaking changes land only on minor releases, and every one has a section in [MIGRATING.md on GitHub](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md), which stays the full, canonical history. This page summarizes the latest one.

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
4. **Synthesize, then read `terraform plan` before you apply.** Typed references emit the attribute the argument expects — Google `network` / `subnetwork` emit `id` where many stacks passed `self_link`. Pin the old one with `.ref.pinned('self_link')` to keep the old value exactly.
5. **`terradart-migrate` users:** `dart pub global activate terradart_migrate` installs 0.31.0, which writes the new API.

### Sealed arguments and dot shorthands

An argument that takes exactly one (or at most one) of several inputs is one sealed argument, named by concept like a protobuf `oneof`. Each member is a factory constructor, picked with a Dart 3.10 dot shorthand. Leaving it out, or setting two, no longer compiles:

```dart
final role = add(AwsIamRole(
  localName: 'fn',
  name: .namePrefix(.literal('app-')), // was name / namePrefix
  assumeRolePolicy: .literal('{}'),
));
add(AwsLambdaFunction(
  localName: 'fn',
  functionName: .literal('hello'),
  role: role.ref,
  code: .filename(.literal('bootstrap.zip')), // was filenameOrImageUriOrS3Bucket
));
```

The same shorthand works for every `TfArg` and enum: `.literal('orders')`, `sa.principal`, `.literal(.postgres15)`.

### Typed references

An argument that names another resource takes `RefTo<R>`, so passing the wrong kind of resource does not compile. Take it from the target's `ref` getter; the argument picks the attribute it emits:

| Before (0.30) | After |
| --- | --- |
| `network: TfArg.ref(vpc.selfLink)` | `network: vpc.ref` |
| `role: TfArg.ref(role.arn)` | `role: role.ref` |
| `zoneId: TfArg.ref(zone.id)` | `zoneId: zone.ref` |
| `network: TfArg.literal('default')` | `network: .literal('default')` |

```dart
final vpc = add(GoogleComputeNetwork(localName: 'vpc', name: .literal('app')));
add(GoogleComputeSubnetwork(
  localName: 'app',
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
import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';

final class OrdersStack extends Stack {
  OrdersStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId)],
        appExports: AppExports('lib/generated/orders_stack.app.dart'),
      ) {
    final topic = add(GooglePubsubTopic(localName: 'orders', name: .literal('orders-prod')));
    addConstant('ordersTopicName', .ref(topic.name));
    addOutput('orders_topic_id', topic.id);
  }
}
```

The same file now also holds `OrdersStackOutputs`, a typed reader of the outputs, and `outputEnvironment()` hands them to a service as its environment. See [Architecture — outputs and constants](/docs/architecture/#outputs-and-constants-the-iac--application-seam).

### Typed nested helpers and type names

Google blocks take helper classes derived from the provider schema (no Google `TfArg<Map>` block is left), and derived types are named `<ResourceStem><Block>` without repeated words — `CloudRunV2ServiceContainers`, not `CloudRunV2ServiceServiceContainer`. Arguments and synth output do not change; `dart analyze` lists the old names, and completion offers the new ones.

## Older releases

Every earlier breaking change — `TfArg.expression` and provider aliases in 0.28.0, sealed exactly-one slots in 0.12.12, typed enums in 0.12.10, and more — is documented in [MIGRATING.md](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md).

## Next steps

- [Status & versioning](/docs/status/) — alpha expectations and change policy
- [Examples](https://github.com/nozomi-koborinai/terradart/tree/main/examples) — every quickstart is on the current API
