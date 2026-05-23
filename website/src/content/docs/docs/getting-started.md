---
title: Getting Started
description: Install TerraDart and synthesize your first stack.
---

:::note[Coming soon]
This page tracks the v0.11.0 API surface and will be expanded with end-to-end walkthroughs after the release.
:::

## Meanwhile

1. Read the [README Quickstart](https://github.com/nozomi-koborinai/terradart#quickstart) on GitHub.
2. Run the [Pub/Sub quickstart example](https://github.com/nozomi-koborinai/terradart/tree/main/examples/pubsub_quickstart).
3. Pin the published packages with `^0.11.0` (see the current version on [pub.dev](https://pub.dev/packages/terradart_core)).

## Outline (planned)

- Add `terradart_core` and `terradart_google` to `pubspec.yaml`
- Implement a `final class XxxStack extends Stack` subclass
- Call `stack.writeTo('tf-out')` from `bin/infra.dart`
- Run `terraform init` / `apply` in `tf-out/`
