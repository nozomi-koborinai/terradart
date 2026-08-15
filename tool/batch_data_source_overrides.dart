// ignore_for_file: avoid_print
//
// Maintainer: scaffold leftover-thin data-source overrides for every GA
// data source that is not yet curated (google_project stays as-is).
//
// Writes `data_<type>.yaml` next to resource twins and appends
// `tool/mm_yaml_sources.yaml` keys. Idempotent: skips existing files.
//
// Run from repo root: dart tool/batch_data_source_overrides.dart

import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';

const _schemaPath =
    'packages/terradart_codegen/test/fixtures/wrap/source/schema.json';
const _overrideDir =
    'packages/terradart_codegen/lib/src/codegen/wrapper_overrides/yaml';
const _manifestPath = 'tool/mm_yaml_sources.yaml';

const _yamlBody = '''
kind: data_source
outputDir: data
schemaStubBodyMode: bare
deriveClassDoc: true
deriveOutputGetters: true

curatedDoc: |-
  /// Read-only data source on the apply-excluded leftover path
  /// (synth + `terraform validate` only). Do not apply.
''';

void main() {
  final schema =
      jsonDecode(File(_schemaPath).readAsStringSync()) as Map<String, dynamic>;
  final provider = (schema['provider_schemas'] as Map<String, dynamic>)
      .values
      .first as Map<String, dynamic>;
  final dataSources = (provider['data_source_schemas'] as Map<String, dynamic>)
      .keys
      .toList()
    ..sort();

  final overrideDir = Directory(_overrideDir);
  final existingStems = overrideDir
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.yaml'))
      .map((f) => File(f.path).uri.pathSegments.last.replaceAll('.yaml', ''))
      .toSet();

  final manifest = loadYaml(File(_manifestPath).readAsStringSync()) as YamlMap;
  final manifestKeys =
      (manifest['files'] as YamlMap).keys.cast<String>().toSet();

  var written = 0;
  var skipped = 0;
  final newManifestKeys = <String>[];

  for (final tfType in dataSources) {
    if (tfType == 'google_project') {
      skipped++;
      continue;
    }
    final stem = 'data_$tfType';
    final file = File('$_overrideDir/$stem.yaml');
    if (existingStems.contains(stem) || file.existsSync()) {
      skipped++;
    } else {
      file.writeAsStringSync(_yamlBody);
      written++;
    }
    if (!manifestKeys.contains(stem)) {
      newManifestKeys.add(stem);
    }
  }

  if (newManifestKeys.isNotEmpty) {
    newManifestKeys.sort();
    final buf = StringBuffer(File(_manifestPath).readAsStringSync());
    if (!buf.toString().endsWith('\n')) buf.writeln();
    for (final key in newManifestKeys) {
      buf.writeln('  $key:');
      buf.writeln(
        '    upstream: null  # data source; no mmv1 YAML '
        '(GA leftover; apply-excluded)',
      );
    }
    File(_manifestPath).writeAsStringSync(buf.toString());
  }

  print(
    'batch_data_source_overrides: wrote $written yaml(s), '
    'skipped $skipped, appended ${newManifestKeys.length} manifest keys',
  );
}
