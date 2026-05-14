// packages/terradart_codegen/test/codegen/universal_invariants_test.dart
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/universal_invariants/enum_extractor.dart';
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

    group('Gate 5: identifier sanity (lowerCamelCase enum members)', () {
      test('every emitted enum member is lowerCamelCase', () {
        final root = Directory(
          p.join('..', 'terradart_google', 'lib', 'src'),
        );
        expect(
          root.existsSync(),
          isTrue,
          reason: 'terradart_google/lib/src not found from '
              'terradart_codegen working dir',
        );
        // ^[a-z]: must start with lowercase letter.
        // ([a-z0-9]|[A-Z][a-z0-9]+)*: each capital must be followed by at
        // least one lowercase letter or digit (no consecutive capitals).
        // Forbids: ALL_CAPS, leading-digit, snake_case, hyphenated, and
        // embedded-CAPS runs like addCOSTTOMED.
        final lowerCamelCase = RegExp(r'^[a-z]([a-z0-9]|[A-Z][a-z0-9]+)*$');

        final offenders = <String>[];
        for (final ent in root.listSync(recursive: true)) {
          if (ent is! File) continue;
          if (!ent.path.endsWith('.dart')) continue;
          final src = ent.readAsStringSync();
          final emittedEnums = const EnumExtractor().extract(src);
          for (final enumDecl in emittedEnums) {
            for (final memberName in enumDecl.members.keys) {
              if (!lowerCamelCase.hasMatch(memberName)) {
                offenders.add(
                  '${p.relative(ent.path, from: root.path)}: '
                  '${enumDecl.name}.$memberName',
                );
              }
            }
          }
        }
        expect(
          offenders,
          isEmpty,
          reason: 'Emitted enum member identifier violates lowerCamelCase '
              '(^[a-z]([a-z0-9]|[A-Z][a-z0-9]+)*\$). This is the TG-2 '
              'bug class — wrap-promote ValidValuesEmitter producing '
              'garbage Dart identifiers like `addCOSTTOMED` or `3DES`.\n'
              'Offenders: ${offenders.join(", ")}',
        );
      });
    });
  });
}
