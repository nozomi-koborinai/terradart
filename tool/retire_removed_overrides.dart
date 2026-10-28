// retire_removed_overrides.dart — drop curated overrides whose Terraform
// type the lane's schema fixture no longer has.
//
// `terradart wrap` fails closed when an override names a missing schema
// type (`schema.json missing resource`). The weekly bump refreshes the
// fixture first, so a removed type used to abort regen and leave the
// provider pin and every new factory unwritten. Regen calls this before
// wrap. `wrap --check` does not: a stale override a person left in place
// is still an error.
//
// A barrel whose last type went with the override is removed from the
// authored manifest too. wrap then deletes the generated barrel as an
// orphan. A barrel an authored `dataSourceBarrels` entry still names, for
// a data source the schema kept, stays.

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/barrels/barrel_manifest.dart';
import 'package:terradart_codegen/src/codegen/provider_enums.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/yaml_loader.dart';
import 'package:yaml/yaml.dart';

/// What [retireRemovedOverrides] deleted, names sorted.
class RetiredOverrides {
  const RetiredOverrides({
    required this.resources,
    required this.dataSources,
    required this.barrels,
    required this.hints,
  });

  final List<String> resources;
  final List<String> dataSources;
  final List<String> barrels;
  final List<String> hints;

  bool get isEmpty =>
      resources.isEmpty &&
      dataSources.isEmpty &&
      barrels.isEmpty &&
      hints.isEmpty;
}

/// Deletes override YAML under [overridesRoot] for types absent from
/// [schemaPath], each deleted override's hint file of its own kind
/// (`hints/<type>.yaml` or `hints/data/<type>.yaml`), and barrel keys in
/// [barrelsManifest] that then have no type.
///
/// A schema with no `data_source_schemas` object leaves data-source
/// overrides alone. A present object, even an empty one, is the whole set.
RetiredOverrides retireRemovedOverrides({
  required String schemaPath,
  required String overridesRoot,
  required String barrelsManifest,
}) {
  final schema = _schemaTypes(File(schemaPath).readAsStringSync());
  final removedResources = <String>[];
  final removedData = <String>[];
  for (final file in _yamlFiles(overridesRoot)) {
    final doc = loadYaml(file.readAsStringSync());
    if (doc is! YamlMap) continue;
    final dataSource = doc['kind']?.toString() == 'data_source';
    final stem = p.basenameWithoutExtension(file.path);
    final type = terraformTypeFromOverrideStem(
      stem,
      dataSource
          ? WrapperOverrideKind.dataSource
          : WrapperOverrideKind.resource,
    );
    final gone = dataSource
        ? schema.dataSources != null && !schema.dataSources!.contains(type)
        : !schema.resources.contains(type);
    if (!gone) continue;
    file.deleteSync();
    (dataSource ? removedData : removedResources).add(type);
  }
  removedResources.sort();
  removedData.sort();

  final hints = <String>[];
  for (final (kind, removed) in [
    (WrapperOverrideKind.resource, removedResources),
    (WrapperOverrideKind.dataSource, removedData),
  ]) {
    final dir = providerHintsDir(p.dirname(schemaPath), kind);
    final prefix = switch (kind) {
      WrapperOverrideKind.resource => '',
      WrapperOverrideKind.dataSource => 'data/',
    };
    for (final type in removed) {
      final hint = File(p.join(dir, '$type.yaml'));
      if (!hint.existsSync()) continue;
      hint.deleteSync();
      hints.add('$prefix$type.yaml');
    }
  }
  hints.sort();

  final used = _usedBarrels(
    overridesRoot,
    keptDataSourceBarrels: _keptDataSourceBarrels(
      barrelsManifest,
      removedData.toSet(),
    ),
  );
  final manifest = loadBarrelManifest(barrelsManifest);
  final stale = manifest.barrels.keys.where((k) => !used.contains(k)).toList()
    ..sort();
  if (stale.isNotEmpty || removedData.isNotEmpty) {
    final file = File(barrelsManifest);
    final original = file.readAsStringSync();
    var updated = dropYamlSectionKeys(original, 'barrels', stale.toSet());
    updated = dropYamlSectionKeys(
      updated,
      'dataSourceBarrels',
      removedData.toSet(),
    );
    if (updated != original) file.writeAsStringSync(updated);
  }

  return RetiredOverrides(
    resources: removedResources,
    dataSources: removedData,
    barrels: stale,
    hints: hints,
  );
}

/// Drops mapping keys [keys] from the YAML section whose header line is
/// `[section]:`. A key is an indent-2 line `  name:`. Its block runs until
/// the next indent-2 key or a line that leaves the section. Other sections
/// are copied unchanged. An absent section is a no-op.
String dropYamlSectionKeys(String source, String section, Set<String> keys) {
  if (keys.isEmpty) return source;
  final lines = source.split('\n');
  final out = <String>[];
  var inSection = false;
  var skipping = false;
  for (final line in lines) {
    if (!inSection) {
      if (line == '$section:') inSection = true;
      out.add(line);
      continue;
    }
    if (line.isNotEmpty && !line.startsWith(' ')) {
      inSection = false;
      skipping = false;
      out.add(line);
      continue;
    }
    final key = RegExp(r'^  ([A-Za-z0-9_]+):').firstMatch(line);
    if (key != null) skipping = keys.contains(key.group(1));
    if (!skipping) out.add(line);
  }
  return out.join('\n');
}

({Set<String> resources, Set<String>? dataSources}) _schemaTypes(String json) {
  final decoded = jsonDecode(json);
  if (decoded is! Map) {
    throw const FormatException('schema.json: top level must be an object');
  }
  final providers = decoded['provider_schemas'];
  if (providers is! Map || providers.length != 1) {
    throw FormatException(
      'schema.json: expected one provider, found '
      '${providers is Map ? providers.length : 0}',
    );
  }
  final provider = providers.values.single;
  if (provider is! Map) {
    throw const FormatException(
      'schema.json: provider schema must be an object',
    );
  }
  final resources = provider['resource_schemas'];
  if (resources is! Map) {
    throw const FormatException(
      'schema.json: resource_schemas must be an object',
    );
  }
  final data = provider['data_source_schemas'];
  return (
    resources: resources.keys.cast<String>().toSet(),
    dataSources: data is Map ? data.keys.cast<String>().toSet() : null,
  );
}

Set<String> _keptDataSourceBarrels(String manifestPath, Set<String> removed) {
  final manifest = loadBarrelManifest(manifestPath);
  return {
    for (final e in manifest.dataSourceBarrels.entries)
      if (!removed.contains(e.key)) e.value,
  };
}

Set<String> _usedBarrels(
  String overridesRoot, {
  required Set<String> keptDataSourceBarrels,
}) {
  final used = {...keptDataSourceBarrels};
  for (final file in _yamlFiles(overridesRoot)) {
    final doc = loadYaml(file.readAsStringSync());
    if (doc is! YamlMap) continue;
    final dir = doc['outputDir']?.toString();
    if (dir != null && dir.isNotEmpty) used.add(dir);
  }
  return used;
}

List<File> _yamlFiles(String dir) =>
    Directory(dir)
        .listSync()
        .whereType<File>()
        .where((f) => f.path.endsWith('.yaml'))
        .toList()
      ..sort((a, b) => a.path.compareTo(b.path));
