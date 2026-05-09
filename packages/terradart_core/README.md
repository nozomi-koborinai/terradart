# terradart

Core runtime for [terradart](https://github.com/nozomi-koborinai/terradart) — a Dart-first authoring layer for Terraform that produces drop-in `main.tf.json` for the standard `terraform` CLI.

This package ships the small set of primitives every terradart Stack uses:

- `Stack` — abstract base for your infrastructure module. You subclass it, register `Resource<S>` / `Data<S>` instances via `add(...)` / `addData(...)`, and call `StackSynth.synth(this)` from your own `main()`.
- `Resource<S>` / `Data<S>` — typed nodes whose generic `S` is a schema carrier supplied by Tier 1 factories (in `terradart_google`) or generated bindings (from `terradart_codegen`).
- `TfArg.literal(...)` / `TfArg.ref(...)` — the only two ways every settable field accepts input.
- `LifecycleOptions` — `create_before_destroy`, `prevent_destroy`, `ignore_changes`, `replace_triggered_by`.
- `StackSynth.synth(stack)` returning a `SynthResult` with `tfJson` (Terraform JSON map) and optional `dartConstants` (typed Dart constants for the IaC ↔ application seam).

This package is the **runtime layer only**. It is intentionally small and dependency-free. The companion packages are:

- [`terradart_codegen`](https://pub.dev/packages/terradart_codegen) — the Stage 1 codegen / `terradart` CLI that turns `terraform providers schema -json` into typed Dart bindings.
- [`terradart_google`](https://pub.dev/packages/terradart_google) — hand-written Tier 1 GCP factory wrappers (Pub/Sub, Cloud Tasks, Secret Manager, Cloud Scheduler, IAM members, service accounts, project service enablement) plus generated schema carriers.

For project-level documentation, see the [terradart repo README](https://github.com/nozomi-koborinai/terradart#readme).

## Installation

terradart v0.0.x is a pre-alpha (SemVer pre-release). By default, `dart pub get` skips pre-release versions. Opt in explicitly in your `pubspec.yaml`:

```yaml
dependencies:
  terradart: ^0.0.1-dev
```
