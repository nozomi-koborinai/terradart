/// Plain data carrier for one [terradartCatalog] entry.
///
/// Built by `wrap_command.dart` per curated resource / data source and fed
/// to [CatalogMetadataEmitter.emit], which renders the `const CatalogEntry`
/// list into `_catalog.g.dart`. This type mirrors the field set of the
/// hand-written `CatalogEntry` runtime type in
/// `packages/terradart_google/lib/src/catalog_entry.dart`; [kind] is carried
/// as a plain string (`'resource'` | `'dataSource'`) and mapped to a
/// `CatalogKind.<kind>` enum reference at emit time.
class CatalogEntryData {
  CatalogEntryData({
    required this.tfType,
    required this.className,
    required this.barrel,
    required this.kind,
    required this.summary,
    required this.constructorParams,
    required this.nestedTypes,
    required this.sensitiveFields,
    required this.docComment,
  });

  /// Terraform type string, e.g. `google_pubsub_topic`.
  final String tfType;

  /// Dart wrapper class name, e.g. `GooglePubsubTopic`.
  final String className;

  /// Per-service barrel (outputDir), e.g. `pubsub`.
  final String barrel;

  /// `'resource'` or `'dataSource'` — maps to a `CatalogKind` enum value.
  final String kind;

  /// One-line summary (first sentence of [docComment]).
  final String summary;

  /// Full doc comment text (markdown).
  final String docComment;

  /// Constructor parameter names in declared order.
  final List<String> constructorParams;

  /// Names of nested helper types emitted alongside this resource.
  final List<String> nestedTypes;

  /// Sensitive field paths (dotted snake_case), masked at synth time.
  final List<String> sensitiveFields;
}

/// Renders the static `const List<CatalogEntry> terradartCatalog` that lands
/// in `packages/terradart_google/lib/src/_catalog.g.dart`.
///
/// The Dart-compiled `terradart_agent` MCP server cannot use `dart:mirrors`,
/// so the curated factory catalog is generated statically by `terradart wrap`
/// (one [CatalogEntry] per curated resource + data source) and consumed at
/// runtime via the `package:terradart_google/catalog.dart` barrel.
///
/// Entries are sorted by [CatalogEntryData.tfType] so the output is
/// deterministic regardless of override-load order, keeping `wrap --check`
/// drift-free. The emitted file is fed through the same `DartFormatter` the
/// wrapper files use (see `wrap_command.dart`), so this emitter does not
/// pretty-print — it only guarantees a parseable, deterministic shape.
///
/// The first line is `// GENERATED FILE - DO NOT EDIT`, one of the two
/// markers `wrap_command.dart`'s E401 guard accepts, so a subsequent
/// `terradart wrap` (without `--force`) will overwrite the prior catalog.
class CatalogMetadataEmitter {
  /// Renders the catalog source for [entries]. The returned string is
  /// unformatted (the wrap pipeline formats it) but always parseable.
  String emit(List<CatalogEntryData> entries) {
    final sorted = [...entries]..sort((a, b) => a.tfType.compareTo(b.tfType));
    final buf = StringBuffer()
      ..writeln('// GENERATED FILE - DO NOT EDIT')
      ..writeln('// Run `terradart wrap` to regenerate.')
      ..writeln("import 'catalog_entry.dart';")
      ..writeln()
      ..writeln('const List<CatalogEntry> terradartCatalog = <CatalogEntry>[');
    for (final e in sorted) {
      buf
        ..writeln('  CatalogEntry(')
        ..writeln('    tfType: ${_str(e.tfType)},')
        ..writeln('    className: ${_str(e.className)},')
        ..writeln('    barrel: ${_str(e.barrel)},')
        ..writeln('    kind: CatalogKind.${e.kind},')
        ..writeln('    summary: ${_str(e.summary)},')
        ..writeln('    constructorParams: ${_strList(e.constructorParams)},')
        ..writeln('    nestedTypes: ${_strList(e.nestedTypes)},')
        ..writeln('    sensitiveFields: ${_strList(e.sensitiveFields)},')
        ..writeln('    docComment: ${_str(e.docComment)},')
        ..writeln('  ),');
    }
    buf.writeln('];');
    return buf.toString();
  }

  /// Renders [s] as a single-quoted Dart string literal, escaping the four
  /// characters that would otherwise break a single-line `'...'` literal:
  /// backslash (first, so subsequent escapes are not double-escaped),
  /// single-quote, `$` (interpolation), and newline.
  String _str(String s) {
    final escaped = s
        .replaceAll(r'\', r'\\')
        .replaceAll("'", r"\'")
        .replaceAll(r'$', r'\$')
        .replaceAll('\n', r'\n');
    return "'$escaped'";
  }

  /// Renders [xs] as a typed Dart list literal: `<String>['a', 'b']`.
  String _strList(List<String> xs) => '<String>[${xs.map(_str).join(', ')}]';
}
