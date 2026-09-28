import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/exactly_one_derivation.dart';
import 'package:terradart_codegen/src/codegen/nested_types/nested_type_collector.dart';
import 'package:terradart_codegen/src/codegen/nested_types/nested_type_emitter.dart';
import 'package:terradart_codegen/src/codegen/provider_enums.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

Attribute _attr(String name, {bool required = false}) => Attribute(
      name: name,
      type: const StringType(),
      constraints: required
          ? const Constraints(required: true)
          : const Constraints(optional: true),
    );

const _groups = ProviderEnums.on(
  exactlyOneGroups: {
    'aws_thing': [
      ['a', 'b'],
      ['c', 'd'],
      ['settings.x', 'settings.y'],
    ],
  },
);

void main() {
  test('exactlyOneGroupsByBlock keys groups by their parent block', () {
    expect(_groups.exactlyOneGroupsByBlock('aws_thing'), {
      '': [
        ['a', 'b'],
        ['c', 'd'],
      ],
      'settings': [
        ['x', 'y'],
      ],
    });
    expect(_groups.exactlyOneGroupsByBlock('aws_other'), isEmpty);
    expect(
      _groups.nestedExactlyOneGroups(
        'aws_thing',
        const WrapperOverride(outputDir: 'thing', deriveExactlyOne: true),
      ),
      {
        'settings': [
          ['x', 'y'],
        ],
      },
    );
    expect(
      _groups.nestedExactlyOneGroups(
        'aws_thing',
        const WrapperOverride(outputDir: 'thing'),
      ),
      isEmpty,
    );
  });

  group('ProviderEnums.load', () {
    late Directory dir;
    setUp(() {
      dir = Directory.systemTemp.createTempSync('exactly_one_');
      Directory(p.join(dir.path, 'hints')).createSync();
    });
    tearDown(() => dir.deleteSync(recursive: true));

    void write(String body) =>
        File(p.join(dir.path, 'hints', 'aws_thing.yaml')).writeAsStringSync(
          'provider_version: 1.0.0\n$body',
        );

    test('reads exactly_one_of_groups', () {
      write('exactly_one_of_groups:\n'
          '  - ["a", "b"]\n'
          '  - ["settings.x", "settings.y"]\n');
      final enums = ProviderEnums.load(dir.path, providerVersion: '1.0.0');
      expect(enums.exactlyOneGroups, {
        'aws_thing': [
          ['a', 'b'],
          ['settings.x', 'settings.y'],
        ],
      });
    });

    test('rejects a malformed group list', () {
      write('exactly_one_of_groups: ["a", "b"]\n');
      expect(
        () => ProviderEnums.load(dir.path, providerVersion: '1.0.0'),
        throwsFormatException,
      );
    });
  });

  test('deriveExactlyOneSlots seals a group of optional inputs', () {
    final def = ResourceDef(
      terraformType: 'aws_thing',
      root: BlockDef(
        attributes: [
          _attr('a'),
          _attr('b'),
          _attr('c', required: true),
          _attr('d'),
          _attr('name', required: true),
        ],
      ),
    );
    final derived = deriveExactlyOneSlots(
      {
        'aws_thing': const WrapperOverride(
          outputDir: 'thing',
          deriveExactlyOne: true,
        ),
      },
      {'aws_thing': def},
      providerEnums: _groups,
      rawSchemas: const {},
    );
    expect(derived.skipped, [
      'aws_thing [c, d]: c is required or has no typed shape',
    ]);
    final o = derived.overrides['aws_thing']!;
    expect(
        o.customSlots!['a_or_b']!.paramDeclaration, 'required ThingAOrB aOrB');
    expect(o.customSlots!['a_or_b']!.argMapEntry, '...aOrB.argMap,');
    expect(o.paramOrder, isNot(contains('a')));
    expect(o.paramOrder, isNot(contains('b')));
    expect(o.paramOrder, containsAll(['a_or_b', 'c', 'd', 'name']));
    expect(o.prelude, contains('sealed class ThingAOrB {'));
    expect(o.prelude, contains('final class ThingAOption extends ThingAOrB {'));
    expect(o.prelude, contains("{'b': b};"));

    final off = deriveExactlyOneSlots(
      {'aws_thing': const WrapperOverride(outputDir: 'thing')},
      {'aws_thing': def},
      providerEnums: _groups,
      rawSchemas: const {},
    );
    expect(off.overrides['aws_thing']!.customSlots, isNull);
    expect(off.skipped, isEmpty);
  });

  test('a nested exactly-one group becomes a sealed helper field', () {
    Map<String, dynamic> optional() => {'type': 'string', 'optional': true};
    final specs = collectNestedTypes(
      resourceBlock: {
        'block_types': {
          'settings': {
            'nesting_mode': 'list',
            'max_items': 1,
            'block': {
              'attributes': {'x': optional(), 'y': optional(), 'z': optional()},
            },
          },
        },
      },
      resourcePrefix: 'Thing',
      customSlotKeys: const {},
      excludedPaths: const {},
      exactlyOneGroups: const {
        'settings': [
          ['x', 'y'],
        ],
      },
    );
    final src = renderNestedTypes(specs, resourceTerraformType: 'aws_thing');
    expect(src, contains('sealed class ThingSettingsXOrY {'));
    expect(src, contains('required this.xOrY'));
    expect(src, contains('final ThingSettingsXOrY xOrY;'));
    expect(src, contains('...xOrY.encode(),'));
    expect(src, contains('final class ThingSettingsYOption'));
    expect(src, isNot(contains('this.x,')));
    expect(src, contains('this.z'));
  });
}
