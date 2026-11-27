import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';

const _exitUsage = 64;
const _exitInput = 65;

void main(List<String> args) {
  final flags = <String, String>{
    for (final a in args)
      if (a.startsWith('--') && a.contains('='))
        a.substring(2, a.indexOf('=')): a.substring(a.indexOf('=') + 1),
  };
  final oldPath = flags['old'];
  final newPath = flags['new'];
  final catalogPath = flags['catalog'];
  final outPath = flags['out'];
  if (oldPath == null ||
      newPath == null ||
      catalogPath == null ||
      outPath == null) {
    stderr.writeln(
      'Usage: dart tool/schema_resource_diff.dart --old=<schema.json> '
      '--new=<schema.json> --catalog=<_catalog.g.dart> [--data-sources] '
      '--out=<json>',
    );
    exit(_exitUsage);
  }
  final Map<String, Object> diff;
  try {
    diff = schemaResourceDiff(
      oldSchema: _decode(oldPath),
      newSchema: _decode(newPath),
      catalogSource: File(catalogPath).readAsStringSync(),
      includeDataSources: args.contains('--data-sources'),
    );
  } on Object catch (e) {
    stderr.writeln('schema_resource_diff: $e');
    exit(_exitInput);
  }
  File(outPath)
    ..createSync(recursive: true)
    ..writeAsStringSync(const JsonEncoder.withIndent('  ').convert(diff));
  stdout.writeln(
    'schema diff: ${[for (final e in diff.entries) '${(e.value as List).length} ${e.key}'].join(', ')} → $outPath',
  );
}

Map<String, dynamic> _decode(String path) =>
    jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;

@visibleForTesting
Map<String, Object> schemaResourceDiff({
  required Map<String, dynamic> oldSchema,
  required Map<String, dynamic> newSchema,
  required String catalogSource,
  bool includeDataSources = false,
}) {
  final catalog = catalogTypes(catalogSource);
  final before = _provider(oldSchema);
  final after = _provider(newSchema);
  ({List<String> added, List<String> removed}) compare(
    String key,
    Set<String> curated,
  ) {
    final a = _keys(before, key);
    final b = _keys(after, key);
    return (
      added: (b.difference(a).toList()..sort()),
      removed: (a.difference(b).intersection(curated).toList()..sort()),
    );
  }

  final resources = compare('resource_schemas', catalog.resources);
  final out = <String, Object>{
    'added_resources': resources.added,
    'removed_resources': resources.removed,
  };
  if (includeDataSources) {
    final data = compare('data_source_schemas', catalog.dataSources);
    out['added_data_sources'] = data.added;
    out['removed_data_sources'] = data.removed;
  }
  return out;
}

@visibleForTesting
({Set<String> resources, Set<String> dataSources}) catalogTypes(String source) {
  final entry = RegExp(
    r"tfType:\s*'([^']+)'[\s\S]*?kind:\s*CatalogKind\.(\w+)",
  );
  final resources = <String>{};
  final dataSources = <String>{};
  for (final m in entry.allMatches(source)) {
    (m.group(2) == 'dataSource' ? dataSources : resources).add(m.group(1)!);
  }
  return (resources: resources, dataSources: dataSources);
}

Map<String, dynamic> _provider(Map<String, dynamic> schema) {
  final providers = schema['provider_schemas'];
  if (providers is! Map || providers.length != 1) {
    throw FormatException(
      'expected exactly one provider in provider_schemas, found '
      '${providers is Map ? providers.keys.join(', ') : 'none'}',
    );
  }
  return providers.values.single as Map<String, dynamic>;
}

Set<String> _keys(Map<String, dynamic> provider, String key) =>
    ((provider[key] as Map?) ?? const {}).keys.cast<String>().toSet();
