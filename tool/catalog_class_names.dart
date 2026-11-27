import 'dart:io';

final _classNamePattern = RegExp(r"^\s*className:\s*'(\w+)',", multiLine: true);

Set<String> catalogClassNames(String srcRoot) {
  final catalog = File('$srcRoot/_catalog.g.dart');
  if (!catalog.existsSync()) {
    throw StateError('${catalog.path} not found; run `terradart wrap` first.');
  }
  final names = {
    for (final m in _classNamePattern.allMatches(catalog.readAsStringSync()))
      m.group(1)!,
  };
  if (names.isEmpty) {
    throw StateError('${catalog.path} lists no factory classes.');
  }
  return names;
}
