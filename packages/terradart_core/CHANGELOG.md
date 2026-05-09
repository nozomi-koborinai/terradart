# Changelog

## 0.0.3-dev - 2026-05-09

- Fix: rename terradart_core main library file to match package name.

## 0.0.2-dev - 2026-05-09

- CI automated publishing via OIDC trusted publisher.
- Fix: prepare_publish.sh now syncs version from tag name.

## 0.0.1-dev - 2026-05-09

### Added

- Initial pre-alpha release of `terradart` core runtime.
- `Stack` abstract base — register `Resource<S>` / `Data<S>` instances via `add(...)` / `addData(...)`.
- `StackSynth.synth(stack)` returning `SynthResult` (Terraform JSON + optional Dart constants).
- `Resource<S>` / `Data<S>` typed nodes; `Provider`, `Variable<T>`, `LifecycleOptions`, `AppExport`.
- `TfArg.literal(...)` / `TfArg.ref(...)` argument helpers.

### Notes

- Pre-alpha — surface and emitted Dart symbols may change between 0.0.x releases.
