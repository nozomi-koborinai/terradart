# terradart_core

Core runtime for [terradart](https://github.com/nozomi-koborinai/terradart) — a Dart-first authoring layer for Terraform that produces drop-in `main.tf.json` for the standard `terraform` CLI.

This package ships the small set of primitives every terradart Stack uses:

- `Stack` — abstract base for your infrastructure module. You subclass it, register `Resource<S>` / `Data<S>` instances via `add(...)` / `addData(...)`, and call `StackSynth.synth(this)` from your own `main()`.
- `Resource<S>` / `Data<S>` — typed nodes whose generic `S` is a schema carrier supplied by curated factories (in `terradart_google`) or generated bindings (from `terradart_codegen`).
- `TfArg.literal(...)` / `TfArg.ref(...)` — the only two ways every settable field accepts input. `TfArg<MyEnum>.literal(MyEnum.foo)` now encodes typed Dart enums (see below).
- `LifecycleOptions` — `create_before_destroy`, `prevent_destroy`, `ignore_changes`, `replace_triggered_by`.
- `StackSynth.synth(stack)` returning a `SynthResult` with `tfJson` (Terraform JSON map) and optional `dartConstants` (typed Dart constants for the IaC ↔ application seam).

This package is the **runtime layer only**. It is intentionally small and dependency-free. The companion packages are:

- [`terradart_codegen`](https://pub.dev/packages/terradart_codegen) — the codegen / `terradart` CLI that turns `terraform providers schema -json` into typed Dart bindings.
- [`terradart_google`](https://pub.dev/packages/terradart_google) — 28 curated GCP factory wrappers + 1 data source, plus generated schema carriers.

For project-level documentation, see the [terradart repo README](https://github.com/nozomi-koborinai/terradart#readme).

## Typed enum serialization

`TfArgLiteral.toTfJson()` detects values that satisfy a small convention and serializes them to the Terraform string:

```dart
enum RoutingMode {
  regional('REGIONAL'),
  global('GLOBAL');

  const RoutingMode(this.terraformValue);
  final String terraformValue;
}

// In your Stack:
GoogleComputeNetwork(
  localName: 'main',
  name: TfArg.literal('main-vpc'),
  routingMode: TfArg.literal(RoutingMode.regional), // encodes to "REGIONAL"
);
```

The runtime throws `ArgumentError` (not silent wrong-output) if you pass an enum value whose type does not implement the `.terraformValue` getter, so missing-getter bugs surface at synth time rather than as bad Terraform JSON. String / int / num / bool literals pass through unchanged.

`terradart_google` 0.1.0-dev uses this convention for every fixed-value-set field in its 28 curated resources.

## Installation

terradart is a SemVer pre-release. By default `dart pub get` skips pre-release versions; opt in explicitly:

```yaml
dependencies:
  terradart_core: ^0.1.0-dev
```
