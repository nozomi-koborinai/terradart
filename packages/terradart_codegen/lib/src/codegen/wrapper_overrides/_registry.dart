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
///
/// [only], when non-null, restricts the load to a single
/// `<terraformType>.yaml` file under [rootDir]. Sibling yamls are not even
/// opened — useful when one of them carries an unstripped wrap-promote
/// marker block that would otherwise abort the full-registry load with a
/// `Duplicate mapping key` parse error.
LoadedOverrides loadWrapperOverrides({
  required String rootDir,
  String? only,
}) {
  return YamlOverrideLoader(rootDir: rootDir).load(only: only);
}
