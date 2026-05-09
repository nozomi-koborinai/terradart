# Changelog

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
