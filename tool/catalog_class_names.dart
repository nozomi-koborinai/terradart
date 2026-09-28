/// The factory class names a provider package's wrap-generated catalog
/// lists — what the leftover-example generators cover. A directory scan
/// alone would also pick up generated files no override emits any more.
library;

import 'dart:io';

final _classNamePattern = RegExp(r"^\s*className:\s*'(\w+)',", multiLine: true);

/// Class names in the `_catalog.g.dart` under [srcRoot] (`<pkg>/lib/src`).
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
