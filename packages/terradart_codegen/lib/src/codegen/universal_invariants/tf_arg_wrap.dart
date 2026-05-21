import 'dart:io';

/// Gate 7: every field declared on a nested helper class in
/// `terradart_google` must be wrapped in `TfArg<T>` (or
/// `List<TfArg<T>>`, `Map<String, TfArg<T>>`, etc.). Plain Dart
/// types (`String`, `int`, `bool`) are the rename target.
///
/// Returns an empty list when all helper fields conform.
///
/// **Escape hatch**: annotate a field with `// gate7-ok` on the same
/// line to suppress the violation for that declaration. Use only for
/// Dart-side discriminant flags that are intentionally plain Dart types
/// (not Terraform arguments), e.g. `final bool arrayContains; // gate7-ok`.
///
/// Note: regex-based parsing is a heuristic — it may produce false
/// positives on multi-line declarations or false negatives on creative
/// class bodies. For Plan 3 / v1.0 polish purposes, the gate's job is
/// to catch the obvious cases enumerated in the audit.
class TfArgWrap {
  static List<String> scan({required String rootDir}) {
    final violations = <String>[];
    final dir = Directory(rootDir);
    if (!dir.existsSync()) return violations;

    // Match a class block: captures (className, body).
    // dotAll=true so `.` matches newlines inside the body.
    final classBodyRe = RegExp(
      r'(?:sealed\s+|final\s+|abstract\s+)?class\s+([A-Z][A-Za-z0-9]+)\s*(?:extends\s+[^{]+)?(?:implements\s+[^{]+)?\s*\{',
      multiLine: true,
    );

    // Plain field declarations (not TfArg-wrapped).
    // Optionally followed by `// gate7-ok` for intentional exceptions.
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

      // Find the primary resource class name to skip its fields.
      final stem = filename.substring('google_'.length, filename.length - 5);
      final expectedPrefix = stem
          .split('_')
          .map((p) => p.isEmpty ? '' : p[0].toUpperCase() + p.substring(1))
          .join();
      final primaryClassName = 'Google$expectedPrefix';

      // Find each class start position and process the body up to the
      // next top-level `}`. We use a simple brace-counting approach to
      // extract the class body more reliably than a dotAll regex.
      for (final match in classBodyRe.allMatches(source)) {
        final className = match.group(1)!;
        if (className == primaryClassName) continue;

        // Extract class body via brace counting from the opening `{`.
        final openBrace = match.end - 1; // position of `{`
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
          // Skip fields annotated with `// gate7-ok` — these are
          // intentional Dart-side discriminant flags, not TF arguments.
          if (line.contains('// gate7-ok')) continue;
          violations.add('$filename: class $className: $line');
        }
      }
    }

    return violations;
  }
}
