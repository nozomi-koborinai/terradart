// packages/terradart_codegen/test/codegen/universal_invariants_test.dart
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

void main() {
  group('Universal invariants', () {
    group('Gate 4: UnimplementedError(TODO(wrap-promote)) ban', () {
      test('zero occurrences in shipped terradart_google source', () {
        // Only terradart_google ships wrap-promote sealed classes; terradart_codegen
        // contains the emitter (legitimately includes the placeholder string) and
        // golden fixtures (.golden, not .dart), both correctly outside this root.
        final root = Directory(
          p.join('..', 'terradart_google', 'lib', 'src'),
        );
        expect(
          root.existsSync(),
          isTrue,
          reason: 'terradart_google/lib/src not found from '
              'terradart_codegen working dir',
        );

        final offenders = <String>[];
        for (final ent in root.listSync(recursive: true)) {
          if (ent is! File) continue;
          if (!ent.path.endsWith('.dart')) continue;
          final content = ent.readAsStringSync();
          if (content.contains("UnimplementedError('TODO(wrap-promote)")) {
            offenders.add(p.relative(ent.path, from: root.path));
          }
        }
        expect(
          offenders,
          isEmpty,
          reason: 'wrap-promote sealed-class scaffold left a TODO in '
              'shipped Dart. Replace UnimplementedError(...) bodies '
              'with actual encode() implementations.\n'
              'Offenders: ${offenders.join(", ")}',
        );
      });
    });
  });
}
