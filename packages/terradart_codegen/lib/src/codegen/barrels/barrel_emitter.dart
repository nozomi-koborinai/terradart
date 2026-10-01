/// Derives the per-service barrels (+ the `data` barrel and the
/// `terradart_google.dart` umbrella) from the catalog entries `terradart
/// wrap` just built, joined with the authored [BarrelManifest].
///
/// The show sets are exactly `className` + `nestedTypes` per emitted wrapper
/// — the same drift-proof source the catalog itself records — so a wrapper
/// that grows a new public type (e.g. a `deriveEnums` flip adding an enum)
/// updates its barrel in the same `wrap` run instead of failing the
/// barrel-completeness test after the fact (the #248 gap).
library;

import '../catalog_metadata_emitter.dart';
import 'barrel_manifest.dart';

/// Every barrel re-exports the core API, so one service import is enough to
/// write a Stack. The same elements arrive through every barrel, so importing
/// several (or core itself) never makes a name ambiguous.
const String coreExport =
    "export 'package:terradart_core/terradart_core.dart';";

/// The barrel key of the data source barrel every data source lives in.
const String dataBarrel = 'data';

/// Two-line header for generated barrels. Line 1 is the E401 marker; the
/// wrapper header's `ignore_for_file: prefer_relative_imports` third line is
/// omitted because barrels contain only relative exports.
const String barrelFileHeader =
    '// GENERATED FILE - DO NOT EDIT\n'
    '// Run `terradart wrap` to regenerate.\n';

/// Builds every barrel file (file stem under `lib/` → raw Dart source,
/// header included, unformatted).
///
/// Fail-closed in both directions:
/// - a catalog barrel absent from the manifest throws (add it to
///   `barrels.yaml` with a `doc:` — a reviewed decision, not a default);
/// - a manifest barrel no longer present in the catalog throws (stale entry).
Map<String, String> buildBarrelFiles({
  required List<CatalogEntryData> entries,
  required BarrelManifest manifest,
}) {
  // barrel key -> source path under lib/ -> shown names.
  final byBarrel = <String, Map<String, Set<String>>>{};
  void export(String barrel, CatalogEntryData entry) {
    final files = byBarrel.putIfAbsent(barrel, () => {});
    final names = files.putIfAbsent(
      'src/${entry.barrel}/${entry.tfType}.dart',
      () => <String>{},
    );
    names.add(entry.className);
    names.addAll(entry.nestedTypes);
  }

  for (final entry in entries) {
    export(entry.barrel, entry);
  }

  final missing =
      byBarrel.keys.where((b) => !manifest.barrels.containsKey(b)).toList()
        ..sort();
  if (missing.isNotEmpty) {
    throw StateError(
      'barrels.yaml is missing catalog barrel(s): ${missing.join(', ')}. '
      'Add each with a `doc:` (see lib/src/codegen/barrels/barrels.yaml).',
    );
  }
  final stale =
      manifest.barrels.keys.where((b) => !byBarrel.containsKey(b)).toList()
        ..sort();
  if (stale.isNotEmpty) {
    throw StateError(
      'barrels.yaml has stale barrel(s) with no catalog entries: '
      '${stale.join(', ')}. Remove the entries.',
    );
  }

  // A data source is also exported from its service barrel, so one import
  // covers a service's resources and data sources alike.
  final resourceBarrels = {
    for (final e in entries)
      if (e.kind == 'resource') e.tfType: e.barrel,
  };
  final dataSources = {
    for (final e in entries)
      if (e.kind == 'dataSource') e.tfType,
  };
  final authored = manifest.dataSourceBarrels;
  final problems = <String>[];
  for (final MapEntry(key: type, value: barrel) in authored.entries) {
    if (!dataSources.contains(type)) {
      problems.add('$type is not a data source of this catalog');
    } else if (barrel != dataBarrel && !byBarrel.containsKey(barrel)) {
      problems.add('$type: "$barrel" is not a catalog barrel');
    } else if (barrel ==
        (dataSourceBarrelFor(type, resourceBarrels) ?? dataBarrel)) {
      problems.add('$type: "$barrel" is the derived barrel; remove the entry');
    }
  }
  if (problems.isNotEmpty) {
    throw StateError('barrels.yaml dataSourceBarrels: ${problems.join('; ')}.');
  }
  for (final entry in entries) {
    if (entry.kind != 'dataSource') continue;
    final barrel =
        authored[entry.tfType] ??
        dataSourceBarrelFor(entry.tfType, resourceBarrels);
    if (barrel != null && barrel != dataBarrel) export(barrel, entry);
  }

  final out = <String, String>{};
  for (final barrel in byBarrel.keys.toList()..sort()) {
    final spec = manifest.barrels[barrel]!;
    out[spec.fileStemFor(barrel)] = _emitBarrel(
      barrel: barrel,
      spec: spec,
      files: byBarrel[barrel]!,
    );
  }
  out[manifest.umbrellaFile] = _emitUmbrella(
    manifest: manifest,
    barrelFileStems: [
      for (final barrel in byBarrel.keys)
        manifest.barrels[barrel]!.fileStemFor(barrel),
    ],
  );
  return out;
}

String _emitBarrel({
  required String barrel,
  required BarrelSpec spec,
  required Map<String, Set<String>> files,
}) {
  final buf = StringBuffer()
    ..writeln(spec.doc)
    ..writeln('library;')
    ..writeln()
    ..writeln(coreExport);
  for (final path in files.keys.toList()..sort()) {
    final names = files[path]!.toList()..sort();
    buf.writeln("export '$path' show ${names.join(', ')};");
  }
  for (final extra in spec.extraExports) {
    buf.writeln(extra);
  }
  return buf.toString();
}

String _emitUmbrella({
  required BarrelManifest manifest,
  required List<String> barrelFileStems,
}) {
  // Sort per-service exports and the verbatim extras (e.g. provider.dart)
  // together by their quoted target, matching the hand-written layout.
  final directives = <String, String>{
    for (final stem in barrelFileStems) '$stem.dart': "export '$stem.dart';",
  };
  for (final extra in manifest.umbrellaExtraExports) {
    final target = RegExp(r"'([^']+)'").firstMatch(extra)?.group(1) ?? extra;
    directives[target] = extra;
  }
  final buf = StringBuffer()
    ..writeln(manifest.umbrellaDoc)
    ..writeln('library;')
    ..writeln();
  for (final target in directives.keys.toList()..sort()) {
    buf.writeln(directives[target]);
  }
  return buf.toString();
}

/// The service barrel a data source type belongs to, from the lane's
/// resource types ([resourceBarrels], type → barrel): the barrel of the
/// resource of the same type, else the longest barrel key the type's name
/// starts with (`google_compute_zones` → `compute`), else the barrel of the
/// resources sharing its first two name segments when they all sit in one.
/// `null` when nothing matches — the type is then in the `data` barrel only.
String? dataSourceBarrelFor(String type, Map<String, String> resourceBarrels) {
  final exact = resourceBarrels[type];
  if (exact != null) return exact;
  final dot = type.indexOf('_');
  if (dot < 0) return null;
  final prefix = type.substring(0, dot + 1);
  final rest = type.substring(dot + 1);
  String? byName;
  for (final barrel in resourceBarrels.values.toSet()) {
    if ((rest == barrel || rest.startsWith('${barrel}_')) &&
        (byName == null || barrel.length > byName.length)) {
      byName = barrel;
    }
  }
  if (byName != null) return byName;
  final segments = rest.split('_');
  for (var n = segments.length; n >= 2; n--) {
    final stem = '$prefix${segments.take(n).join('_')}';
    final barrels = {
      for (final MapEntry(:key, :value) in resourceBarrels.entries)
        if (key == stem || key.startsWith('${stem}_')) value,
    };
    if (barrels.isNotEmpty) return barrels.length == 1 ? barrels.single : null;
  }
  return null;
}
