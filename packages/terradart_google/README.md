# terradart_google

Ships **558 curated resource factories + 1 data source** (559 catalog entries)

The full per-service breakdown lives in the [repo README — What ships](https://github.com/nozomi-koborinai/terradart#what-ships). Discover factories programmatically via `package:terradart_google/catalog.dart` (`terradartCatalog`).

## How resources are built

Factory wrappers under `lib/src/<service>/` are emitted by `terradart wrap` from curated overrides in [`terradart_codegen`](https://pub.dev/packages/terradart_codegen). They are committed so consumers depend on `terradart_google` without running codegen.

CI verifies determinism via `terradart wrap --check`. For any other `google_*` resource, open an issue to request curation.

Runtime primitives (`Stack`, `TfArg`, `writeTo`) live in [`terradart_core`](https://pub.dev/packages/terradart_core).

## Installation

```yaml
dependencies:
  terradart_core: ^0.24.x
  terradart_google: ^0.24.x
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

See [examples/](https://github.com/nozomi-koborinai/terradart/tree/main/examples) and the [pubsub quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/pubsub_quickstart) for AppExport / boundary patterns.
