import 'dart:io';

/// Gate 6: every nested helper class declared in
/// `packages/terradart_google/lib/src/<barrel>/<resource>.dart` must
/// have a name that starts with the file's `<Service><Resource>` prefix.
///
/// Returns an empty list when all helpers conform; otherwise returns
/// a human-readable violation per offender.
class NestedHelperPrefix {
  static List<String> scan({required String rootDir}) {
    final violations = <String>[];
    final dir = Directory(rootDir);
    if (!dir.existsSync()) return violations;

    final classRe = RegExp(
      r'^(?:sealed\s+|final\s+|abstract\s+)?class\s+([A-Z][A-Za-z0-9]+)\s*[{(<]',
      multiLine: true,
    );

    for (final entity in dir.listSync(recursive: true)) {
      if (entity is! File) continue;
      if (!entity.path.endsWith('.dart')) continue;
      final filename = entity.path.split(Platform.pathSeparator).last;
      if (!filename.startsWith('google_')) continue;

      // Derive expected prefix from filename:
      // `google_bigquery_dataset.dart` -> `BigqueryDataset`.
      final stem = filename.substring('google_'.length, filename.length - 5);
      final expectedPrefix = stem
          .split('_')
          .map((p) => p.isEmpty ? '' : p[0].toUpperCase() + p.substring(1))
          .join();

      final source = entity.readAsStringSync();
      for (final match in classRe.allMatches(source)) {
        final name = match.group(1)!;
        // The resource class itself is `Google<expectedPrefix>`; helpers
        // should start with `<expectedPrefix>`.
        if (name == 'Google$expectedPrefix') continue;
        if (name.startsWith(expectedPrefix)) continue;
        violations
            .add('$filename: class $name (expected prefix $expectedPrefix)');
      }
    }

    return violations;
  }
}
