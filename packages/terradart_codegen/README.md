# terradart_codegen

[![pub: terradart_codegen](https://img.shields.io/pub/v/terradart_codegen.svg?label=pub%3A%20codegen)](https://pub.dev/packages/terradart_codegen)
[![Dart SDK](https://img.shields.io/badge/Dart-%E2%89%A53.6-blue.svg)](https://dart.dev)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/nozomi-koborinai/terradart/blob/main/LICENSE)

Maintainer tooling for [TerraDart](https://terradart.dev). Parses `terraform providers schema -json` (plus optional Magic Modules YAML overlays) into a unified provider IR and emits typed Dart factory wrappers for [`terradart_google`](https://pub.dev/packages/terradart_google) and other provider packages.

This package ships the `terradart` CLI for **maintainers** and contributors curating committed factories:

- **`terradart wrap`** — regenerate curated factory wrappers from `wrapper_overrides/yaml/`. Run with `--check` in CI to verify byte-identical output.
- **`terradart wrap-init`** — scaffold a new wrapper override YAML from schema + MM hints.
- **`terradart wrap-promote`** — propose `enum_values` and `dartTypeOverrides` blocks for human review.

End users depend on [`terradart_google`](https://pub.dev/packages/terradart_google), [`terradart_google_beta`](https://pub.dev/packages/terradart_google_beta), [`terradart_appwrite`](https://pub.dev/packages/terradart_appwrite), or [`terradart_cloudflare`](https://pub.dev/packages/terradart_cloudflare) directly; they do not run generation locally.

## Installation

Activate on the same minor line as your workspace when working on the repo:

```bash
dart pub global activate terradart_codegen ^0.26.x
```

Check [pub.dev](https://pub.dev/packages/terradart_codegen) for the latest patch.

## Maintainer quickstart

From `packages/terradart_codegen/`:

```bash
dart run bin/terradart.dart wrap \
  --provider hashicorp/google \
  --source test/fixtures/wrap/source \
  --output ../terradart_google/lib/src

# CI parity check (no writes):
dart run bin/terradart.dart wrap \
  --provider hashicorp/google \
  --source test/fixtures/wrap/source \
  --output ../terradart_google/lib/src \
  --check
```

The `--source` directory must contain `schema.json` and may include `mm/<resource>.yaml` overlays.

For runtime primitives (`Stack`, `Resource`, `writeTo`), see [`terradart_core`](https://pub.dev/packages/terradart_core). For project-level documentation, see the [terradart repo README](https://github.com/nozomi-koborinai/terradart#readme) and [terradart.dev](https://terradart.dev).
