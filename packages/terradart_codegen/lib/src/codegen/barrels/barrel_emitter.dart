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

/// Two-line header for generated barrels. Line 1 is the E401 marker; the
/// wrapper header's `ignore_for_file: prefer_relative_imports` third line is
/// omitted because barrels contain only relative exports.
const String barrelFileHeader = '// GENERATED FILE - DO NOT EDIT\n'
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
  // barrel key -> tfType -> shown names.
  final byBarrel = <String, Map<String, Set<String>>>{};
  for (final entry in entries) {
    final files = byBarrel.putIfAbsent(entry.barrel, () => {});
    final names = files.putIfAbsent(entry.tfType, () => <String>{});
    names.add(entry.className);
    names.addAll(entry.nestedTypes);
  }

  final missing = byBarrel.keys
      .where((b) => !manifest.barrels.containsKey(b))
      .toList()
    ..sort();
  if (missing.isNotEmpty) {
    throw StateError(
      'barrels.yaml is missing catalog barrel(s): ${missing.join(', ')}. '
      'Add each with a `doc:` (see lib/src/codegen/barrels/barrels.yaml).',
    );
  }
  final stale = manifest.barrels.keys
      .where((b) => !byBarrel.containsKey(b))
      .toList()
    ..sort();
  if (stale.isNotEmpty) {
    throw StateError(
      'barrels.yaml has stale barrel(s) with no catalog entries: '
      '${stale.join(', ')}. Remove the entries.',
    );
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
  out['terradart_google'] = _emitUmbrella(
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
    ..writeln();
  for (final tfType in files.keys.toList()..sort()) {
    final names = files[tfType]!.toList()..sort();
    buf.writeln(
      "export 'src/$barrel/$tfType.dart' show ${names.join(', ')};",
    );
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
