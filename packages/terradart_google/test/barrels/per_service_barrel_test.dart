// packages/terradart_google/test/barrels/per_service_barrel_test.dart
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

/// One `export 'path' show A, B, C;` directive parsed out of a barrel.
class _ExportDirective {
  const _ExportDirective({required this.sourcePath, required this.shownNames});
  final String sourcePath;
  final List<String> shownNames;
}

/// Parses `export '<path>' show A, B, C;` directives from a Dart barrel.
/// Tolerates multi-line `show` clauses (each name on its own line).
List<_ExportDirective> _parseExports(String dartSource) {
  // export\s+'(<path>)'\s+show\s+(A, B, C)\s*;
  final regex = RegExp(r"export\s+'([^']+)'\s+show\s+([^;]+);", dotAll: true);
  final results = <_ExportDirective>[];
  for (final match in regex.allMatches(dartSource)) {
    final sourcePath = match.group(1)!;
    final namesRaw = match.group(2)!;
    final names = namesRaw
        .split(',')
        .map((n) => n.trim())
        .where((n) => n.isNotEmpty)
        .toList();
    results.add(_ExportDirective(sourcePath: sourcePath, shownNames: names));
  }
  return results;
}

/// Returns the set of top-level Dart declarations (`class`, `enum`, `extension`,
/// `mixin`, `typedef`, top-level `const`/`final`/`var`) defined in [source].
Set<String> _topLevelDeclarations(String source) {
  // Class / enum / mixin / typedef declarations. Excludes `extension`
  // because anonymous extensions (`extension on String`) would falsely
  // capture `on` as the declaration name.
  final declRegex = RegExp(
    r'^(?:abstract\s+|sealed\s+|base\s+|interface\s+|final\s+|mixin\s+)*'
    r'(?:class|enum|mixin|typedef)\s+(\w+)',
    multiLine: true,
  );
  // Named extensions only: `extension Foo on Bar`. The `\s+on\b` suffix
  // skips anonymous extensions (`extension on String`) because (\w+)
  // would have to consume `on` and then no second `on` is present.
  final extensionRegex = RegExp(r'^extension\s+(\w+)\s+on\b', multiLine: true);
  final constRegex = RegExp(
    r"^const\s+\w+(?:<[^>]*>)?\s+(\w+)\s*=",
    multiLine: true,
  );
  final names = <String>{};
  for (final m in declRegex.allMatches(source)) {
    names.add(m.group(1)!);
  }
  for (final m in extensionRegex.allMatches(source)) {
    names.add(m.group(1)!);
  }
  for (final m in constRegex.allMatches(source)) {
    names.add(m.group(1)!);
  }
  return names;
}

void main() {
  group('Per-service barrels: show entries resolve to source declarations', () {
    final libDir = Directory('lib');

    // Find all `lib/*.dart` barrels except the legacy umbrella.
    // Evaluated at test-collection time; lib/ must exist from the working dir.
    final barrels = libDir.existsSync()
        ? libDir
              .listSync()
              .whereType<File>()
              .where((f) => f.path.endsWith('.dart'))
              .where((f) => p.basename(f.path) != 'terradart_google.dart')
              .toList()
        : <File>[];

    test('discovered at least 1 per-service barrel under lib/', () {
      // Also asserts lib/ is reachable from the working directory.
      expect(
        libDir.existsSync(),
        isTrue,
        reason: 'lib/ not found from terradart_google working dir',
      );
      // Trivially passes after Task 1 (zero barrels); becomes meaningful as
      // barrels land. Once Plan 5.B lands fully, the count is 16.
      expect(barrels, isNotNull);
    });

    for (final barrel in barrels) {
      final barrelName = p.basenameWithoutExtension(barrel.path);
      test('$barrelName.dart: every show entry resolves', () {
        final barrelSource = barrel.readAsStringSync();
        final exports = _parseExports(barrelSource);

        for (final directive in exports) {
          // Resolve sourcePath relative to lib/.
          final sourceFile = File(p.join('lib', directive.sourcePath));
          expect(
            sourceFile.existsSync(),
            isTrue,
            reason:
                '$barrelName.dart exports from "${directive.sourcePath}" '
                'but lib/${directive.sourcePath} does not exist',
          );
          final declarations = _topLevelDeclarations(
            sourceFile.readAsStringSync(),
          );
          for (final shownName in directive.shownNames) {
            expect(
              declarations.contains(shownName),
              isTrue,
              reason:
                  '$barrelName.dart show entry "$shownName" '
                  '(from ${directive.sourcePath}) has no matching top-level '
                  'declaration. Either drop the show entry or add the '
                  'declaration to the source file.',
            );
          }
        }
      });
    }
  });
}
