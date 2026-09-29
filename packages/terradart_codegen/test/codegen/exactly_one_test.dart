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

    void write(String body) => File(
      p.join(dir.path, 'hints', 'aws_thing.yaml'),
    ).writeAsStringSync('provider_version: 1.0.0\n$body');

    test('reads exactly_one_of_groups', () {
      write(
        'exactly_one_of_groups:\n'
        '  - ["a", "b"]\n'
        '  - ["settings.x", "settings.y"]\n',
      );
      final enums = ProviderEnums.load(dir.path, providerVersion: '1.0.0');
      expect(enums.exactlyOneGroups, {
        'aws_thing': [
          ['a', 'b'],
          ['settings.x', 'settings.y'],
        ],
      });
    });

    test('reads at_most_one_of_groups', () {
      write(
        'at_most_one_of_groups:\n'
        '  - ["content", "data"]\n',
      );
      final enums = ProviderEnums.load(dir.path, providerVersion: '1.0.0');
      expect(enums.exactlyOneGroups, isEmpty);
      expect(enums.atMostOneGroups, {
        'aws_thing': [
          ['content', 'data'],
        ],
      });
    });

    test('rejects a malformed at-most-one group list', () {
      write('at_most_one_of_groups: ["a", "b"]\n');
      expect(
        () => ProviderEnums.load(dir.path, providerVersion: '1.0.0'),
        throwsFormatException,
      );
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
      'aws_thing settings [x, y]: the block has no typed helper',
    ]);
    final o = derived.overrides['aws_thing']!;
    expect(
      o.customSlots!['a_or_b']!.paramDeclaration,
      'required ThingAOrB aOrB',
    );
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

  test('unsealedNestedGroups reports the nested groups left unsealed', () {
    final specs = collectNestedTypes(
      resourceBlock: {
        'block_types': {
          'settings': {
            'nesting_mode': 'list',
            'max_items': 1,
            'block': {
              'attributes': {
                'x': {'type': 'string', 'optional': true},
                'y': {'type': 'string', 'required': true},
              },
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
    expect(
      unsealedNestedGroups(specs, const {
        'settings': [
          ['x', 'y'],
        ],
        'gone': [
          ['p', 'q'],
        ],
      }),
      [
        'settings [x, y]: y is required',
        'gone [p, q]: the block has no typed helper',
      ],
    );
  });

  test('unsealedNestedGroups follows shared helpers to every copy', () {
    Map<String, dynamic> settings() => {
      'nesting_mode': 'list',
      'max_items': 1,
      'block': {
        'attributes': {
          'x': {'type': 'string', 'optional': true},
          'y': {'type': 'string', 'optional': true},
        },
      },
    };
    const groups = {
      'one': [
        ['x', 'y'],
      ],
      'two': [
        ['x', 'y'],
      ],
    };
    final specs = collectNestedTypes(
      resourceBlock: {
        'block_types': {'one': settings(), 'two': settings()},
      },
      resourcePrefix: 'Thing',
      customSlotKeys: const {},
      excludedPaths: const {},
      shareIdenticalShapes: true,
      exactlyOneGroups: groups,
    );
    expect(specs.map((s) => s.className).toSet(), hasLength(1));
    expect(unsealedNestedGroups(specs, groups), isEmpty);
  });

  test('a keyed block leaves its nested group unsealed', () {
    const groups = {
      'settings': [
        ['m', 'n'],
      ],
    };
    final specs = collectNestedTypes(
      resourceBlock: {
        'block_types': {
          'settings': {
            'nesting_mode': 'list',
            'max_items': 1,
            'block': {
              'attributes': {
                'n': {'type': 'string', 'optional': true},
              },
              'block_types': {
                'm': {
                  'nesting_mode': 'map',
                  'block': {
                    'attributes': {
                      'v': {'type': 'string', 'optional': true},
                    },
                  },
                },
              },
            },
          },
        },
      },
      resourcePrefix: 'Thing',
      customSlotKeys: const {},
      excludedPaths: const {},
      exactlyOneGroups: groups,
    );
    expect(unsealedNestedGroups(specs, groups), [
      'settings [m, n]: m is a keyed block',
    ]);
    final src = renderNestedTypes(specs, resourceTerraformType: 'aws_thing');
    expect(src, isNot(contains('sealed class')));
    expect(src, contains('final Map<String, ThingSettingsM>? m;'));
  });

  test(
    'deriveExactlyOneSlots reports nested groups without a typed helper',
    () {
      final derived = deriveExactlyOneSlots(
        {
          'aws_thing': const WrapperOverride(
            outputDir: 'thing',
            deriveExactlyOne: true,
          ),
        },
        {
          'aws_thing': ResourceDef(
            terraformType: 'aws_thing',
            root: BlockDef(attributes: [_attr('a'), _attr('b')]),
          ),
        },
        providerEnums: const ProviderEnums.on(
          exactlyOneGroups: {
            'aws_thing': [
              ['settings.x', 'settings.y'],
            ],
          },
        ),
        rawSchemas: const {},
      );
      expect(derived.skipped, [
        'aws_thing settings [x, y]: the block has no typed helper',
      ]);
    },
  );

  test('an at-most-one group becomes a nullable sealed slot', () {
    final def = ResourceDef(
      terraformType: 'aws_thing',
      root: BlockDef(
        attributes: [_attr('a'), _attr('b'), _attr('c'), _attr('d')],
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
      providerEnums: const ProviderEnums.on(
        exactlyOneGroups: {
          'aws_thing': [
            ['a', 'b'],
          ],
        },
        atMostOneGroups: {
          'aws_thing': [
            ['b', 'c'],
            ['c', 'd'],
          ],
        },
      ),
      rawSchemas: const {},
    );
    expect(derived.skipped, isEmpty);
    expect(derived.skippedAtMostOne, [
      'aws_thing [b, c]: b is in an earlier group',
    ]);
    final o = derived.overrides['aws_thing']!;
    expect(
      o.customSlots!['a_or_b']!.paramDeclaration,
      'required ThingAOrB aOrB',
    );
    expect(o.customSlots!['c_or_d']!.paramDeclaration, 'ThingCOrD? cOrD');
    expect(o.customSlots!['c_or_d']!.argMapEntry, '...?cOrD?.argMap,');
    expect(o.paramOrder, ['a_or_b', 'c_or_d']);
    expect(o.prelude, contains('/// At most one of `c`, `d` on `aws_thing`'));
    expect(o.prelude, contains('sealed class ThingCOrD {'));
    expect(o.prelude, contains('final class ThingDOption extends ThingCOrD {'));
  });

  test('a nested at-most-one group becomes a nullable sealed field', () {
    Map<String, dynamic> optional() => {'type': 'string', 'optional': true};
    const atMostOne = {
      'settings': [
        ['x', 'y'],
        ['y', 'z'],
      ],
    };
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
      atMostOneGroups: atMostOne,
    );
    final src = renderNestedTypes(specs, resourceTerraformType: 'aws_thing');
    expect(src, contains('sealed class ThingSettingsXOrY {'));
    expect(src, contains('this.xOrY,'));
    expect(src, isNot(contains('required this.xOrY')));
    expect(src, contains('final ThingSettingsXOrY? xOrY;'));
    expect(src, contains('...?xOrY?.encode(),'));
    expect(src, contains('this.z,'));
    expect(unsealedNestedGroups(specs, atMostOne, optional: true), [
      'settings [y, z]: y is in an earlier group',
    ]);
    expect(unsealedNestedGroups(specs, const {}), isEmpty);
  });
}
