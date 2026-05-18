# Changelog

## 0.6.0-dev - 2026-05-18

No user-facing API changes. Workspace consistency bump alongside `terradart_google` 0.6.0-dev (Wave 5: 22 new GA resources across IAM completion + Cloud SQL + `*_iam_member` fill).

## 0.5.0-dev

**BREAKING** — Plan 5.X: schemantic removal + Resource type flattening.

- Dropped `Resource<S>` generic — `Resource` is now flat. User wrappers extend `Resource` without a type parameter.
- Dropped `Resource.schema` field.
- Dropped `SchemaCarrier<S>` interface.
- Dropped `ResourceRef<S>.placeholder` — `ResourceRef` no longer carries a schemantic-instance type parameter (it pins to `Object?` since the value never escapes).
- Dropped `TfArgRef.literalOrPlaceholder`.
- Deleted `placeholder.dart`.
- Existing dead tests around the above (e.g. `r.schema.name` assertions) removed.
- See [ADR-0013](../../docs/decisions/0013-drop-schemantic-and-flatten-resource-type.md) for full rationale.

## 0.4.0-dev - 2026-05-17

No user-facing API changes. Workspace consistency bump alongside `terradart_codegen` 0.4.0-dev (Plan 5.D: codegen correctness improvements — MM YAML deprecation parsing fix, encode skeleton fix + Gate 6, paramOrder measurement tool, min_items assert hints).

## 0.3.0-dev - 2026-05-16

No user-facing API changes. Workspace consistency bump alongside `terradart_google` 0.3.0-dev (Wave 4: 21 new GA resources across 6 Firebase / Cloud Functions / Firestore services).

## 0.2.1-dev - 2026-05-16

No API change since 0.2.0-dev. Workspace consistency bump after the 0.2.0-dev publish run partially failed; 0.2.1-dev republishes through a re-ordered publish pipeline.

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
