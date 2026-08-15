# Changelog

## 0.25.0 - 2026-08-15

Lockstep release with `terradart_google` 0.25.0 (GA `hashicorp/google` catalog filled). No `terradart_core` API changes.

## 0.24.0 - 2026-07-03

Lockstep release with `terradart_google` 0.24.0 (typed nested helpers). No `terradart_core` API changes.

## 0.23.0 - 2026-07-02

Lockstep release. **Breaking** — see [MIGRATING.md](../../MIGRATING.md).

### Breaking

- Removed the `StackProvider.toTfJson()` backwards-compat shim; read `configArgs` directly. `Backend.toTfJson()` / `TfArg.toTfJson()` are unchanged (real, distinct APIs).

## 0.22.0 - 2026-06-30

Lockstep release for Waves 76–77. No API changes in `terradart_core`.

## 0.21.0 - 2026-06-28

Lockstep release for Wave 74. No API changes in `terradart_core`.

## 0.20.0 - 2026-06-21

Lockstep release for Wave 73. No API changes in `terradart_core`.

## 0.19.0 - 2026-06-21

Lockstep release. No API changes vs `0.18.0`.

## 0.18.0 - 2026-06-21

Lockstep release. No API changes vs `0.17.1`.

## 0.17.1 - 2026-06-21

Lockstep release. No `terradart_core` API changes.

## 0.17.0 - 2026-06-21

Lockstep release. No `terradart_core` API changes.

## 0.16.0 - 2026-06-21

Lockstep release. No `terradart_core` API changes.

## 0.15.0 - 2026-06-20

Lockstep release. No `terradart_core` API changes.

## 0.14.0 - 2026-06-16

Lockstep release. No `terradart_core` API changes.

## 0.13.0 - 2026-06-14

Lockstep release. **Breaking** — see [MIGRATING.md](../../MIGRATING.md).

### Breaking

- `TimeProvider` / `TimeSleep` moved to `terradart_google` (`package:terradart_google/time.dart`) — core is provider-neutral again.
- Removed the unimplemented provider-aliasing surface: `StackProvider.providerAlias`, `ProviderBinding`, and `Resource.provider`. None of it ever reached the synthesized JSON; aliasing returns when multi-provider stacks land.
- `Stack.synth()` validates provider coverage: a registered resource / data source whose type prefix (segment before the first `_`) has no matching provider `providerName` now throws `StateError` instead of silently falling back to an unpinned implied provider.

## 0.12.19

### Added

- `TimeProvider` — `hashicorp/time` stack provider (`~> 0.12`) for propagation waits.
- `TimeSleep` — hand-written `time_sleep` resource wrapper.

## 0.12.18

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.18 (Wave 31 Private CA template + pool IAM).

## 0.12.17

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.17 (`Apis.required` helper).

## 0.12.16

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.16 (Wave 30 Private CA certificate).

## 0.12.15

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.15 (Wave 29 Private CA certificate authority).

## 0.12.14

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.14 (Wave 28 Private CA pool).

## 0.12.13

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.13 (Wave 27 Certificate Manager trust + issuance; `GoogleProject` example backfill).

## 0.12.12

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.12 (sealed `exactly_one_of` enforcement on seven factories; see [MIGRATING.md](../../MIGRATING.md)).

## 0.12.11

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.11 (Wave 25 VPC Access connector; Wave 26 Certificate Manager; Artifact Registry remote docker/maven/npm enums).

## 0.12.10

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.10 (Wave 23 DNS, Eventarc, Cloud Run worker pool, IAP).

## 0.12.9

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.9 (Wave 22 BigQuery Analytics Hub IAM + Compute regional Armor).

## 0.12.8

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.8 (Waves 17–21 Eventarc + Compute/BigQuery/Storage/SQL/Firebase).

## 0.12.7

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.7 (Waves 12–15 Monitoring + Compute/KMS/Pub/Sub/Storage).

## 0.12.6

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.6 (Wave 10 GKE Backup + Wave 11 Logging project ops).

## 0.12.5

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.5 (Wave 9 GKE Hub + example/docs debt).

## 0.12.4

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.4 (Wave 8 GKE core curated factories).

## 0.12.3

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.3 (WIF provider sealed trust-source breaking fix).

## 0.12.2

No user-facing API changes. Lockstep version bump for `terradart_google` v0.12.2 (two new curated factories). The `terradart_core` public surface is unchanged from 0.12.1.

## 0.12.1

No user-facing API changes. Lockstep version bump alongside the `terradart_agent` v0.12.1 fix (MCP `structuredContent` object shape). The `terradart_core` public surface is unchanged from 0.12.0.

## 0.12.0

No user-facing API changes. Lockstep version bump alongside the rest of the workspace for the v0.12.0 release (`terradart_codegen` static-catalog emission, `terradart_google` generated catalog, and the new `terradart_agent` / `terradart-mcp` package). The `terradart_core` public surface is unchanged from 0.11.0.

## 0.11.0 - 2026-MM-DD

**BREAKING** — pre-1.0 polish wave on the `terradart_core` public surface. Coordinated changes from ADR-0016 (codegen identifier rename) and ADR-0017 (Stack API surface). v0.x permits breaking changes; the 0.11.x line continues to stage the 1.0 surface. See [MIGRATING.md](../../MIGRATING.md) for before / after snippets covering every item below.

- **`Stack.synth({required outDir})` split** — `Stack.synth() → SynthResult` is now the pure in-memory step that returns the encoded `tfJson` plus the optional `dartConstants` source for AppExports. `Stack.writeTo(outDir) → Future<void>` is the new file-IO wrapper that always writes `main.tf.json` and, when AppExports produced Dart constants AND `setAppExportsOutputPath` was called, also writes the generated constants file at that path. `writeTo` throws `StateError` atomically — before any disk write — when `addExport` was called without `setAppExportsOutputPath`.
- **`StackSynth` removed from the public barrel** — call `stack.synth()` instead of `StackSynth.synth(stack)`. The class is annotated `@internal`; advanced users may still import it via the deep path `package:terradart_core/src/synth/stack_synth.dart`.
- **`Stack`, `Resource`, `Data` promoted to `abstract base class`** — user subclasses must now be declared `final class XxxStack extends Stack` (or `base` / `sealed`). `implements Stack` / `implements Resource` / `implements Data` are no longer permitted (was a state-bypass foot-gun).
- **`Resource.$sensitiveFields` → `Resource.sensitiveFields`** and **`Resource.$supportsDeletionProtection` → `Resource.supportsDeletionProtection`** — dollar-prefix dropped. Both annotated `@protected` (from `package:meta`); non-subclass reads require an `// ignore: invalid_use_of_protected_member` directive with rationale. Privileged in-library consumers (the `TfJsonEncoder` synth call sites) already carry the ignore comment with justification.
- **`TerraformEnum` interface added** — `abstract interface class TerraformEnum { String get terraformValue; }` is re-exported from the `terradart_core` barrel. `TfArgLiteral.toTfJson` enum dispatch now routes through `if (v is TerraformEnum)`; the previous duck-typed `dynamic.terraformValue` cast and its `// ignore: avoid_dynamic_calls` directive are retired. Hand-rolled Terraform-mapped enums must add `implements TerraformEnum` and `@override final String terraformValue;`; codegen-emitted enums get this automatically.

### Non-breaking improvements

- `encodeArg` / `encodeArgMap` / `encodeArgMapWithSensitive` return types tightened from `dynamic` to `Object?` / `Map<String, Object?>` — non-breaking at runtime, but call sites benefit from static type checking.
- Internal `_DedupKey` value type rewritten as a Dart 3 named record. Drops the unused `package:meta/meta.dart` import.
- `dart:convert` import prefixes unified across `lib/` and `test/` (`as dart_convert` / `as conv` / `as convert` → no prefix everywhere).

## 0.10.0 - 2026-MM-DD

No user-facing API changes. Workspace consistency bump alongside `terradart_google` 0.10.0 (Firestore document curation + `FirestoreFields.encode` helper).

## 0.9.0 - 2026-05-21

**BREAKING** — pre-1.0 polish wave consuming dogfood findings (issues #52-#57). v0.x permits breaking changes; 1.0 semver lock is deferred until cookbook recipes + real-apply feedback have absorbed more cycles. The 0.9.x line is the staging ground for the 1.0 surface:

- **`Stack.synth({required String outDir})` is now concrete** — default implementation writes pretty-printed `${outDir}/main.tf.json` and creates `outDir` recursively. Subclasses may still override; existing overrides that delegated to `StackSynth.synth(this)` + `JsonEncoder.withIndent('  ')` can be deleted in favour of the default.
- **`JsonEncoder` → `TfJsonEncoder`** — the synth-time JSON encoder class no longer shadows `dart:convert`'s `JsonEncoder`. Consumers that imported the class directly need to rename references; consumers using only `Stack` / `StackSynth` are unaffected.
- **`Stack({bool devMode = false})`** — new constructor parameter. When true, synth-time injection flips `deletion_protection: false` on registered resources whose `Resource.$supportsDeletionProtection` is true and that did not explicitly set the field. Intended for dogfood / sample apps; production stacks leave it false.
- **`Resource.$supportsDeletionProtection`** — new capability getter (default `false`); codegen overrides to `true` on 6 curated resources with a `deletion_protection` attribute.
- **`LocalBackend`** added — `StackBackend` implementation matching the existing `GcsBackend` shape. Pass via `Stack(backend: const LocalBackend())`; no more handwritten `tf-out/terraform.tf`.
- **`TfArg.variable(String name)`** + `TfArgVariable<T>` added — third peer of the sealed `TfArg<T>` family. Emits `"${var.<name>}"` interpolation. Canonical pattern for sensitive runtime values.
- **`SensitiveLiteralError`** added — thrown by `TfJsonEncoder.encodeArgMapWithSensitive` when a `TfArgLiteral` is assigned to a sensitive field. v0.x silently masked the value to empty string, which caused apply-time HTTP 400. Recovery: switch to `TfArg.variable(...)` or the `<field>_wo` write-only variant.
- **`encodeArgMapWithSensitive` signature** — gains a required `String resourceAddress` parameter (used by `SensitiveLiteralError` for diagnostic messages). Internal callers (`TfJsonEncoder.resourceBlock`) updated.

See [MIGRATING.md](../../MIGRATING.md) for the full rename table + `sed` recipes.

## 0.8.0-dev - 2026-05-19

No user-facing API changes. Workspace consistency bump alongside `terradart_google` 0.8.0-dev (Wave 7: 23 new GA resources across Data ops + observability + CI/CD — Cloud Build, Artifact Registry, Logging, Monitoring, BigQuery, plus event-driven adjacent: Eventarc, Pub/Sub schema, Storage notification).

## 0.7.0-dev - 2026-05-19

No user-facing API changes. Workspace consistency bump alongside `terradart_google` 0.7.0-dev (Wave 6: 25 new GA resources across the L7 Application Load Balancer stack — Global + Regional/Internal cores, Health checks, MIG/Autoscaler, NEG, Cloud Armor, SSL Policy).

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
