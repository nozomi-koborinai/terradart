# terradart_google

[![pub: terradart_google](https://img.shields.io/pub/v/terradart_google.svg?label=pub%3A%20google)](https://pub.dev/packages/terradart_google)
[![Dart SDK](https://img.shields.io/badge/Dart-%E2%89%A53.6-blue.svg)](https://dart.dev)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/nozomi-koborinai/terradart/blob/main/LICENSE)

Curated factory wrappers for **Google Cloud** resources (the official [`hashicorp/google`](https://registry.terraform.io/providers/hashicorp/google) Terraform provider) for Dart-first Terraform stacks.

Ships **1332 curated resource factories + 461 data sources** (1793 catalog entries) across per-service barrels (`compute`, `pubsub`, `cloud_run`, `bigquery`, …). The GA `hashicorp/google` catalog is filled.

Beta-only types live in [`terradart_google_beta`](https://pub.dev/packages/terradart_google_beta) (128 resource factories). The full factory table with example pointers is on [Coverage](https://terradart.dev/docs/coverage/). Discover factories programmatically via `package:terradart_google/catalog.dart` (`terradartCatalog`).

## Installation

```yaml
dependencies:
  terradart_core: ^0.26.x
  terradart_google: ^0.26.x
```

## Usage example

```dart
import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';

final class AssetsStack extends Stack {
  AssetsStack({required String projectId})
      : super(providers: [
          GoogleProvider(project: projectId, region: 'asia-northeast1'),
        ]) {
    add(GoogleStorageBucket(
      localName: 'assets',
      name: TfArg.literal('my-app-assets-prod'),
      storageClass: TfArg.literal(BucketStorageClass.standard),
    ));
  }
}
```

```dart
// bin/infra.dart
import 'package:my_infra/assets_stack.dart';

Future<void> main() async {
  final stack = AssetsStack(projectId: 'my-project-id');
  await stack.writeTo('tf-out');
}
```

```bash
dart pub get
dart run bin/infra.dart
cd tf-out && terraform init && terraform apply
```

Per-service imports (`cloud_run.dart`, `storage.dart`, …) keep IDE completion scoped. See [examples/](https://github.com/nozomi-koborinai/terradart/tree/main/examples) and the [pubsub quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/pubsub_quickstart) for AppExport / boundary patterns.

## How resources are built

Factory wrappers under `lib/src/<service>/` are emitted by `terradart wrap` from curated overrides in [`terradart_codegen`](https://pub.dev/packages/terradart_codegen). They are committed so consumers depend on `terradart_google` without running codegen locally.

CI verifies determinism via `terradart wrap --check`. Runtime primitives (`Stack`, `TfArg`, `writeTo`) live in [`terradart_core`](https://pub.dev/packages/terradart_core).
