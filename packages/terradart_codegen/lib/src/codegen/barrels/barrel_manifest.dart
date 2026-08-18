/// Authored manifest for the generated per-service barrels
/// (`lib/src/codegen/barrels/barrels.yaml`).
///
/// The barrel STRUCTURE (which generated file exports which public types)
/// derives from the catalog at `terradart wrap` time; this manifest carries
/// only the human decisions the IR cannot know: the barrel's doc comment,
/// a file-name override when it differs from the barrel key (`sql` →
/// `cloud_sql.dart`), and verbatim export directives for hand-written
/// sources the wrap pipeline does not emit (e.g. `FirestoreFields`).
library;

import 'dart:io';

import 'package:yaml/yaml.dart';

class BarrelManifest {
  const BarrelManifest({
    required this.umbrellaDoc,
    required this.umbrellaExtraExports,
    required this.barrels,
    this.umbrellaFile = 'terradart_google',
  });

  /// Umbrella file stem under `lib/` (e.g. `terradart_google_beta` for the
  /// beta package). Defaults to the original google umbrella so existing
  /// manifests need no edit.
  final String umbrellaFile;

  /// Verbatim `///` doc block for the umbrella.
  final String umbrellaDoc;

  /// Verbatim `export '...';` directives the umbrella carries beyond the
  /// per-service barrels (e.g. `provider.dart`).
  final List<String> umbrellaExtraExports;

  /// Barrel key (== catalog `barrel` / override `outputDir`) → spec.
  final Map<String, BarrelSpec> barrels;
}

class BarrelSpec {
  const BarrelSpec({
    required this.doc,
    this.file,
    this.extraExports = const [],
  });

  /// Verbatim `///` doc block emitted above `library;`.
  final String doc;

  /// Barrel file stem under `lib/` when it differs from the barrel key.
  final String? file;

  /// Verbatim `export '...' show ...;` directives for hand-written sources.
  final List<String> extraExports;

  String fileStemFor(String barrelKey) => file ?? barrelKey;
}

/// Loads and validates `barrels.yaml` at [path].
///
/// Throws [FormatException] on structural problems (missing `doc`, unknown
/// keys, wrong value shapes) so `terradart wrap` fails loudly instead of
/// emitting a half-formed barrel.
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
  final umbrellaExtra =
      _stringList(yaml['umbrellaExtraExports'], path, 'umbrellaExtraExports');

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
  return BarrelManifest(
    umbrellaDoc: umbrellaDoc.trimRight(),
    umbrellaExtraExports: umbrellaExtra,
    barrels: barrels,
    umbrellaFile:
        umbrellaFileNode is String ? umbrellaFileNode : 'terradart_google',
  );
}

List<String> _stringList(Object? node, String path, String context) {
  if (node == null) return const [];
  if (node is! YamlList || node.any((e) => e is! String)) {
    throw FormatException('$path: $context must be a list of strings');
  }
  return node.cast<String>().toList();
}
