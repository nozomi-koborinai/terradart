import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/providers/appwrite_provider_rules.dart';
import 'package:terradart_codegen/src/codegen/providers/provider_registry.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/output_dir_resolver.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

void main() {
  group('AppwriteProviderRules', () {
    const rules = AppwriteProviderRules();

    test('is registered under its provider id', () {
      expect(
        providerRulesById['appwrite/appwrite'],
        isA<AppwriteProviderRules>(),
      );
    });

    test('scaffolds typed nested blocks, provider enums and sealed groups', () {
      expect(rules.typedNestedDefaults, isTrue);
      expect(rules.derivedEnumDefaults, isTrue);
      expect(rules.exactlyOneDefaults, isTrue);
    });

    test('folds every checked-in resource override into its barrel', () {
      final resolver = OutputDirResolver(
        aliases: rules.outputDirAliases,
        typePrefix: rules.terraformTypePrefix,
      );
      final files = _overrideYamlDir()
          .listSync()
          .whereType<File>()
          .where((f) => p.basename(f.path).startsWith('appwrite_'))
          .toList();
      expect(files, isNotEmpty);
      for (final file in files) {
        final terraformType = p.basenameWithoutExtension(file.path);
        final outputDir =
            (loadYaml(file.readAsStringSync()) as YamlMap)['outputDir'];
        expect(
          resolver.resolve(
            terraformType: terraformType,
            mmProduct: null,
            kind: WrapperOverrideKind.resource,
          ),
          outputDir,
          reason: terraformType,
        );
      }
    });
  });
}

Directory _overrideYamlDir() {
  const rel = 'lib/src/codegen/wrapper_overrides/appwrite/yaml';
  if (Directory(rel).existsSync()) return Directory(rel);
  return Directory('packages/terradart_codegen/$rel');
}
