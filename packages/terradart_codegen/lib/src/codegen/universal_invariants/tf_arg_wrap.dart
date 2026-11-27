import 'dart:io';

class TfArgWrap {
  static List<String> scan({required String rootDir}) {
    final violations = <String>[];
    final dir = Directory(rootDir);
    if (!dir.existsSync()) return violations;

    final classBodyRe = RegExp(
      r'(?:sealed\s+|final\s+|abstract\s+)?class\s+([A-Z][A-Za-z0-9]+)\s*(?:extends\s+[^{]+)?(?:implements\s+[^{]+)?\s*\{',
      multiLine: true,
    );

    final plainFieldRe = RegExp(
      r'^\s*final\s+(String|int|bool|double|num)\??\s+[a-z][A-Za-z0-9]*\s*;(?:\s*//[^\n]*)?',
      multiLine: true,
    );

    for (final entity in dir.listSync(recursive: true)) {
      if (entity is! File) continue;
      if (!entity.path.endsWith('.dart')) continue;
      final filename = entity.path.split(Platform.pathSeparator).last;
      if (!filename.startsWith('google_')) continue;

      final source = entity.readAsStringSync();

      final stem = filename.substring('google_'.length, filename.length - 5);
      final expectedPrefix = stem
          .split('_')
          .map((p) => p.isEmpty ? '' : p[0].toUpperCase() + p.substring(1))
          .join();
      final primaryClassName = 'Google$expectedPrefix';

      for (final match in classBodyRe.allMatches(source)) {
        final className = match.group(1)!;
        if (className == primaryClassName) continue;

        final openBrace = match.end - 1;
        var depth = 1;
        var i = openBrace + 1;
        while (i < source.length && depth > 0) {
          if (source[i] == '{') depth++;
          if (source[i] == '}') depth--;
          i++;
        }
        final body = source.substring(openBrace + 1, i - 1);

        for (final fieldMatch in plainFieldRe.allMatches(body)) {
          final line = fieldMatch.group(0)!.trim();
          if (line.contains('// gate7-ok')) continue;
          violations.add('$filename: class $className: $line');
        }
      }
    }

    return violations;
  }
}
