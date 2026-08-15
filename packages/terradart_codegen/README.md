# terradart_codegen

Maintainer tooling for [terradart](https://github.com/nozomi-koborinai/terradart). Parses `terraform providers schema -json` (plus optional Magic Modules YAML overlays) into a unified provider IR and emits typed Dart factory wrappers for [`terradart_google`](https://pub.dev/packages/terradart_google).

This package ships the `terradart` CLI for **maintainers** and contributors curating the committed factories:

- **`terradart wrap`** — regenerate curated factory wrappers from `wrapper_overrides/yaml/`. Run with `--check` in CI to verify byte-identical output.
- **`terradart wrap-init`** — scaffold a new wrapper override YAML from schema + MM hints.
- **`terradart wrap-promote`** — propose `enum_values` and `dartTypeOverrides` blocks for human review.

End users depend on [`terradart_google`](https://pub.dev/packages/terradart_google) directly; they do not run generation locally. The GA `hashicorp/google` catalog is filled; `google-beta` types are coming soon (open a [feature issue](https://github.com/nozomi-koborinai/terradart/issues/new/choose)).

## Installation

Activate on the same minor line as your workspace when working on the repo:

```bash
dart pub global activate terradart_codegen ^0.24.x
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

For the runtime side (`Stack`, `Resource`, `Stack.synth` / `Stack.writeTo`), see [`terradart_core`](https://pub.dev/packages/terradart_core). For the curated GCP factories consumers import, see [`terradart_google`](https://pub.dev/packages/terradart_google). For project-level documentation see the [terradart repo README](https://github.com/nozomi-koborinai/terradart#readme).
