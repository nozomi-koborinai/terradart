import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/exactly_one_derivation.dart';
import 'package:terradart_codegen/src/codegen/exactly_one_types.dart';
import 'package:terradart_codegen/src/codegen/nested_types/nested_type_collector.dart';
import 'package:terradart_codegen/src/codegen/nested_types/nested_type_emitter.dart';
import 'package:terradart_codegen/src/codegen/provider_enums.dart';
import 'package:terradart_codegen/src/codegen/references/reference_targets.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
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

  test('sealedNames keys go unjudged when no group source is loaded', () {
    final def = ResourceDef(
      terraformType: 'aws_thing',
      root: BlockDef(attributes: [_attr('a'), _attr('b')]),
    );
    const o = WrapperOverride(
      outputDir: 'thing',
      deriveExactlyOne: true,
      sealedNames: {'a, b': 'source'},
    );
    Iterable<String> errors(ProviderEnums enums) => deriveExactlyOneSlots(
      {'aws_thing': o},
      {'aws_thing': def},
      providerEnums: enums,
      rawSchemas: const {},
    ).nameErrors;
    expect(errors(ProviderEnums.off), isEmpty);
    expect(
      errors(const ProviderEnums.on(exactlyOneGroups: {'aws_other': []})),
      ['aws_thing sealedNames "a, b" matches no sealed group'],
    );
  });

  test('a sealed name cannot take a meta-argument name', () {
    final def = ResourceDef(
      terraformType: 'aws_thing',
      root: BlockDef(attributes: [_attr('a'), _attr('b')]),
    );
    final derived = deriveExactlyOneSlots(
      {
        'aws_thing': const WrapperOverride(
          outputDir: 'thing',
          deriveExactlyOne: true,
          sealedNames: {'a, b': 'provider'},
        ),
      },
      {'aws_thing': def},
      providerEnums: const ProviderEnums.on(
        exactlyOneGroups: {
          'aws_thing': [
            ['a', 'b'],
          ],
        },
      ),
      rawSchemas: const {},
    );
    expect(derived.nameErrors.single, contains('the slot provider is taken'));
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
    expect(o.prelude, contains('final class ThingAOrBA extends ThingAOrB {'));
    expect(
      o.prelude,
      contains('const factory ThingAOrB.a(TfArg<String> a) = ThingAOrBA;'),
    );
    expect(o.prelude, contains('const ThingAOrBA(this.a);'));
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

  test('a member that names another resource takes its RefTo', () {
    final def = ResourceDef(
      terraformType: 'aws_thing',
      root: BlockDef(attributes: [_attr('a'), _attr('b')]),
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
      references: const {
        'aws_thing': {
          'a': ResolvedReference(
            target: 'aws_vpc',
            className: 'AwsVpc',
            outputDir: 'ec2',
            attribute: 'id',
            list: false,
          ),
        },
      },
    );
    final prelude = derived.overrides['aws_thing']!.prelude!;
    expect(
      prelude,
      contains('const factory ThingAOrB.a(RefTo<AwsVpc> a) = ThingAOrBA;'),
    );
    expect(prelude, contains("{'a': a.encodeAs('id').toTfJson()};"));
    expect(prelude, contains("{'a': a.encodeAs('id')};"));
    expect(prelude, contains('const factory ThingAOrB.b(TfArg<String> b)'));
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
    expect(src, contains('final class ThingSettingsXOrYY'));
    expect(
      src,
      contains(
        'const factory ThingSettingsXOrY.y(TfArg<String> y) = '
        'ThingSettingsXOrYY;',
      ),
    );
    expect(src, isNot(contains('this.x,')));
    expect(src, contains('this.z'));
  });

  test('a nested sealed member that names another resource takes its '
      'RefTo', () {
    final specs = collectNestedTypes(
      resourceBlock: {
        'block_types': {
          'settings': {
            'nesting_mode': 'list',
            'max_items': 1,
            'block': {
              'attributes': {
                'x': {'type': 'string', 'optional': true},
                'y': {'type': 'string', 'optional': true},
                'z': {'type': 'string', 'optional': true},
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
      references: (path) => path.join('.') == 'settings.x'
          ? const ResolvedReference(
              target: 'aws_vpc',
              className: 'AwsVpc',
              outputDir: 'ec2',
              attribute: 'id',
              list: false,
            )
          : null,
    );
    final src = renderNestedTypes(specs, resourceTerraformType: 'aws_thing');
    expect(
      src,
      contains(
        'const factory ThingSettingsXOrY.x(RefTo<AwsVpc> x) = '
        'ThingSettingsXOrYX;',
      ),
    );
    expect(src, contains("'x': x.encodeAs('id').toTfJson()"));
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

  test('a group of any size seals, named by its human name', () {
    final names = [for (var i = 0; i < 40; i++) 'feed$i'];
    final derived = deriveExactlyOneSlots(
      {
        'aws_thing': WrapperOverride(
          outputDir: 'thing',
          deriveExactlyOne: true,
          sealedNames: {names.reversed.join(', '): 'source'},
        ),
      },
      {
        'aws_thing': ResourceDef(
          terraformType: 'aws_thing',
          root: BlockDef(attributes: [for (final n in names) _attr(n)]),
        ),
      },
      providerEnums: ProviderEnums.on(
        exactlyOneGroups: {
          'aws_thing': [names],
        },
      ),
      rawSchemas: const {},
    );
    expect(derived.skipped, isEmpty);
    expect(derived.nameErrors, isEmpty);
    expect(
      derived.overrides['aws_thing']!.customSlots!['source']!.paramDeclaration,
      'required ThingSource source',
    );
    expect(derived.names.single.name.source, SealedNameSource.human);
  });

  group('sealed concept names', () {
    test('derive from a shared prefix, suffix, or the whole block', () {
      expect(deriveSealedConcept(['name', 'name_prefix']), 'name');
      expect(
        deriveSealedConcept(['content_base64', 'content_file']),
        'content',
      );
      expect(
        deriveSealedConcept(['mysql_source_config', 'oracle_source_config']),
        'source_config',
      );
      expect(deriveSealedConcept(['public_key', 'public_keys']), 'public_key');
      expect(
        deriveSealedConcept(['ipv6_address_count', 'ipv6_addresses']),
        'ipv6_address',
      );
      expect(
        deriveSealedConcept(['size_in_bytes', 'size_in_megabytes']),
        'size',
      );
      expect(deriveSealedConcept(['enable_x', 'enable_y']), isNull);
      expect(deriveSealedConcept(['role_arn', 'user_arn']), isNull);
      expect(deriveSealedConcept(['region', 'aws_region']), isNull);
      expect(
        deriveSealedConcept(['s3', 'gcs'], wholeBlockName: 'source'),
        'source',
      );
      expect(deriveSealedConcept(['s3', 'gcs']), isNull);
    });

    test('a human name wins; a clash or a repeat is an error', () {
      String? none(String _) => null;
      expect(
        resolveSealedName(
          members: ['a', 'b'],
          human: 'code',
          derived: null,
          clashes: none,
        ),
        (concept: 'code', source: SealedNameSource.human, error: null),
      );
      expect(
        resolveSealedName(
          members: ['a', 'b'],
          human: null,
          derived: 'code',
          clashes: (c) => c == 'code' ? 'taken' : null,
        ),
        (concept: 'a_or_b', source: SealedNameSource.fallback, error: null),
      );
      expect(
        resolveSealedName(
          members: ['a', 'b'],
          human: 'code',
          derived: 'code',
          clashes: none,
        ).error,
        contains('repeats the derived name'),
      );
      expect(
        resolveSealedName(
          members: ['a', 'b'],
          human: 'code',
          derived: null,
          clashes: (_) => 'the slot code is taken',
        ).error,
        contains('the slot code is taken'),
      );
    });

    test('group keys are member paths in any order', () {
      expect(sealedGroupKey(' b ,a'), {'a', 'b'});
      expect(
        sealedGroupKeyOf(['settings'], ['y', 'x']),
        'settings.x, settings.y',
      );
      expect(sealedGroupKeyOf(const [], ['b', 'a']), 'a, b');
    });

    test('a nested group takes its human name from the block', () {
      final specs = collectNestedTypes(
        resourceBlock: {
          'block_types': {
            'settings': {
              'nesting_mode': 'list',
              'max_items': 1,
              'block': {
                'attributes': {
                  'x': {'type': 'string', 'optional': true},
                  'y': {'type': 'string', 'optional': true},
                  'z': {'type': 'string', 'optional': true},
                },
              },
            },
          },
        },
        resourcePrefix: 'Thing',
        customSlotKeys: const {},
        excludedPaths: const {},
        exactlyOneGroups: {
          'settings': [
            ['x', 'y'],
          ],
        },
        sealedNames: {'settings.y, settings.x': 'target'},
      );
      final src = renderNestedTypes(specs, resourceTerraformType: 'aws_thing');
      expect(src, contains('final ThingSettingsTarget target;'));
      expect(src, contains('const factory ThingSettingsTarget.x('));
      expect(nestedSealedNames(specs), [
        (
          key: 'settings.x, settings.y',
          concept: 'target',
          source: SealedNameSource.human,
          derived: null,
          error: null,
        ),
      ]);
    });

    test('a nested name clashes with a sealed type another block chose', () {
      final specs = collectNestedTypes(
        resourceBlock: {
          'block_types': {
            'foo': {
              'nesting_mode': 'list',
              'max_items': 1,
              'block': {
                'attributes': {
                  'p': {'type': 'string', 'optional': true},
                  'q': {'type': 'string', 'optional': true},
                },
                'block_types': {
                  'bar': {
                    'nesting_mode': 'list',
                    'max_items': 1,
                    'block': {
                      'attributes': {
                        'r': {'type': 'string', 'optional': true},
                        's': {'type': 'string', 'optional': true},
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
        exactlyOneGroups: {
          'foo': [
            ['p', 'q'],
          ],
          'foo.bar': [
            ['r', 's'],
          ],
        },
        sealedNames: {
          'foo.p, foo.q': 'bar_match',
          'foo.bar.r, foo.bar.s': 'match',
        },
      );
      final src = renderNestedTypes(specs, resourceTerraformType: 'aws_thing');
      expect(
        RegExp(r'sealed class ThingFooBarMatch\b').allMatches(src),
        hasLength(1),
      );
      final child = nestedSealedNames(
        specs,
      ).singleWhere((n) => n.key == 'foo.bar.r, foo.bar.s');
      expect(child.concept, 'r_or_s');
      expect(child.error, contains('ThingFooBarMatch'));
    });

    test('a shared helper takes its name from any copy', () {
      Map<String, dynamic> settings() => {
        'nesting_mode': 'list',
        'max_items': 1,
        'block': {
          'attributes': {
            'x': {'type': 'string', 'optional': true},
            'y': {'type': 'string', 'optional': true},
            'z': {'type': 'string', 'optional': true},
          },
        },
      };
      final specs = collectNestedTypes(
        resourceBlock: {
          'block_types': {'one': settings(), 'two': settings()},
        },
        resourcePrefix: 'Thing',
        customSlotKeys: const {},
        excludedPaths: const {},
        shareIdenticalShapes: true,
        exactlyOneGroups: const {
          'one': [
            ['x', 'y'],
          ],
          'two': [
            ['x', 'y'],
          ],
        },
        sealedNames: {'two.x, two.y': 'target'},
      );
      expect(
        renderNestedTypes(specs, resourceTerraformType: 'aws_thing'),
        contains(' target;'),
      );
      expect(
        nestedSealedKeys(specs),
        containsAll(['one.x, one.y', 'two.x, two.y']),
      );
    });
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
    expect(o.prelude, contains('final class ThingCOrDD extends ThingCOrD {'));
  });

  test('a hand helper custom slot becomes a variant of its group', () {
    final def = ResourceDef(
      terraformType: 'aws_thing',
      root: BlockDef(
        attributes: [_attr('a'), _attr('d')],
        nestedBlocks: const [
          NestedBlockDef(
            name: 'b',
            nesting: NestingMode.list,
            block: BlockDef(),
            constraints: Constraints(optional: true),
          ),
          NestedBlockDef(
            name: 'c',
            nesting: NestingMode.list,
            block: BlockDef(),
            constraints: Constraints(optional: true),
          ),
        ],
      ),
    );
    final derived = deriveExactlyOneSlots(
      {
        'aws_thing': const WrapperOverride(
          outputDir: 'thing',
          deriveExactlyOne: true,
          paramOrder: ['d', 'a', 'b', 'c'],
          argMapOrder: ['a', 'd', 'b', 'c'],
          customSlots: {
            'b': CustomSlot(
              paramDeclaration: 'ThingBHelper? bee',
              argMapEntry:
                  "if (bee != null) 'b': TfArg.literal([bee.encode()]),",
            ),
            'c': CustomSlot(
              paramDeclaration: 'required ThingCHelper c',
              argMapEntry: "'c': TfArg.literal([c.encode()]),",
            ),
          },
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
            ['c', 'd'],
          ],
        },
      ),
      rawSchemas: const {},
    );
    expect(derived.skippedAtMostOne, ['aws_thing [c, d]: c is a custom slot']);
    final o = derived.overrides['aws_thing']!;
    expect(o.customSlots!.keys, unorderedEquals(['a_or_b', 'c']));
    expect(o.paramOrder, ['d', 'a_or_b', 'c']);
    expect(o.argMapOrder, ['a_or_b', 'd', 'c']);
    expect(o.prelude, contains('const ThingAOrBB(this.bee);'));
    expect(o.prelude, contains('final ThingBHelper bee;'));
    expect(o.prelude, contains("{'b': [bee.encode()]};"));
    expect(o.prelude, contains("{'b': TfArg.literal([bee.encode()])};"));
  });

  test('customSlotVariant reads only the optional helper slot shape', () {
    expect(
      customSlotVariant(
        'b',
        const CustomSlot(
          paramDeclaration: 'List<ThingB>? bs',
          argMapEntry:
              "if (bs != null) 'b': TfArg.literal(bs.map((e) => e.encode()).toList()),",
        ),
        null,
      )?.fieldType,
      'List<ThingB>',
    );
    expect(
      customSlotVariant(
        'b',
        const CustomSlot(
          paramDeclaration: 'ThingB? b',
          argMapEntry: "if (b != null) 'other': TfArg.literal(b.encode()),",
        ),
        null,
      ),
      isNull,
    );
  });

  test('ProviderEnums.mmGroups seals groups with the enum gate closed', () {
    const mm = {
      'google_thing': MmResourceOverrides(
        fieldOverrides: {},
        exactlyOneOfPaths: [
          ['a', 'b'],
        ],
        atMostOneOfPaths: [
          ['c', 'd'],
        ],
        enumValuesByPath: {
          'e': ['X', 'Y'],
        },
      ),
    };
    final groups = ProviderEnums.mmGroups(mm);
    expect(groups.enabled, isFalse);
    expect(groups.hints, isEmpty);
    expect(groups.exactlyOneGroupsByBlock('google_thing'), {
      '': [
        ['a', 'b'],
      ],
    });
    expect(groups.atMostOneGroupsByBlock('google_thing'), {
      '': [
        ['c', 'd'],
      ],
    });
    expect(groups.resolver('google_thing')(['e'], 'no values'), isNull);
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
