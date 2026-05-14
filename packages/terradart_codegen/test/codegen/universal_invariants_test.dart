// packages/terradart_codegen/test/codegen/universal_invariants_test.dart
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/universal_invariants/enum_extractor.dart';
import 'package:terradart_codegen/src/codegen/universal_invariants/path_walker.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/yaml_loader.dart';
import 'package:terradart_codegen/src/ir/provider_schema_ir.dart';
import 'package:terradart_codegen/src/parser/ir_merger.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

void main() {
  group('Universal invariants', () {
    late LoadedOverrides loaded;
    late ProviderSchemaIR ir;

    setUpAll(() {
      loaded = loadWrapperOverrides(
        rootDir: 'lib/src/codegen/wrapper_overrides/yaml',
      );
      final rawIr = const SchemaJsonParser().parseString(
        File('test/fixtures/wrap/source/schema.json').readAsStringSync(),
        providerVersion: '7.31.0',
      );
      // SchemaJsonParser does not populate enum_values (Terraform schema JSON
      // has no such field). enum_values come from the Magic Modules YAML
      // mirror. Merge them in so Gate 3's schema-side enum check is non-vacuous.
      final mmDir = Directory('test/fixtures/wrap/source/mm');
      final mmOverrides = <String, MmResourceOverrides>{};
      for (final ent in mmDir.listSync()) {
        if (ent is! File) continue;
        if (!ent.path.endsWith('.yaml')) continue;
        final terraformType = p.basenameWithoutExtension(ent.path);
        mmOverrides[terraformType] =
            const MmYamlParser().parseString(ent.readAsStringSync());
      }
      ir = const IrMerger().merge(base: rawIr, overrides: mmOverrides);
    });

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

    group('Gate 1: paramOrder covers every required schema attribute', () {
      test('every required attr is in paramOrder or customSlots', () {
        final offenders = <String>[];

        // Resources side.
        for (final entry in loaded.resources.entries) {
          final terraformType = entry.key;
          final override = entry.value;
          final def = ir.resources[terraformType];
          // TODO(gate1-unmatched): a yaml override naming a resource absent
          // from the fixture schema (typo, or fixture stale) is silently
          // skipped here. Add a complementary assertion that every override
          // key resolves to an IR def.
          if (def == null) continue;

          // NOTE: only root-level attributes are checked. Required nested
          // blocks (min_items > 0) are excluded by scope — track in a future
          // gate if regressions emerge.
          final requiredAttrs = def.root.attributes
              .where((a) => a.constraints.required)
              .map((a) => a.name)
              .toSet();

          final fromParamOrder = override.paramOrder?.toSet() ?? <String>{};
          final fromCustomSlots =
              override.customSlots?.keys.toSet() ?? <String>{};
          final covered = fromParamOrder.union(fromCustomSlots);

          final missing = requiredAttrs.difference(covered);
          if (missing.isNotEmpty) {
            offenders.add('$terraformType: missing required attrs $missing');
          }
        }

        // Data sources side (same logic against `ir.dataSources`).
        for (final entry in loaded.dataSources.entries) {
          final terraformType = entry.key;
          final override = entry.value;
          final def = ir.dataSources[terraformType];
          if (def == null) continue;

          final requiredAttrs = def.root.attributes
              .where((a) => a.constraints.required)
              .map((a) => a.name)
              .toSet();
          final fromParamOrder = override.paramOrder?.toSet() ?? <String>{};
          final fromCustomSlots =
              override.customSlots?.keys.toSet() ?? <String>{};
          final covered = fromParamOrder.union(fromCustomSlots);
          final missing = requiredAttrs.difference(covered);
          if (missing.isNotEmpty) {
            offenders.add('$terraformType: missing required attrs $missing');
          }
        }

        expect(
          offenders,
          isEmpty,
          reason: 'paramOrder must list every required schema attribute '
              '(or the attribute must be covered via customSlots). '
              'A required attr absent from both is silently dropped from '
              'the factory constructor.\n'
              'Offenders: ${offenders.join("\n  ")}',
        );
      });
    });

    group('Gate 3: enum terraformValue matches schema enum_values exactly', () {
      test('every dartTypeOverrides enum round-trips through the schema', () {
        const walker = PathWalker();
        const extractor = EnumExtractor();

        // Pre-extract every emitted enum across all wrapper + schema files,
        // keyed by Dart enum name.
        final emittedEnums = <String, EmittedEnum>{};
        final root = Directory(
          p.join('..', 'terradart_google', 'lib', 'src'),
        );
        expect(
          root.existsSync(),
          isTrue,
          reason: 'terradart_google/lib/src not found from '
              'terradart_codegen working dir',
        );
        // Scan scope is intentionally terradart_google/lib/src so that wrapper
        // types like TfArg (defined in terradart_core) cannot collide with
        // emittedEnums when the dartTypeName regex extracts capital-prefixed
        // identifiers like `TfArg<EnumName>?`.
        for (final ent in root.listSync(recursive: true)) {
          if (ent is! File) continue;
          if (!ent.path.endsWith('.dart')) continue;
          for (final e in extractor.extract(ent.readAsStringSync())) {
            emittedEnums[e.name] = e;
          }
        }

        final offenders = <String>[];

        for (final entry in loaded.resources.entries) {
          final terraformType = entry.key;
          final override = entry.value;
          final dartTypeOverrides = override.dartTypeOverrides ?? {};
          final def = ir.resources[terraformType];
          if (def == null) continue;

          dartTypeOverrides.forEach((fieldPath, dartTypeName) {
            // dartTypeName may be `EnumName` or `TfArg<EnumName>?`.
            // Strip the wrapper so the lookup matches a bare enum name.
            final bareEnumName = RegExp(r'[A-Z][A-Za-z0-9]*')
                .allMatches(dartTypeName)
                .map((m) => m.group(0)!)
                .where((n) => emittedEnums.containsKey(n))
                .firstOrNull;
            if (bareEnumName == null) return; // dartTypeOverrides entry
            //                                   doesn't reference an enum

            final emitted = emittedEnums[bareEnumName]!;
            final attr =
                walker.resolveAttribute(def.root, fieldPath.split('.'));
            if (attr == null) {
              offenders.add(
                '$terraformType: dartTypeOverrides field "$fieldPath" '
                'has no matching IR attribute',
              );
              return;
            }
            final schemaEnumValues = attr.constraints.enumValues?.toSet();
            if (schemaEnumValues == null) return;
            // ^ schema has no enum_values for this field; the enum was
            // hand-authored (e.g. KmsKeyPurpose). Gate 3 only enforces
            // round-trip when the schema has the source of truth.

            final emittedTerraformValues = emitted.members.values.toSet();
            // Dart's default Set uses reference equality; compare structurally.
            final equal =
                emittedTerraformValues.containsAll(schemaEnumValues) &&
                    schemaEnumValues.containsAll(emittedTerraformValues);
            if (!equal) {
              offenders.add(
                '$terraformType.$fieldPath ($bareEnumName): '
                'emitted=$emittedTerraformValues schema=$schemaEnumValues',
              );
            }
          });
        }

        expect(
          offenders,
          isEmpty,
          reason: 'Enum terraformValue strings drifted from the schema '
              'enum_values. This is the TG-2 bug class extended — even '
              'with correct Dart identifiers, the wire-value set may '
              'have grown or shrunk vs. the schema.\n'
              'Offenders:\n  ${offenders.join("\n  ")}',
        );
      });
    });
  });
}
