# terradart_time

[![pub: terradart_time](https://img.shields.io/pub/v/terradart_time.svg?label=pub%3A%20time)](https://pub.dev/packages/terradart_time)
[![Dart SDK](https://img.shields.io/badge/Dart-%E2%89%A53.12-blue.svg)](https://dart.dev)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/nozomi-koborinai/terradart/blob/main/LICENSE)

`TimeProvider` and `TimeSleep` for the [`hashicorp/time`](https://registry.terraform.io/providers/hashicorp/time) Terraform provider, for Dart-first Terraform stacks on any cloud.

`TimeSleep` waits after create (`createDuration`), before destroy (`destroyDuration`), or both, to absorb eventual consistency: GCP API enablement propagation (after `terradart_google`'s `GoogleProjectService`), AWS IAM role propagation, and the like. Set at least one of the two durations.

## Installation

```yaml
dependencies:
  terradart_core: ^0.38.0
  terradart_time: ^0.38.0
```

## Usage

```dart
import 'package:terradart_time/terradart_time.dart';

final class WaitStack extends Stack {
  WaitStack() : super(providers: const [TimeProvider()]) {
    add(
      TimeSleep(
        'wait',
        createDuration: TfArg.duration(const Duration(seconds: 60)),
      ),
    );
  }
}
```

`TimeProvider` pins `hashicorp/time` (`kTimeProviderSource`) at `~> 0.12` (`kTimeProviderVersionConstraint`). The pin is maintained by hand; no schema-bump automation tracks `hashicorp/time`.

Only `time_sleep` is wrapped. Open a [feature request](https://github.com/nozomi-koborinai/terradart/issues/new/choose) for `time_static`, `time_offset` or `time_rotating`.
