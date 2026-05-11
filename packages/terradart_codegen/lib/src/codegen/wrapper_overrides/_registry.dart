import 'yaml_loader.dart';

/// Loads the override registry from `<rootDir>/*.yaml` files and returns the
/// entries split into [LoadedOverrides.resources] and
/// [LoadedOverrides.dataSources] by their top-level `kind` field.
///
/// Overrides are sourced from `wrapper_overrides/yaml/<terraform_type>.yaml`
/// and parsed via [YamlOverrideLoader]. Add a new resource by dropping a
/// `<terraform_type>.yaml` under that directory; no Dart-side registry edits
/// are needed.
///
/// The split lets callers wire each emitter to its own half:
/// `WrapperEmitter(overrides: loaded.resources)` and (Phase 4.1)
/// `DataSourceWrapperEmitter(overrides: loaded.dataSources)`.
LoadedOverrides loadWrapperOverrides({required String rootDir}) {
  return YamlOverrideLoader(rootDir: rootDir).load();
}
