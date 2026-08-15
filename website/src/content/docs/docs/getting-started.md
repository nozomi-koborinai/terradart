---
title: Getting Started
description: Install TerraDart and generate your first *.tf.json from a Stack.
---

This guide matches the [README quickstart](https://github.com/nozomi-koborinai/terradart#quickstart) for the **0.25.x** line. TerraDart is **alpha** — breaking changes land only on **minor** bumps; see [Status & versioning](/docs/status/) for the change policy and the [path to beta](/docs/status/#path-to-beta).

## Prerequisites

- Dart SDK ≥ 3.6
- Terraform CLI ≥ 1.11.0
- A GCP project with Pub/Sub enabled and Application Default Credentials (`gcloud auth application-default login`)

## 1. Add dependencies

```yaml
# pubspec.yaml
dependencies:
  terradart_core: ^0.25.x
  terradart_google: ^0.25.x
```

Check [pub.dev](https://pub.dev/packages/terradart_core) for the latest patch, then run:

```bash
dart pub get
```

The GA `hashicorp/google` catalog is filled. `google-beta` types are coming soon and are not generated locally — request them via a [GitHub feature issue](https://github.com/nozomi-koborinai/terradart/issues/new/choose).

## 2. Define a Stack

Create `lib/orders_stack.dart` (or follow the [pubsub quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/pubsub_quickstart)):

```dart
import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';

final class OrdersStack extends Stack {
  OrdersStack({required String projectId})
      : super(providers: [GoogleProvider(project: projectId)]) {
    final topic = add(GooglePubsubTopic(
      localName: 'orders',
      name: TfArg.literal('orders-prod'),
    ));
    addExport('ORDERS_TOPIC_NAME', ResourceIdExport(topic.nameRef));
    setAppExportsOutputPath('lib/generated/orders_stack.app.dart');
  }
}
```

## 3. Synth Terraform JSON

From `bin/infra.dart`:

```dart
import 'package:my_pkg/orders_stack.dart';

Future<void> main() async {
  final stack = OrdersStack(projectId: 'YOUR-PROJECT-ID');
  await stack.writeTo('tf-out');
}
```

```bash
dart run bin/infra.dart
```

This writes `tf-out/main.tf.json` and, when exports are literal-resolvable, `lib/generated/orders_stack.app.dart`.

## 4. Plan and apply

```bash
cd tf-out
terraform init
terraform plan
terraform apply
```

Your existing remote state backend and modules stay unchanged — TerraDart only replaces HCL/JSON authoring.

## 5. The boundary (optional)

Import generated constants in app code instead of string literals:

```dart
import 'generated/orders_stack.app.dart';

bool acceptsTopic(String eventTopic) =>
    eventTopic == OrdersStackExports.ORDERS_TOPIC_NAME;
```

Rename `orders-prod` in the Stack without updating the subscriber and `dart analyze` fails. See [Architecture — AppExport](/docs/architecture/#appexport-the-iac--app-seam) and the runnable [pubsub quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/pubsub_quickstart) (`lib/subscriber_stub.dart`).

## Next steps

- [Why TerraDart](/docs/why-terradart/) — motivation and comparisons
- [Architecture](/docs/architecture/) — `synth()`, `writeTo()`, curated coverage
- [Coverage](/docs/coverage/) — every curated factory, its barrel, and runnable examples
- [Migrating](/docs/migrating/) — read before every minor bump
- [Status & versioning](/docs/status/) — alpha vs beta vs 1.0
- [Examples](https://github.com/nozomi-koborinai/terradart/tree/main/examples) and [cookbook](https://github.com/nozomi-koborinai/terradart/tree/main/cookbook) for fuller stacks
