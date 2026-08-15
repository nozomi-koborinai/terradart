// ignore_for_file: avoid_print
//
// Maintainer: scaffold leftover-thin data-source overrides for every GA
// data source that is not yet curated (google_project stays as-is).
//
// Writes `data_<type>.yaml` next to resource twins and appends
// `tool/mm_yaml_sources.yaml` keys. Leftover-thin files are refreshed
// in place so `paramOrder` stays aligned with the emitter's natural
// slot order (Gate 1). Other hand-written data-source YAMLs are skipped.
//
// Run from repo root: dart tool/batch_data_source_overrides.dart

import 'dart:io';

import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:yaml/yaml.dart';

const _schemaPath =
    'packages/terradart_codegen/test/fixtures/wrap/source/schema.json';
const _overrideDir =
    'packages/terradart_codegen/lib/src/codegen/wrapper_overrides/yaml';
const _manifestPath = 'tool/mm_yaml_sources.yaml';

const _leftoverDoc = '''
  /// Read-only data source on the apply-excluded leftover path
  /// (synth + `terraform validate` only). Do not apply.''';

String _yamlBody(List<String> paramOrder) {
  final buf = StringBuffer()
    ..writeln('kind: data_source')
    ..writeln('outputDir: data')
    ..writeln('schemaStubBodyMode: bare')
    ..writeln('deriveClassDoc: true')
    ..writeln('deriveOutputGetters: true')
    ..writeln()
    ..writeln('curatedDoc: |-')
    ..writeln(_leftoverDoc);
  if (paramOrder.isNotEmpty) {
    buf.writeln();
    buf.writeln('paramOrder:');
    for (final name in paramOrder) {
      buf.writeln('  - $name');
    }
  }
  return buf.toString();
}

/// Same skip rules as [DataSourceWrapperEmitter._skipAttribute] /
/// `_skipNestedBlock` so Gate 1 `paramOrder` matches the constructor.
List<String> _naturalOrder(ResourceDef def) {
  final out = <String>[];
  for (final attr in def.root.attributes) {
    if (_skipAttribute(attr)) continue;
    out.add(attr.name);
  }
  for (final nested in def.root.nestedBlocks) {
    if (nested.name == 'timeouts') continue;
    out.add(nested.name);
  }
  return out;
}

bool _skipAttribute(Attribute attr) {
  final c = attr.constraints;
  final isComputedOnly = c.computed && !c.optional && !c.required;
  final isSyntheticId = attr.name == 'id' && !c.required;
  return isComputedOnly || isSyntheticId;
}

bool _isLeftoverThin(String text) =>
    text.contains('Read-only data source on the apply-excluded leftover path');

void main() {
  final ir = const SchemaJsonParser().parseString(
    File(_schemaPath).readAsStringSync(),
    providerVersion: '7.31.0',
  );
  final dataSources = ir.dataSources.keys.toList()..sort();

  final manifest = loadYaml(File(_manifestPath).readAsStringSync()) as YamlMap;
  final manifestKeys =
      (manifest['files'] as YamlMap).keys.cast<String>().toSet();

  var written = 0;
  var refreshed = 0;
  var skipped = 0;
  final newManifestKeys = <String>[];

  for (final tfType in dataSources) {
    if (tfType == 'google_project') {
      skipped++;
      continue;
    }
    final stem = 'data_$tfType';
    final file = File('$_overrideDir/$stem.yaml');
    final body = _yamlBody(_naturalOrder(ir.dataSources[tfType]!));
    if (file.existsSync()) {
      final existing = file.readAsStringSync();
      if (_isLeftoverThin(existing)) {
        if (existing != body) {
          file.writeAsStringSync(body);
          refreshed++;
        } else {
          skipped++;
        }
      } else {
        skipped++;
      }
    } else {
      file.writeAsStringSync(body);
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
    'refreshed $refreshed leftover-thin, skipped $skipped, '
    'appended ${newManifestKeys.length} manifest keys',
  );
}
