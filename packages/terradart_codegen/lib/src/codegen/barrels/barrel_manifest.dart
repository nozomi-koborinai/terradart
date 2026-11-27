import 'dart:io';

import 'package:yaml/yaml.dart';

class BarrelManifest {
  const BarrelManifest({
    required this.umbrellaDoc,
    required this.umbrellaExtraExports,
    required this.barrels,
    this.umbrellaFile = 'terradart_google',
    this.dataSourceBarrels = const {},
  });

  final String umbrellaFile;

  final String umbrellaDoc;

  final List<String> umbrellaExtraExports;

  final Map<String, BarrelSpec> barrels;

  final Map<String, String> dataSourceBarrels;
}

class BarrelSpec {
  const BarrelSpec({
    required this.doc,
    this.file,
    this.extraExports = const [],
  });

  final String doc;

  final String? file;

  final List<String> extraExports;

  String fileStemFor(String barrelKey) => file ?? barrelKey;
}

BarrelManifest loadBarrelManifest(String path) {
  final file = File(path);
  if (!file.existsSync()) {
    throw FormatException('barrels.yaml not found at $path');
  }
  final yaml = loadYaml(file.readAsStringSync(), sourceUrl: Uri.file(path));
  if (yaml is! YamlMap) {
    throw FormatException('$path: top-level must be a YAML mapping');
  }
  const allowedTop = {
    'umbrellaFile',
    'umbrellaDoc',
    'umbrellaExtraExports',
    'barrels',
    'dataSourceBarrels',
  };
  for (final key in yaml.keys) {
    if (!allowedTop.contains(key)) {
      throw FormatException('$path: unknown top-level key: $key');
    }
  }
  final umbrellaDoc = yaml['umbrellaDoc'];
  if (umbrellaDoc is! String || umbrellaDoc.trim().isEmpty) {
    throw FormatException('$path: umbrellaDoc must be a non-empty string');
  }
  final umbrellaFileNode = yaml['umbrellaFile'];
  if (umbrellaFileNode != null &&
      (umbrellaFileNode is! String || umbrellaFileNode.trim().isEmpty)) {
    throw FormatException('$path: umbrellaFile must be a non-empty string');
  }
  final umbrellaExtra = _stringList(
    yaml['umbrellaExtraExports'],
    path,
    'umbrellaExtraExports',
  );

  final barrelsNode = yaml['barrels'];
  if (barrelsNode is! YamlMap) {
    throw FormatException('$path: barrels must be a mapping');
  }
  const allowedSpec = {'doc', 'file', 'extraExports'};
  final barrels = <String, BarrelSpec>{};
  for (final entry in barrelsNode.entries) {
    final key = entry.key.toString();
    final node = entry.value;
    if (node is! YamlMap) {
      throw FormatException('$path: barrels.$key must be a mapping');
    }
    for (final k in node.keys) {
      if (!allowedSpec.contains(k)) {
        throw FormatException('$path: barrels.$key: unknown key: $k');
      }
    }
    final doc = node['doc'];
    if (doc is! String || doc.trim().isEmpty) {
      throw FormatException(
        '$path: barrels.$key: doc is required (the barrel\'s /// comment)',
      );
    }
    final fileOverride = node['file'];
    if (fileOverride != null && fileOverride is! String) {
      throw FormatException('$path: barrels.$key: file must be a string');
    }
    barrels[key] = BarrelSpec(
      doc: doc.trimRight(),
      file: fileOverride as String?,
      extraExports: _stringList(node['extraExports'], path, 'barrels.$key'),
    );
  }
  final dataSourceNode = yaml['dataSourceBarrels'];
  if (dataSourceNode != null &&
      (dataSourceNode is! YamlMap ||
          dataSourceNode.values.any((v) => v is! String))) {
    throw FormatException(
      '$path: dataSourceBarrels must map a data source type to a barrel key',
    );
  }
  return BarrelManifest(
    umbrellaDoc: umbrellaDoc.trimRight(),
    dataSourceBarrels: {
      if (dataSourceNode is YamlMap)
        for (final e in dataSourceNode.entries)
          e.key.toString(): e.value as String,
    },
    umbrellaExtraExports: umbrellaExtra,
    barrels: barrels,
    umbrellaFile: umbrellaFileNode is String
        ? umbrellaFileNode
        : 'terradart_google',
  );
}

List<String> _stringList(Object? node, String path, String context) {
  if (node == null) return const [];
  if (node is! YamlList || node.any((e) => e is! String)) {
    throw FormatException('$path: $context must be a list of strings');
  }
  return node.cast<String>().toList();
}
