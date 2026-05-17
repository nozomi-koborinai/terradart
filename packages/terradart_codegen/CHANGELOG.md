# Changelog

## 0.5.0-dev

Plan 5.X: schemantic codegen path removed.

- `file_emitter` no longer emits `part 'X.schema.g.dart';`.
- `abstract_class_emitter` + `data_source_class_emitter` deactivated (Layer 1 schema-carrier classes no longer emitted).
- `wrapper_emitter` + `data_source_wrapper_emitter`: stop emitting `_<R>SchemaInstance` stub block, stop emitting `schema:` arg, drop generic from `extends Resource`, emit file-private `_<resource>Sensitive` const at the top of the wrapper file.
- `sensitive_set_emitter` retargeted to wrapper-file inline (no longer writes into `.schema.dart`).
- `wrap_command`: Layer 1 emit step + Layer 2 build_runner invocation removed.
- `WrapperOverride.schemaStubComment` axis dropped from `wrapper_override.dart` + `yaml_loader.dart` + 14 YAML override files.
- Dropped `terradart_annotations` runtime dep.
- See [ADR-0013](../../docs/decisions/0013-drop-schemantic-and-flatten-resource-type.md) for full rationale.

## 0.4.0-dev - 2026-05-17

Plan 5.D — codegen correctness improvements (4 PRs).

### Added

- **Gate 6: sealed-class `encode()` round-trip (structural)** — new universal QA gate (joining the existing 5 from Plan 5.A) that, for every shipped sealed-class member, constructs a synthetic instance, calls `encode()` (or `toArgMap()` fallback), and asserts the result is a non-empty `Map<String, Object?>` (or single-element `List<Map<...>>` for `nesting_mode: list, max_items: 1`), every required ctor param's snake_case schema key is present (recursively — discriminator-block wire formats nest required keys inside), no raw `TfArg<T>` values leak, and no `UnimplementedError` is thrown. Currently covers 34 sealed-class members across 11 sealed classes.
- `SealedClassExtractor` + `SyntheticInstanceBuilder` modules under `lib/src/codegen/universal_invariants/` — building blocks for Gate 6 (regex-based prelude parsing).
- `MinItemsAssertEmitter` — wrap-promote now emits curator-facing commented `assert(list.length >= N)` hint snippets for top-level list-shape nested blocks with `min_items >= 1 && max_items != 1`. Curator copies the snippet into their helper-class constructor on next regen. Scalar attribute constraints (`min_length` / `max_length` / `min` / `max` / `regex`) stay at the schemantic layer.
- `tool/measure_param_order.dart` — standalone measurement script that quantifies how well a candidate paramOrder heuristic predicts the curator-curated orders across the 49-yaml corpus. Output (gitignored, regenerable) drives a Wave 5-close decision matrix on whether to ship the heuristic.

### Fixed

- `MmYamlParser` now reads `deprecation_message:` from MM YAML field overrides into `Constraints.deprecationMessage`. `IrMerger._mergeAttr` propagates the field with the MM-wins precedence used for `regex` / `minLength` / etc. Closes a Plan 4.2-era dead-code path in `wrap_init_generator._buildDeprecatedParamsAxis` that read a perpetually-null field. Skeleton emission of `deprecatedParams:` (the now-populated downstream consumer) stays deferred to Plan 5.E (Renovate-driven schema-bump automation).
- `exactly_one_of_emitter.dart` skeleton: replaced misleading `String encode()` signature with `Map<String, Object?> encode()`. The previous shape mismatched all 12 production sealed-class instances and pointed curators at the wrong wire format.

## 0.3.0-dev - 2026-05-16

No user-facing CLI changes. WrapperOverride YAML registry expands from 30 to **49 resources** (Wave 4 additions: see `terradart_google` 0.3.0-dev for the resource list). Plan 5.A's 5 universal QA gates continue to hold over the expanded registry. Workspace consistency bump alongside `terradart_google` 0.3.0-dev.

## 0.2.1-dev - 2026-05-16

No API change since 0.2.0-dev. Re-published after the 0.2.0-dev tag's publish run failed at the parallel matrix validation step — `terradart_codegen` was uploaded before pub.dev's index had `terradart_core` 0.2.0-dev, causing the `^0.2.0-dev` constraint to fail version solving. 0.2.1-dev ships through a re-ordered publish pipeline (`publish-codegen` now waits for `publish-no-deps` to complete + pub.dev index propagation before uploading).

## 0.2.0-dev - 2026-05-16

### Added

- `extraSensitiveFields:` yaml override axis — curators can declare per-resource sensitive paths beyond what the Terraform schema flags. Each entry is a dotted path (e.g. `metadata_startup_script`); the resulting `<Resource>Sensitive` const ships the union of schema-declared and curator-declared paths.
- `terradart wrap --only=<resource>` — regenerates a single wrapper file even when sibling yaml overrides have validation errors. Designed for the case where unrelated breakage in another resource blocks the whole-package `wrap` cycle.
- `wrap-promote` now extracts enum candidates from prose descriptions matching `Possible values: A, B, C` in addition to schema `enum_values` blocks. Falls back to the prose set when the schema declares no enum, with MM yaml taking priority when both are present.
- 5 universal QA gates (CI-only invariants over `terradart_google/lib/src/**`): `paramOrder` covers every required schema attribute, emitted enum `terraformValue` matches schema `enum_values`, no `UnimplementedError('TODO(wrap-promote)')` ships in the curated source, every emitted enum member is lowerCamelCase, and sensitive path masking round-trips to `""`.

## 0.1.0-dev - 2026-05-14

### Added

- New `terradart wrap-promote` subcommand. Scans a curated override yaml against the parsed provider schema and appends a `# === wrap-promote additions ===` marker block proposing `enum_values` blocks and `dartTypeOverrides` entries for fields whose schema declares a fixed value set. Authors review, integrate into the main `prelude:` / `dartTypeOverrides:` blocks, then strip the marker. Naming choices stay with the human.
- `dartTypeOverrides` now correctly handles ALL_CAPS leaf field names (`ADD_COST_TO_MED` → `addCostToMed`), Dart reserved words via a `Case` suffix (`default` → `defaultCase`), and aggregates all generated enums into a single `prelude: |` block per resource.
- Schema descriptions containing literal `$` (e.g. BigQuery's `sample_table$20190123` partition-decorator example) and over-escaped apostrophes (e.g. `compute_instance.advanced_machine_features.visible_core_count`'s `instance\'s nominal CPU`) are now sanitized at the parser layer (`$` → `＄`, `\'` → `'`) so the generated `.schema.g.dart` remains parseable Dart.
- `ProviderRules` abstraction lets non-`hashicorp/google` providers ship their own resource allow/deny lists, output-dir aliases, and slot-resolution rules. `GoogleProviderRules` is the built-in implementation for the google provider; existing behaviour is unchanged.
- WrapperOverride YAML registry expanded from 13 to **27 resources + 1 data source**.

## 0.0.4-dev - 2026-05-11

- feat: new `terradart wrap` subcommand regenerates the curated factory wrapper files from the package's production YAML overrides. Flags: `--provider`, `--source`, `--output`, `--check` (CI-gate mode, exit 65 on divergence), `--force` (overwrite non-generated files).
- feat: `DataSourceWrapperEmitter` produces data source Layer 2 factories (`final class X extends Data<$X>`). `DataSourceClassEmitter` produces Layer 1 schema carriers (`data_<resource>.schema.dart`).
- feat: WrapperOverride YAML schema extended from 11 to 15 axes (`kind`, `outputDir`, `schemaStubBodyMode`, `fileLeadingComment`); kind dispatches resource vs data source overrides.
- feat: `LoaderErrorReport` aggregates YAML override validation failures into a single report with stable error codes (E101 `unknownKind`, E102 `outputDirRequired`, E103 `outputDirInvalid`, E104 `outputDirMismatchForDataSource`, E201 `axisNotAllowedForDataSource`, E301 `checkMismatch`, E401 `refuseOverwriteNonGenerated`).
- feat: `generatedFileHeader` constant prepended to all wrap-emitted files (3 lines: GENERATED FILE marker + regen hint + `ignore_for_file: prefer_relative_imports`).
- chore: production YAML registry covers 12 resources + 1 data source (google_project).

## 0.0.3-dev - 2026-05-09

- Fix: rename terradart_core main library file to match package name.

## 0.0.2-dev - 2026-05-09

- CI automated publishing via OIDC trusted publisher.
- Fix: prepare_publish.sh now syncs version from tag name.

## 0.0.1-dev - 2026-05-09

### Added

- Initial pre-alpha release of `terradart_codegen`.
- `terradart codegen` CLI — consumes `terraform providers schema -json` output (+ optional Magic Modules YAML overlay) and emits annotated abstract Dart classes for `schemantic`.
- Pipelines together with `terradart_annotations` to feed `package:schemantic` / `build_runner` codegen.

### Notes

- Pre-alpha — emitted symbol names and CLI flags may change between 0.0.x releases.
