import 'yaml_loader.dart';

LoadedOverrides loadWrapperOverrides({required String rootDir, String? only}) {
  return YamlOverrideLoader(rootDir: rootDir).load(only: only);
}
