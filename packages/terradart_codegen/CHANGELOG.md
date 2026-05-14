# Changelog

## 0.1.0-dev - 2026-05-14

### Added

- New `terradart wrap-promote` subcommand. Scans a curated override yaml against the parsed provider schema and appends a `# === wrap-promote additions ===` marker block proposing `enum_values` blocks and `dartTypeOverrides` entries for fields whose schema declares a fixed value set. Authors review, integrate into the main `prelude:` / `dartTypeOverrides:` blocks, then strip the marker. Naming choices stay with the human.
- `dartTypeOverrides` now correctly handles ALL_CAPS leaf field names (`ADD_COST_TO_MED` → `addCostToMed`), Dart reserved words via a `Case` suffix (`default` → `defaultCase`), and aggregates all generated enums into a single `prelude: |` block per resource.
- Schema descriptions containing literal `$` (e.g. BigQuery's `sample_table$20190123` partition-decorator example) and over-escaped apostrophes (e.g. `compute_instance.advanced_machine_features.visible_core_count`'s `instance\'s nominal CPU`) are now sanitized at the parser layer (`$` → `＄`, `\'` → `'`) so the generated `.schema.g.dart` remains parseable Dart.
- `ProviderRules` abstraction lets non-`hashicorp/google` providers ship their own resource allow/deny lists, output-dir aliases, and slot-resolution rules. `GoogleProviderRules` is the built-in implementation for the google provider; existing behaviour is unchanged.
- WrapperOverride YAML registry expanded from 13 to **27 resources + 1 data source**.

## 0.0.4-dev - 2026-05-11

- feat: new `terradart wrap` subcommand regenerates Tier 1 wrapper files from the package's production YAML overrides. Flags: `--provider`, `--source`, `--output`, `--check` (CI-gate mode, exit 65 on divergence), `--force` (overwrite non-generated files).
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
