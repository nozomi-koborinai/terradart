import 'wrapper_override.dart';
import 'yaml_loader.dart';

/// Loads the override registry from `<rootDir>/*.yaml` files.
///
/// Overrides are sourced from `wrapper_overrides/yaml/<terraform_type>.yaml`
/// and parsed via [YamlOverrideLoader]. Add a new resource by dropping a
/// `<terraform_type>.yaml` under that directory; no Dart-side registry edits
/// are needed.
Map<String, WrapperOverride> loadWrapperOverrides({required String rootDir}) {
  return YamlOverrideLoader(rootDir: rootDir).load();
}
