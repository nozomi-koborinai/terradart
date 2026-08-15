# terradart_core

Core runtime for [terradart](https://github.com/nozomi-koborinai/terradart) — a Dart-first authoring layer for Terraform that produces drop-in `main.tf.json` for the standard `terraform` CLI.

This package ships the small set of primitives every terradart Stack uses:

- `Stack` — abstract base for your infrastructure module. You subclass it (`final class MyStack extends Stack`), register `Resource` / `Data` instances via `add(...)` / `addData(...)`, and call `stack.writeTo('tf-out')` from your own `main()` to emit `main.tf.json`.
- `Resource` / `Data` — typed nodes supplied by curated factories in `terradart_google`.
- `TfArg.literal(...)` / `TfArg.ref(...)` — the only two ways every settable field accepts input. `TfArg<MyEnum>.literal(MyEnum.foo)` encodes typed Dart enums (see below).
- `LifecycleOptions` — `create_before_destroy`, `prevent_destroy`, `ignore_changes`, `replace_triggered_by`.
- `Stack.synth()` returns an in-memory `SynthResult` with `tfJson` (Terraform JSON map) and optional `dartConstants` (typed Dart constants for the IaC ↔ application seam). `Stack.writeTo(outDir)` is the file-IO wrapper that calls `synth()` and writes `main.tf.json` (plus any `dartConstants`) under `outDir`.

This package is the **runtime layer only**. It is intentionally small and dependency-free. The companion packages are:

- [`terradart_codegen`](https://pub.dev/packages/terradart_codegen) — maintainer `terradart` CLI (`wrap`, `wrap-init`, `wrap-promote`) used to regenerate curated factories in `terradart_google`.
- [`terradart_google`](https://pub.dev/packages/terradart_google) — **256 curated GCP resource factories + 1 data source**, plus generated schema carriers.

For project-level documentation, see the [terradart repo README](https://github.com/nozomi-koborinai/terradart#readme) and [terradart.dev](https://terradart.dev/docs/getting-started/).

## Typed enum serialization

Hand-rolled and wrap-emitted enums implement `TerraformEnum` with a `terraformValue` getter. `TfArgLiteral.toTfJson()` encodes them to Terraform strings; missing conventions throw `ArgumentError` at synth time.

```dart
enum RoutingMode implements TerraformEnum {
  regional('REGIONAL'),
  global('GLOBAL');

  const RoutingMode(this.terraformValue);
  @override
  final String terraformValue;
}
```

## Installation

```yaml
dependencies:
  terradart_core: ^0.25.x
```

Check [pub.dev](https://pub.dev/packages/terradart_core) for the latest patch. Read [MIGRATING.md](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md) before minor bumps.
