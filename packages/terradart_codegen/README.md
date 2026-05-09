# terradart_codegen

Stage 1 codegen for [terradart](https://github.com/nozomi-koborinai/terradart). Parses `terraform providers schema -json` (plus optional Magic Modules YAML overlays) and emits annotated abstract Dart classes that [`schemantic`](https://pub.dev/packages/schemantic) consumes via `build_runner` to produce concrete bindings.

This package also ships the `terradart` CLI:

```bash
dart pub global activate terradart_codegen 0.0.1-dev
terradart codegen \
  --provider hashicorp/google \
  --source path/to/schema-dir \
  --output lib/generated
```

The `--source` directory must contain `schema.json` (output of `terraform providers schema -json`) and may contain an optional `mm/<resource>.yaml` overlay subdirectory.

For the runtime side (`Stack`, `Resource<S>`, `StackSynth.synth`), see [`terradart`](https://pub.dev/packages/terradart). For Tier 1 GCP factory wrappers, see [`terradart_google`](https://pub.dev/packages/terradart_google).

For project-level documentation see the [terradart repo README](https://github.com/nozomi-koborinai/terradart#readme).

## Installation

terradart_codegen ships the `terradart` CLI. Because v0.0.x is a SemVer pre-release, activate with an explicit version:

```bash
dart pub global activate terradart_codegen 0.0.1-dev
```

Note: `dart pub global activate terradart_codegen` without an explicit version skips pre-releases.
