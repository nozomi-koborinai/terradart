# Changelog

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
