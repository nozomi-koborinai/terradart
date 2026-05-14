# Changelog

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
