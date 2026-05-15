// packages/terradart_google/test/synth/sensitive_round_trip_test.dart
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/universal_invariants/synthetic_argmap_builder.dart';
import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

/// Parses `const Set<String> <Name>Sensitive = <String>{ 'a', 'b.c' };` from
/// a generated `.schema.dart` file. Returns the parsed paths (or empty
/// set if the const is `<String>{}` / not present).
Set<String> _parseSensitiveSet(String dartSource) {
  // Capture: between `<String>{` and the closing `};`. Tolerates
  // multi-line + arbitrary whitespace.
  final block = RegExp(
    r'const\s+Set<String>\s+\w+Sensitive\s*=\s*<String>\{([^}]*)\};',
    dotAll: true,
  );
  final match = block.firstMatch(dartSource);
  if (match == null) return <String>{};
  final body = match.group(1)!;
  return RegExp(r"'([^']+)'").allMatches(body).map((m) => m.group(1)!).toSet();
}

void main() {
  group('Gate 2: sensitive mask round-trip per resource', () {
    final generatedDir = Directory(p.join('lib', 'src', 'generated'));
    final schemaFiles = generatedDir
        .listSync()
        .whereType<File>()
        .where((f) => f.path.endsWith('.schema.dart'))
        .toList();

    test(
      'generated dir contains at least 28 schema files (curated corpus)',
      () {
        expect(
          schemaFiles,
          hasLength(greaterThanOrEqualTo(28)),
          reason:
              'terradart_google/lib/src/generated/ should hold at least 28 '
              '<resource>.schema.dart files (curated corpus floor). Partial '
              'regen or stale checkout suspected if fewer.',
        );
      },
    );

    for (final schemaFile in schemaFiles) {
      final fileName = p.basenameWithoutExtension(schemaFile.path);
      // fileName looks like `google_compute_instance.schema` — strip `.schema`.
      final resourceName = fileName.endsWith('.schema')
          ? fileName.substring(0, fileName.length - '.schema'.length)
          : fileName;
      final src = schemaFile.readAsStringSync();
      final paths = _parseSensitiveSet(src);
      if (paths.isEmpty) continue;

      test('$resourceName: every sensitive path masks to "" at synth time', () {
        const builder = SyntheticArgMapBuilder();
        for (final path in paths) {
          final argMap = builder.buildForPath(path, 'plaintext-secret');
          final encoded = JsonEncoder.encodeArgMapWithSensitive(
            argMap: argMap,
            sensitiveFields: {path},
          );
          // Walk the encoded structure following the path to retrieve the leaf.
          final leaf = _walkEncodedPath(encoded, path.split('.'));
          expect(
            leaf,
            equals(''),
            reason:
                '$resourceName: path "$path" not masked '
                '(encoded leaf is $leaf, expected "")',
          );
        }
      });
    }
  });
}

Object? _walkEncodedPath(Map<String, dynamic> root, List<String> segments) {
  Object? current = root;
  for (var i = 0; i < segments.length; i++) {
    final segment = segments[i];
    if (current is Map) {
      current = current[segment];
    } else if (current is List && current.isNotEmpty) {
      // Single-element nested-block wrap: re-enter the map inside.
      final first = current.first;
      if (first is Map) {
        current = first[segment];
      } else {
        return null;
      }
    } else {
      return null;
    }
  }
  return current;
}
