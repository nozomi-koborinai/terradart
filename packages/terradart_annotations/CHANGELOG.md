# Changelog

## 0.4.0-dev - 2026-05-17

No user-facing API changes. Workspace consistency bump alongside `terradart_codegen` 0.4.0-dev (Plan 5.D: codegen correctness improvements).

## 0.3.0-dev - 2026-05-16

No user-facing API changes. Workspace consistency bump alongside `terradart_google` 0.3.0-dev (Wave 4).

## 0.2.1-dev - 2026-05-16

No user-facing API changes. Workspace consistency bump after the 0.2.0-dev publish run partially failed (`terradart_codegen` and `terradart_google` did not reach pub.dev). 0.2.1-dev republishes the workspace through a re-ordered publish pipeline.

## 0.2.0-dev - 2026-05-16

No user-facing API changes. Version bumped for workspace consistency with `terradart_core` 0.2.0-dev (TfArg.duration + nested-path sensitive masking fix) and `terradart_codegen` 0.2.0-dev (curator workflow improvements).

## 0.1.0-dev - 2026-05-14

No user-facing API changes. Version bumped for workspace consistency with `terradart_core` 0.1.0-dev (typed enum serialization) and `terradart_google` 0.1.0-dev (+15 resources).

## 0.0.4-dev - 2026-05-11

- No user-facing API changes. Version bumped for workspace consistency with Phase 4.1 (`terradart wrap` subcommand + DataSource emitters + 13 `terradart_google` wrappers migrated to generator output).

## 0.0.3-dev - 2026-05-09

- Fix: rename terradart_core main library file to match package name.

## 0.0.2-dev - 2026-05-09

- CI automated publishing via OIDC trusted publisher.
- Fix: prepare_publish.sh now syncs version from tag name.

## 0.0.1-dev - 2026-05-09

### Added

- `TerraformResource` annotation -- emitted on every generated abstract `$Foo` class to record the Terraform resource type and provider.
- `ForceNew` annotation -- marks getters mapping to ForceNew-flagged Terraform attributes.
- `Sensitive` annotation -- marks getters whose values must be masked in synth output. The aggregate set is emitted as a top-level `const Set<String> <terraformTypeCamelCase>Sensitive` sibling to each generated abstract class.

### Notes

- Pre-alpha — annotation names and generated symbol conventions may change between 0.0.x releases.
