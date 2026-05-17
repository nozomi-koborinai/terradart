// packages/terradart_google/test/synth/sensitive_round_trip_test.dart
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/universal_invariants/synthetic_argmap_builder.dart';
import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

/// Parses `const Set<String> [_]<Name>Sensitive = <String>{ 'a', 'b.c' };`
/// from a wrapper Dart source. Returns the parsed paths (or empty set if
/// the const is `<String>{}` / not present).
///
/// Plan 5.X (v0.5.0-dev) moved the const from a sibling Layer 1
/// `<r>.schema.dart` file (public `<r>Sensitive`) into the wrapper file
/// itself (file-private `_<r>Sensitive`). The regex tolerates both shapes:
/// the optional leading `_` covers the new file-private form and any
/// downstream forks that re-publicise the const.
Set<String> _parseSensitiveSet(String dartSource) {
  // Capture: between `<String>{` and the closing `};`. Tolerates
  // multi-line + arbitrary whitespace.
  final block = RegExp(
    r'const\s+Set<String>\s+_?\w+Sensitive\s*=\s*<String>\{([^}]*)\};',
    dotAll: true,
  );
  final match = block.firstMatch(dartSource);
  if (match == null) return <String>{};
  final body = match.group(1)!;
  return RegExp(r"'([^']+)'").allMatches(body).map((m) => m.group(1)!).toSet();
}

void main() {
  group('Gate 2: sensitive mask round-trip per resource', () {
    // Plan 5.X retired the `lib/src/generated/<r>.schema.dart` Layer 1; the
    // file-private `_<r>Sensitive` const now lives inline at the top of each
    // wrapper file under `lib/src/<service>/google_*.dart`. We walk every
    // `lib/src/` subdir and pick wrapper files (skipping the empty `data/`
    // case if it has no wrappers).
    final libSrc = Directory(p.join('lib', 'src'));
    final wrapperFiles = libSrc
        .listSync(recursive: true)
        .whereType<File>()
        .where(
          (f) =>
              f.path.endsWith('.dart') &&
              p.basename(f.path).startsWith('google_'),
        )
        .toList();

    test('lib/src/ contains at least 28 wrapper files (curated corpus)', () {
      expect(
        wrapperFiles,
        hasLength(greaterThanOrEqualTo(28)),
        reason: 'terradart_google/lib/src/ should hold at least 28 '
            'google_*.dart wrapper files (curated corpus floor). Partial '
            'regen or stale checkout suspected if fewer.',
      );
    });

    for (final wrapperFile in wrapperFiles) {
      final resourceName = p.basenameWithoutExtension(wrapperFile.path);
      final src = wrapperFile.readAsStringSync();
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
            reason: '$resourceName: path "$path" not masked '
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
