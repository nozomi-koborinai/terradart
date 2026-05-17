# terradart_codegen

Codegen for [terradart](https://github.com/nozomi-koborinai/terradart). Parses `terraform providers schema -json` (plus optional Magic Modules YAML overlays) and emits typed Dart factory wrappers for use with [`terradart_core`](https://pub.dev/packages/terradart_core).

This package ships the `terradart` CLI with three subcommands:

- **`terradart codegen`** — for any `google_*` resource that isn't already in [`terradart_google`](https://pub.dev/packages/terradart_google). Emits annotated abstract Dart classes into your own `lib/generated/` directory; you then run `build_runner` to produce the concrete bindings.
- **`terradart wrap`** — used by `terradart_google` maintainers to regenerate the 28 curated factory wrappers + their schema carriers from YAML overrides under `lib/src/codegen/wrapper_overrides/yaml/`. Run with `--check` in CI to verify the wrap output stays byte-identical (deterministic codegen guarantee).
- **`terradart wrap-promote`** — scans a curated override yaml against the parsed schema and proposes `enum_values` blocks + `dartTypeOverrides` entries for fields whose schema declares a fixed value set. Authors review and integrate manually so naming choices stay with the human.

## Installation

`terradart_codegen` ships the `terradart` CLI. terradart is a SemVer pre-release, so activate with an explicit version:

```bash
dart pub global activate terradart_codegen 0.1.0-dev
```

(`dart pub global activate terradart_codegen` without an explicit version skips pre-releases.)

## Quickstart: emit bindings for any other resource

```bash
# 1. Dump the provider schema.
mkdir schema-dir && cd schema-dir
cat > providers.tf <<'EOF'
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 7.0" }
  }
}
EOF
terraform init
terraform providers schema -json > schema.json
cd ..

# 2. Run codegen.
terradart codegen \
  --provider hashicorp/google \
  --source schema-dir \
  --output lib/generated

# 3. Run build_runner to produce the concrete bindings.
dart run build_runner build
```

The `--source` directory must contain `schema.json` (output of `terraform providers schema -json`) and may contain an optional `mm/<resource>.yaml` overlay subdirectory.

For the runtime side (`Stack`, `Resource<S>`, `StackSynth.synth`), see [`terradart_core`](https://pub.dev/packages/terradart_core). For the 28 curated GCP factory wrappers, see [`terradart_google`](https://pub.dev/packages/terradart_google). For project-level documentation see the [terradart repo README](https://github.com/nozomi-koborinai/terradart#readme).
