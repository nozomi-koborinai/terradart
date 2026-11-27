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

  final String tfType;
  final String className;
  final String barrel;
  final String kind;
  final String summary;
  final String docComment;
  final List<String> constructorParams;
  final List<String> nestedTypes;
  final List<String> sensitiveFields;
}

class CatalogMetadataEmitter {
  String emit(List<CatalogEntryData> entries) {
    final sorted = [...entries]
      ..sort((a, b) {
        final byType = a.tfType.compareTo(b.tfType);
        if (byType != 0) return byType;
        return _kindRank(a.kind).compareTo(_kindRank(b.kind));
      });
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

  static int _kindRank(String kind) => kind == 'resource' ? 0 : 1;

  String _str(String s) {
    final escaped = s
        .replaceAll(r'\', r'\\')
        .replaceAll("'", r"\'")
        .replaceAll(r'$', r'\$')
        .replaceAll('\n', r'\n');
    return "'$escaped'";
  }

  String _strList(List<String> xs) => '<String>[${xs.map(_str).join(', ')}]';
}
