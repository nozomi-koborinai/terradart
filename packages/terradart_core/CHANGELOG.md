# Changelog

## 0.2.0-dev - 2026-05-16

### Added

- `TfArg.duration(Duration)` factory — converts a Dart `Duration` to the `"{seconds}s"` form Terraform expects for duration-string fields (`rotation_period`, `message_retention_duration`, the `'s'`-suffixed forms of `ack_deadline_seconds`, etc.). Sub-second precision and negative durations are rejected with `ArgumentError`.

### Fixed

- `JsonEncoder.encodeArgMapWithSensitive` now masks sensitive paths through nested-block (`List<Map>`) structures. Previously, paths like `customer_encryption.encryption_key` were left as plaintext in `tf-out/main.tf.json` because the masker only walked top-level keys. Ref interpolations (`${...}`) continue to pass through unchanged so Terraform wiring is preserved.

## 0.1.0-dev - 2026-05-14

### Added

- `TfArg<MyEnum>.literal(MyEnum.foo)` now encodes typed Dart enums to Terraform strings via a new `.terraformValue` convention. Declare your enum as:

  ```dart
  enum MyEnum {
    foo('FOO'),
    bar('BAR');
    const MyEnum(this.terraformValue);
    final String terraformValue;
  }
  ```

  and `TfArgLiteral.toTfJson()` will serialize `MyEnum.foo` as the string `"FOO"`. Throws `ArgumentError` (not silent wrong-output) if you pass an enum value whose type does not implement the convention.
- String / int / num / bool literals continue to pass through `toTfJson()` unchanged.

### Notes

- No breaking changes to `Stack` / `Resource` / `Data` / `StackSynth` / `Provider` / `Variable<T>` / `LifecycleOptions` / `AppExport` / `TfArg` / `TfRef`.

## 0.0.4-dev - 2026-05-11

- No user-facing API changes. Version bumped for workspace consistency with Phase 4.1 (`terradart wrap` subcommand + DataSource emitters + 13 `terradart_google` wrappers migrated to generator output).

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
