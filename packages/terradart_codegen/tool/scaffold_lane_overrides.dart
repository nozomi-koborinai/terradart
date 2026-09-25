// ignore_for_file: avoid_print
//
// Scaffolds thin wrap-init-style override YAMLs for every resource + data
// source in a provider lane's schema fixture, and prints the unique
// resource outputDir set so the lane's barrels manifest can stay
// fail-closed.
//
// Coordinates (schemaDir, overridesRoot) come from the lane's
// tool/providers.yaml entry; barrel folding and the derive defaults come
// from the provider's ProviderRules. An override that already exists is
// never overwritten, so hand-curated overrides survive a re-run and the
// scaffold only fills in types the pin added.
//
// Run from packages/terradart_codegen:
//   dart run tool/scaffold_lane_overrides.dart --provider cloudflare/cloudflare

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/providers/provider_registry.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/output_dir_resolver.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:yaml/yaml.dart';

Never _fail(String message) {
  print('scaffold_lane_overrides: $message');
  exit(1);
}

void main(List<String> args) {
  final providerId = switch (args) {
    ['--provider', final id] => id,
    _ => _fail('usage: dart run tool/scaffold_lane_overrides.dart '
        '--provider <source>'),
  };
  final rules = providerRulesById[providerId] ??
      _fail('no ProviderRules for $providerId '
          '(known: ${providerRulesById.keys.join(', ')})');

  final repoRoot = p.normalize(
      p.join(p.dirname(Platform.script.toFilePath()), '..', '..', '..'));
  final providers = loadYaml(
    File(p.join(repoRoot, 'tool', 'providers.yaml')).readAsStringSync(),
  )['providers'] as YamlMap;
  final lane = providers.values.cast<YamlMap?>().firstWhere(
            (entry) => entry?['source'] == providerId,
            orElse: () => null,
          ) ??
      _fail('no tool/providers.yaml lane with source $providerId');

  final schema = jsonDecode(
    File(p.join(repoRoot, lane['schemaDir'] as String, 'schema.json'))
        .readAsStringSync(),
  ) as Map<String, dynamic>;
  final provider =
      (schema['provider_schemas'] as Map).values.single as Map<String, dynamic>;
  List<String> sortedKeys(String key) =>
      (provider[key] as Map? ?? const {}).keys.cast<String>().toList()..sort();
  final resources = sortedKeys('resource_schemas');
  final dataSources = sortedKeys('data_source_schemas');

  const derive = 'deriveClassDoc: true\n'
      'deriveOutputGetters: true\n'
      'deriveNestedTypes: true\n';
  final resolver = OutputDirResolver(
    aliases: rules.outputDirAliases,
    typePrefix: rules.terraformTypePrefix,
  );
  final outDir = p.join(repoRoot, lane['overridesRoot'] as String);
  Directory(outDir).createSync(recursive: true);

  final barrels = <String>{};
  var wrote = 0;
  var kept = 0;
  void write(String fileName, String body) {
    final file = File(p.join(outDir, fileName));
    if (file.existsSync()) {
      kept++;
      return;
    }
    file.writeAsStringSync(body);
    wrote++;
  }

  for (final type in resources) {
    final outputDir = resolver.resolve(
      terraformType: type,
      mmProduct: null,
      kind: WrapperOverrideKind.resource,
    );
    barrels.add(outputDir);
    write('$type.yaml', 'outputDir: $outputDir\n$derive');
  }
  for (final type in dataSources) {
    write(
      'data_$type.yaml',
      'kind: data_source\n'
          'outputDir: data\n'
          'schemaStubBodyMode: bare\n'
          '$derive',
    );
  }

  final barrelList = barrels.toList()..sort();
  print('wrote $wrote yaml files, kept $kept existing');
  print('resources ${resources.length} data_sources ${dataSources.length}');
  print('resource barrels (${barrelList.length}):');
  for (final b in barrelList) {
    print('  $b');
  }
}
