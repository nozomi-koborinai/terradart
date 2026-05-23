---
title: Getting Started
description: Install TerraDart and synthesize your first stack.
---

:::note[Coming soon]
This page will be updated after the v0.11.0 release and README refresh. The API and package versions below may change.
:::

## Meanwhile

1. Read the [README Quickstart](https://github.com/nozomi-koborinai/terradart#quickstart) on GitHub.
2. Run the [Pub/Sub quickstart example](https://github.com/nozomi-koborinai/terradart/tree/main/examples/pubsub_quickstart).
3. Pin pre-release packages explicitly (`^0.1.0-dev` or the current dev version on [pub.dev](https://pub.dev/packages/terradart_core)).

## Outline (planned)

- Add `terradart_core` and `terradart_google` to `pubspec.yaml`
- Implement a `Stack` subclass
- Call `StackSynth.synth` from `bin/infra.dart`
- Run `terraform init` / `apply` in `tf-out/`
