import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/exactly_one_derivation.dart';
import 'package:terradart_codegen/src/codegen/exactly_one_placement.dart';
import 'package:terradart_codegen/src/codegen/exactly_one_types.dart';
import 'package:terradart_codegen/src/codegen/migrate/helper_class_extractor.dart';
import 'package:terradart_codegen/src/codegen/nested_types/nested_type_collector.dart';
import 'package:terradart_codegen/src/codegen/nested_types/nested_type_emitter.dart';
import 'package:terradart_codegen/src/codegen/nested_types/nested_type_names.dart';
import 'package:terradart_codegen/src/codegen/provider_enums.dart';
import 'package:terradart_codegen/src/codegen/references/reference_targets.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/yaml_loader.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/provider_schema_ir.dart';
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
  resources: KindHints(
    exactlyOne: {
      'aws_thing': [
        ['a', 'b'],
        ['c', 'd'],
        ['settings.x', 'settings.y'],
      ],
    },
  ),
);

const _derives = WrapperOverride(outputDir: 'thing', deriveExactlyOne: true);

typedef _Derived = ({
  LoadedOverrides overrides,
  List<String> skipped,
  List<String> skippedAtMostOne,
  List<SealedName> names,
  List<String> nameErrors,
});

/// [deriveExactlyOneSlots] over a lane of resources only.
_Derived _derive(
  Map<String, WrapperOverride> overrides,
  Map<String, ResourceDef> defs, {
  required ProviderEnums providerEnums,
  Map<String, Map<String, dynamic>> rawSchemas = const {},
  Map<String, Map<String, ResolvedReference>> references = const {},
}) => deriveExactlyOneSlots(
  LoadedOverrides(resources: overrides, dataSources: const {}),
  _lane(defs),
  providerEnums: providerEnums,
  rawSchemas: (resources: rawSchemas, dataSources: const {}),
  references: (resources: references, dataSources: const {}),
);

ProviderEnums _hints({
  Map<String, List<List<String>>> exactlyOne = const {},
  Map<String, List<List<String>>> atMostOne = const {},
}) => ProviderEnums.on(
  resources: KindHints(exactlyOne: exactlyOne, atMostOne: atMostOne),
);

ProviderSchemaIR _lane(
  Map<String, ResourceDef> resources, {
  Map<String, ResourceDef> dataSources = const {},
}) => ProviderSchemaIR(
  providerName: 'aws',
  providerSource: 'hashicorp/aws',
  providerVersion: '1.0.0',
  resources: resources,
  dataSources: dataSources,
);

const _linuxType = 'azurerm_linux_virtual_machine';

const _linuxGroups = [
  ['admin_username', 'os_managed_disk_id'],
  ['os_managed_disk_id', 'source_image_id', 'source_image_reference'],
];

const _linuxNames = {
  'admin_username, os_managed_disk_id, source_image_id, source_image_reference':
      'os_source',
  'admin_username, source_image_id, source_image_reference': 'image',
};

Map<String, dynamic> _optionalString() => {'type': 'string', 'optional': true};

Map<String, dynamic> _sourceImageReference() => {
  'nesting_mode': 'list',
  'max_items': 1,
  'block': {
    'attributes': {
      'offer': {'type': 'string', 'required': true},
    },
  },
};

_Derived _deriveLinux({
  Map<String, String>? sealedNames = _linuxNames,
  List<String>? requiredParams,
}) => _derive(
  {
    _linuxType: WrapperOverride(
      outputDir: 'compute',
      deriveExactlyOne: true,
      deriveNestedTypes: true,
      sealedNames: sealedNames,
      requiredParams: requiredParams,
    ),
  },
  {
    _linuxType: ResourceDef(
      terraformType: _linuxType,
      root: BlockDef(
        attributes: [
          _attr('admin_username'),
          _attr('name', required: true),
          _attr('os_managed_disk_id'),
          _attr('source_image_id'),
        ],
        nestedBlocks: [
          NestedBlockDef(
            name: 'source_image_reference',
            nesting: NestingMode.list,
            maxItems: 1,
            constraints: const Constraints(optional: true),
            block: BlockDef(attributes: [_attr('offer', required: true)]),
          ),
        ],
      ),
    ),
  },
  providerEnums: _hints(exactlyOne: {_linuxType: _linuxGroups}),
  rawSchemas: {
    _linuxType: {
      'attributes': {
        'admin_username': _optionalString(),
        'name': {'type': 'string', 'required': true},
        'os_managed_disk_id': _optionalString(),
        'source_image_id': _optionalString(),
      },
      'block_types': {'source_image_reference': _sourceImageReference()},
    },
  },
);

void main() {
  test('nestedHints and rootGroups split groups by their parent block', () {
    expect(_groups.rootGroups('aws_thing', _derives).exactlyOne, [
      ['a', 'b'],
      ['c', 'd'],
    ]);
    expect(_groups.rootGroups('aws_other', _derives).exactlyOne, isEmpty);
    expect(_groups.nestedHints('aws_thing', _derives).exactlyOneGroups, {
      'settings': [
        ['x', 'y'],
      ],
    });
    const off = WrapperOverride(outputDir: 'thing');
    expect(_groups.nestedHints('aws_thing', off).exactlyOneGroups, isEmpty);
    expect(_groups.rootGroups('aws_thing', off).exactlyOne, isEmpty);
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
      expect(enums.rootGroups('aws_thing', _derives).exactlyOne, [
        ['a', 'b'],
      ]);
      expect(enums.nestedHints('aws_thing', _derives).exactlyOneGroups, {
        'settings': [
          ['x', 'y'],
        ],
      });
    });

    test('reads at_most_one_of_groups', () {
      write(
        'at_most_one_of_groups:\n'
        '  - ["content", "data"]\n',
      );
      final enums = ProviderEnums.load(dir.path, providerVersion: '1.0.0');
      final root = enums.rootGroups('aws_thing', _derives);
      expect(root.exactlyOne, isEmpty);
      expect(root.atMostOne, [
        ['content', 'data'],
      ]);
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

  group('withOverrideGroups', () {
    final defs = {
      'aws_thing': ResourceDef(
        terraformType: 'aws_thing',
        root: BlockDef(
          attributes: [_attr('a'), _attr('b'), _attr('c'), _attr('d')],
          nestedBlocks: [
            NestedBlockDef(
              name: 'settings',
              nesting: NestingMode.list,
              maxItems: 1,
              constraints: const Constraints(optional: true),
              block: BlockDef(attributes: [_attr('x'), _attr('y')]),
            ),
          ],
        ),
      ),
    };

    LoadedOverrides lane(WrapperOverride o) =>
        LoadedOverrides(resources: {'aws_thing': o}, dataSources: const {});

    test('adds the override groups to the loaded ones', () {
      final errors = <String>[];
      final enums = _groups.withOverrideGroups(
        lane(
          const WrapperOverride(
            outputDir: 'thing',
            deriveExactlyOne: true,
            exactlyOneOf: ['c, a'],
            atMostOneOf: ['b, d'],
          ),
        ),
        _lane(defs),
        error: errors.add,
      );
      expect(errors, isEmpty);
      final root = enums.rootGroups('aws_thing', _derives);
      expect(root.exactlyOne, hasLength(3));
      expect(root.exactlyOne.last, ['a', 'c']);
      expect(root.atMostOne, [
        ['b', 'd'],
      ]);
      expect(
        _groups.rootGroups('aws_thing', _derives).exactlyOne,
        hasLength(2),
      );
    });

    test('routes a data override to the data table and schema', () {
      final errors = <String>[];
      const data = WrapperOverride(
        outputDir: 'data',
        kind: WrapperOverrideKind.dataSource,
        deriveExactlyOne: true,
        exactlyOneOf: ['c, a'],
        atMostOneOf: ['b, x'],
      );
      final enums = _groups.withOverrideGroups(
        const LoadedOverrides(resources: {}, dataSources: {'aws_thing': data}),
        _lane(const {}, dataSources: defs),
        error: errors.add,
      );
      expect(errors, ['data.aws_thing [b, x]: x names no input']);
      expect(enums.rootGroups('aws_thing', data).exactlyOne, [
        ['a', 'c'],
      ]);
      expect(enums.rootGroups('aws_thing', _derives).exactlyOne, hasLength(2));
    });

    test('rejects a member that names no input', () {
      final errors = <String>[];
      _groups.withOverrideGroups(
        lane(const WrapperOverride(outputDir: 'thing', exactlyOneOf: ['a, z'])),
        _lane(defs),
        error: errors.add,
      );
      expect(errors, ['aws_thing [a, z]: z names no input']);
    });

    test('rejects a group the source already declares', () {
      final errors = <String>[];
      _groups.withOverrideGroups(
        lane(const WrapperOverride(outputDir: 'thing', atMostOneOf: ['b, a'])),
        _lane(defs),
        error: errors.add,
      );
      expect(errors, [
        'aws_thing [a, b]: the group source declares it; remove the entry',
      ]);
    });

    test('an exactly-one entry tightens a declared at-most-one group', () {
      const source = ProviderEnums.on(
        resources: KindHints(
          atMostOne: {
            'aws_thing': [
              ['a', 'b'],
            ],
          },
        ),
      );
      final enums = source.withOverrideGroups(
        lane(const WrapperOverride(outputDir: 'thing', exactlyOneOf: ['b, a'])),
        _lane(defs),
        error: (e) => fail(e),
      );
      final root = enums.rootGroups('aws_thing', _derives);
      expect(root.exactlyOne, [
        ['a', 'b'],
      ]);
      expect(root.atMostOne, isEmpty);
      expect(source.rootGroups('aws_thing', _derives).atMostOne, hasLength(1));
    });

    test('override groups alone are no group source', () {
      final enums = ProviderEnums.off.withOverrideGroups(
        lane(const WrapperOverride(outputDir: 'thing', exactlyOneOf: ['c, a'])),
        _lane(defs),
        error: (e) => fail(e),
      );
      expect(enums.rootGroups('aws_thing', _derives).exactlyOne, [
        ['a', 'c'],
      ]);
      expect(enums.hasGroupSource, isFalse);
      expect(
        _groups
            .withOverrideGroups(
              const LoadedOverrides(resources: {}, dataSources: {}),
              _lane(defs),
              error: fail,
            )
            .hasGroupSource,
        isTrue,
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
    Iterable<String> errors(ProviderEnums enums) => _derive(
      {'aws_thing': o},
      {'aws_thing': def},
      providerEnums: enums,
      rawSchemas: const {},
    ).nameErrors;
    expect(errors(ProviderEnums.off), isEmpty);
    expect(errors(_hints(exactlyOne: {'aws_other': []})), [
      'aws_thing sealedNames "a, b" matches no sealed group',
    ]);
  });

  test('a sealed name cannot take a meta-argument name', () {
    final def = ResourceDef(
      terraformType: 'aws_thing',
      root: BlockDef(attributes: [_attr('a'), _attr('b')]),
    );
    final derived = _derive(
      {
        'aws_thing': const WrapperOverride(
          outputDir: 'thing',
          deriveExactlyOne: true,
          sealedNames: {'a, b': 'provider'},
        ),
      },
      {'aws_thing': def},
      providerEnums: _hints(
        exactlyOne: {
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
    final derived = _derive(
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
    final o = derived.overrides.resources['aws_thing']!;
    expect(o.customSlots, isNull);
    expect(o.prelude, isNull);
    final sealed = o.sealedArguments.single;
    expect(sealed.concept, 'a_or_b');
    expect(sealed.sealedClass, 'ThingAOrB');
    expect(sealed.optional, isFalse);
    expect(sealed.members, ['a', 'b']);
    expect(sealed.variantClasses, ['ThingAOrBA', 'ThingAOrBChoice']);
    expect(o.paramOrder, isNot(contains('a')));
    expect(o.paramOrder, isNot(contains('b')));
    expect(o.paramOrder, containsAll(['a_or_b', 'c', 'd', 'name']));
    final prelude = emittedPrelude(o, 'aws_thing');
    expect(prelude, contains('sealed class ThingAOrB {'));
    expect(prelude, contains('final class ThingAOrBA extends ThingAOrB {'));
    expect(
      prelude,
      contains('const factory ThingAOrB.a(TfArg<String> a) = ThingAOrBA;'),
    );
    expect(prelude, contains('const ThingAOrBA(this.a);'));
    expect(prelude, contains("{'b': b};"));

    final off = _derive(
      {'aws_thing': const WrapperOverride(outputDir: 'thing')},
      {'aws_thing': def},
      providerEnums: _groups,
      rawSchemas: const {},
    );
    expect(off.overrides.resources['aws_thing']!.sealedArguments, isEmpty);
    expect(off.skipped, isEmpty);
  });

  test('a data source seals its own groups under the Data stem', () {
    final def = ResourceDef(
      terraformType: 'aws_thing',
      root: BlockDef(
        attributes: [_attr('a'), _attr('b'), _attr('c'), _attr('d')],
      ),
    );
    const data = WrapperOverride(
      outputDir: 'data',
      kind: WrapperOverrideKind.dataSource,
      deriveExactlyOne: true,
      sealedNames: {'x, y': 'nope'},
    );
    final derived = deriveExactlyOneSlots(
      const LoadedOverrides(
        resources: {'aws_thing': _derives},
        dataSources: {
          'aws_thing': data,
          'aws_client': WrapperOverride(
            outputDir: 'data',
            kind: WrapperOverrideKind.dataSource,
            deriveExactlyOne: true,
          ),
        },
      ),
      _lane(
        {'aws_thing': def},
        dataSources: {'aws_thing': def, 'aws_client': def},
      ),
      providerEnums: const ProviderEnums.on(
        resources: KindHints(
          exactlyOne: {
            'aws_thing': [
              ['a', 'b'],
            ],
          },
        ),
        dataSources: KindHints(
          exactlyOne: {
            'aws_thing': [
              ['c', 'd'],
            ],
            'aws_client': [
              ['a', 'b'],
            ],
          },
        ),
      ),
      rawSchemas: (resources: const {}, dataSources: const {}),
    );
    List<String> concepts(WrapperOverride o) => [
      for (final a in o.sealedArguments) a.concept,
    ];
    final d = derived.overrides.dataSources['aws_thing']!;
    expect(d.customSlots, isNull);
    expect(d.prelude, isNull);
    expect(concepts(d), ['c_or_d']);
    final sealed = d.sealedArguments.single;
    expect(sealed.sealedClass, 'DataThingCOrD');
    expect(sealed.optional, isFalse);
    expect(sealed.members, ['c', 'd']);
    expect(sealed.variantClasses, ['DataThingCOrDC', 'DataThingCOrDChoice']);
    expect(d.paramOrder, containsAll(['a', 'b', 'c_or_d']));
    expect(d.paramOrder, isNot(contains('c')));
    final prelude = emittedPrelude(d, 'aws_thing');
    expect(prelude, contains('sealed class DataThingCOrD {'));
    expect(prelude, contains('on `data.aws_thing`'));
    final r = derived.overrides.resources['aws_thing']!;
    expect(concepts(r), ['a_or_b']);
    expect(r.paramOrder, containsAll(['c', 'd']));
    expect(concepts(derived.overrides.dataSources['aws_client']!), ['a_or_b']);
    expect(
      [for (final n in derived.names) n.type],
      ['aws_thing', 'data.aws_thing', 'aws_client'],
    );
    expect(derived.nameErrors, [
      'data.aws_thing sealedNames "x, y" matches no sealed group',
    ]);
  });

  test('a data source with no data groups is left unchanged', () {
    final def = ResourceDef(
      terraformType: 'aws_thing',
      root: BlockDef(attributes: [_attr('a'), _attr('b')]),
    );
    const data = WrapperOverride(
      outputDir: 'data',
      kind: WrapperOverrideKind.dataSource,
      deriveExactlyOne: true,
    );
    final derived = deriveExactlyOneSlots(
      const LoadedOverrides(resources: {}, dataSources: {'aws_thing': data}),
      _lane(const {}, dataSources: {'aws_thing': def}),
      providerEnums: _hints(
        exactlyOne: {
          'aws_thing': [
            ['a', 'b'],
          ],
        },
      ),
      rawSchemas: (resources: const {}, dataSources: const {}),
    );
    expect(derived.overrides.dataSources['aws_thing'], same(data));
    expect(derived.names, isEmpty);
  });

  test('a block that is one exactly-one group is itself the sealed type', () {
    Map<String, dynamic> optional() => {'type': 'string', 'optional': true};
    final specs = collectNestedTypes(
      resourceBlock: {
        'block_types': {
          'settings': {
            'nesting_mode': 'list',
            'max_items': 1,
            'block': {
              'attributes': {'x': optional(), 'y': optional()},
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
    expect(src, contains('sealed class ThingSettings {'));
    expect(
      src,
      contains(
        'const factory ThingSettings.x(TfArg<String> x) = ThingSettingsX;',
      ),
    );
    expect(src, contains('final class ThingSettingsY extends ThingSettings {'));
    expect(src, isNot(contains('@immutable')));
    expect(src, isNot(contains('XOrY')));
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
    expect(src, contains('final class ThingSettingsXOrYChoice'));
    expect(
      src,
      contains(
        'const factory ThingSettingsXOrY.y(TfArg<String> y) = '
        'ThingSettingsXOrYChoice;',
      ),
    );
    expect(src, isNot(contains('this.x,')));
    expect(src, contains('this.z'));
  });

  test('a variant of a block with no fields takes no argument', () {
    final specs = collectNestedTypes(
      resourceBlock: {
        'block_types': {
          'settings': {
            'nesting_mode': 'list',
            'max_items': 1,
            'block': {
              'attributes': {
                'x': {'type': 'string', 'optional': true},
              },
              'block_types': {
                'empty': {
                  'nesting_mode': 'list',
                  'max_items': 1,
                  'block': <String, dynamic>{},
                },
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
          ['x', 'empty'],
        ],
      },
    );
    final src = renderNestedTypes(specs, resourceTerraformType: 'aws_thing');
    expect(
      src,
      contains(
        'const factory ThingSettings.empty([ThingEmpty empty]) = '
        'ThingSettingsEmpty;',
      ),
    );
    expect(src, contains('[this.empty = const ThingEmpty()]'));
    expect(src, contains('const factory ThingSettings.x(TfArg<String> x)'));
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
    final derived = _derive(
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
      providerEnums: _hints(
        exactlyOne: {
          'aws_thing': [names],
        },
      ),
      rawSchemas: const {},
    );
    expect(derived.skipped, isEmpty);
    expect(derived.nameErrors, isEmpty);
    final o = derived.overrides.resources['aws_thing']!;
    expect(o.customSlots, isNull);
    expect(o.prelude, isNull);
    final sealed = o.sealedArguments.single;
    expect(sealed.concept, 'source');
    expect(sealed.sealedClass, 'ThingSource');
    expect(sealed.optional, isFalse);
    expect(sealed.members, names);
    expect(sealed.variantClasses, [
      for (var i = 0; i < 40; i++) 'ThingSourceFeed$i',
    ]);
    expect(derived.names.single.name.source, SealedNameSource.human);
  });

  group('sealed concept names', () {
    test('join a segment without repeating the prefix', () {
      expect(
        joinTypeName('RdsCluster', 'cluster_identifier'),
        'RdsClusterIdentifier',
      );
      expect(joinTypeName('Foo', 'bar_baz'), 'FooBarBaz');
      expect(joinTypeName('RagConfig', 'rag_config'), 'RagConfig');
      expect(repeatsAcrossJoin('AssessmentRuleSampleRule', 'Sample'), isTrue);
      expect(repeatsAcrossJoin('TtlConfig', 'TtlConfigTtl'), isTrue);
      expect(repeatsAcrossJoin('BackupBackupPlan', 'Retention'), isFalse);
      expect(repeatsAcrossJoin('Budget', 'Amount'), isFalse);
    });

    test('a sealed name that repeats a segment is not derived', () {
      expect(sealedTypeName('BudgetAmount', 'spend'), 'BudgetAmountSpend');
      expect(sealedTypeName('BudgetAmount', 'amount'), isNull);
      expect(sealedTypeName('AssessmentRuleSampleRule', 'sample'), isNull);
      expect(
        sealedNameClash('AssessmentRuleSampleRule', 'sample', [
          'a',
          'b',
        ], const {}),
        contains('repeats a segment'),
      );
      expect(sealedNameClash('Rule', 'amount', ['a', 'b'], const {}), isNull);
      expect(
        sealedNameClash('Rule', 'amount', ['a', 'b'], const {'RuleAmount'}),
        contains('is taken'),
      );
    });

    test('variant names skip taken and repeating candidates', () {
      expect(exactlyOneVariantNames('Source', ['s3', 'gcs'], const {}), [
        'SourceS3',
        'SourceGcs',
      ]);
      expect(
        exactlyOneVariantNames(
          'Launch',
          ['launch_template'],
          const {'LaunchTemplate'},
        ),
        ['LaunchTemplateChoice'],
      );
      expect(exactlyOneVariantNames('ToolChoice', ['choice'], const {}), [
        'ToolChoiceOption',
      ]);
    });

    test('derive from a shared prefix or suffix', () {
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
      expect(deriveSealedConcept(['s3', 'gcs']), isNull);
    });

    test('a fallback that clashes is an error, not a repeating name', () {
      final resolved = resolveSealedName(
        members: ['a', 'b'],
        human: null,
        derived: null,
        clashes: (c) => 'the sealed type name repeats a segment of X',
      );
      expect(resolved.concept, 'a_or_b');
      expect(resolved.error, contains('name it in sealedNames'));
      expect(resolved.error, contains('repeats a segment'));
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
      expect(src, contains('final ThingTarget target;'));
      expect(src, contains('const factory ThingTarget.x('));
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

    test('names that concatenate alike still get distinct types', () {
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
                        't': {'type': 'string', 'optional': true},
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
      expect(src, contains('sealed class ThingBarMatch {'));
      expect(src, contains('sealed class ThingMatch {'));
      expect(
        [for (final n in nestedSealedNames(specs)) (n.concept, n.error)],
        [('bar_match', null), ('match', null)],
      );
    });

    test('a variant that would take a helper class gets a Choice suffix', () {
      Map<String, dynamic> optionalBlock(Map<String, dynamic> attrs) => {
        'nesting_mode': 'list',
        'max_items': 1,
        'block': {'attributes': attrs},
      };
      const optionalString = {'type': 'string', 'optional': true};
      final specs = collectNestedTypes(
        resourceBlock: {
          'block_types': {
            'match_r': optionalBlock({'v': optionalString}),
            'foo': optionalBlock({
              'r': optionalString,
              's': optionalString,
              't': optionalString,
            }),
          },
        },
        resourcePrefix: 'Thing',
        customSlotKeys: const {},
        excludedPaths: const {},
        exactlyOneGroups: {
          'foo': [
            ['r', 's'],
          ],
        },
        sealedNames: {'foo.r, foo.s': 'match'},
      );
      final src = renderNestedTypes(specs, resourceTerraformType: 'aws_thing');
      expect(src, contains('final class ThingMatchR {'));
      expect(src, contains('final class ThingMatchRChoice extends ThingMatch'));
      expect(nestedSealedNames(specs).single.error, isNull);
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
    expect(src, contains('final Map<String, ThingM>? m;'));
  });

  test(
    'deriveExactlyOneSlots reports nested groups without a typed helper',
    () {
      final derived = _derive(
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
        providerEnums: _hints(
          exactlyOne: {
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
    final derived = _derive(
      {
        'aws_thing': const WrapperOverride(
          outputDir: 'thing',
          deriveExactlyOne: true,
        ),
      },
      {'aws_thing': def},
      providerEnums: _hints(
        exactlyOne: {
          'aws_thing': [
            ['a', 'b'],
          ],
        },
        atMostOne: {
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
    final o = derived.overrides.resources['aws_thing']!;
    expect(o.customSlots, isNull);
    expect(o.prelude, isNull);
    final [exactlyOne, atMostOne] = o.sealedArguments;
    expect(exactlyOne.concept, 'a_or_b');
    expect(exactlyOne.sealedClass, 'ThingAOrB');
    expect(exactlyOne.optional, isFalse);
    expect(exactlyOne.members, ['a', 'b']);
    expect(atMostOne.concept, 'c_or_d');
    expect(atMostOne.sealedClass, 'ThingCOrD');
    expect(atMostOne.optional, isTrue);
    expect(atMostOne.members, ['c', 'd']);
    expect(atMostOne.variantClasses, ['ThingCOrDC', 'ThingCOrDChoice']);
    expect(o.paramOrder, ['a_or_b', 'c_or_d']);
    final prelude = emittedPrelude(o, 'aws_thing');
    expect(prelude, contains('/// At most one of `c`, `d` on `aws_thing`'));
    expect(prelude, contains('sealed class ThingCOrD {'));
    expect(
      prelude,
      contains('final class ThingCOrDChoice extends ThingCOrD {'),
    );
  });

  test('a block kept as a map passthrough seals as its map', () {
    final def = ResourceDef(
      terraformType: 'aws_thing',
      root: BlockDef(
        attributes: [_attr('rule_json')],
        nestedBlocks: [
          NestedBlockDef(
            name: 'rule',
            nesting: NestingMode.set,
            constraints: const Constraints(optional: true),
            block: BlockDef(attributes: [_attr('name')]),
          ),
        ],
      ),
    );
    _Derived derive({required bool excluded}) => _derive(
      {
        'aws_thing': WrapperOverride(
          outputDir: 'thing',
          deriveExactlyOne: true,
          deriveNestedTypes: true,
          nestedTypeExcludes: excluded ? const ['rule'] : null,
          sealedNames: const {'rule, rule_json': 'rules'},
        ),
      },
      {'aws_thing': def},
      providerEnums: _hints(
        atMostOne: {
          'aws_thing': [
            ['rule', 'rule_json'],
          ],
        },
      ),
      rawSchemas: {
        'aws_thing': {
          'attributes': {'rule_json': _optionalString()},
          'block_types': {
            'rule': {
              'nesting_mode': 'set',
              'block': {
                'attributes': {'name': _optionalString()},
              },
            },
          },
        },
      },
    );
    final derived = derive(excluded: true);
    expect(derived.skippedAtMostOne, isEmpty);
    final o = derived.overrides.resources['aws_thing']!;
    expect(o.sealedArguments.single.members, ['rule', 'rule_json']);
    final prelude = emittedPrelude(o, 'aws_thing');
    expect(
      prelude,
      contains(
        'const factory ThingRules.rule(TfArg<List<Map<String, dynamic>>> rule)',
      ),
    );
    expect(prelude, contains("{'rule': rule}"));
    expect(
      derive(
        excluded: false,
      ).overrides.resources['aws_thing']!.sealedArguments.single.members,
      ['rule', 'rule_json'],
      reason: 'a derived helper seals as itself',
    );
  });

  test('a member that is an earlier group\'s concept is in that group', () {
    final derived = _derive(
      {'aws_thing': _derives},
      {
        'aws_thing': ResourceDef(
          terraformType: 'aws_thing',
          root: BlockDef(
            attributes: [_attr('name'), _attr('name_prefix'), _attr('tags')],
          ),
        ),
      },
      providerEnums: _hints(
        exactlyOne: {
          'aws_thing': [
            ['name', 'name_prefix'],
          ],
        },
        atMostOne: {
          'aws_thing': [
            ['name', 'tags'],
          ],
        },
      ),
      rawSchemas: const {},
    );
    expect(derived.skippedAtMostOne, [
      'aws_thing [name, tags]: name is in an earlier group',
    ]);
    expect(
      derived.overrides.resources['aws_thing']!.sealedArguments.single.concept,
      'name',
    );
  });

  test('a list enum keeps its class off the sealed variant', () {
    final derived = _derive(
      {
        'aws_thing': const WrapperOverride(
          outputDir: 'thing',
          deriveExactlyOne: true,
          dartTypeOverrides: {'week_days': 'List<ThingWeekDays>'},
          sealedNames: {'month_days, week_days': 'days'},
        ),
      },
      {
        'aws_thing': ResourceDef(
          terraformType: 'aws_thing',
          root: BlockDef(attributes: [_attr('month_days'), _attr('week_days')]),
        ),
      },
      providerEnums: _hints(
        atMostOne: {
          'aws_thing': [
            ['month_days', 'week_days'],
          ],
        },
      ),
      rawSchemas: const {},
    );
    final o = derived.overrides.resources['aws_thing']!;
    expect(o.customSlots, isNull);
    expect(o.prelude, isNull);
    expect(o.sealedArguments.single.variantClasses, [
      'ThingMonthDays',
      'ThingWeekDaysChoice',
    ]);
    final prelude = emittedPrelude(o, 'aws_thing');
    expect(prelude, contains('final class ThingWeekDaysChoice'));
    expect(prelude, isNot(contains('final class ThingWeekDays ')));
    expect(prelude, contains('List<ThingWeekDays> weekDays'));
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
    final derived = _derive(
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
      providerEnums: _hints(
        exactlyOne: {
          'aws_thing': [
            ['a', 'b'],
          ],
        },
        atMostOne: {
          'aws_thing': [
            ['c', 'd'],
          ],
        },
      ),
      rawSchemas: const {},
    );
    expect(derived.skippedAtMostOne, ['aws_thing [c, d]: c is a custom slot']);
    final o = derived.overrides.resources['aws_thing']!;
    expect(o.customSlots!.keys, unorderedEquals(['b', 'c']));
    expect(o.overrideSlots.keys, unorderedEquals(['a_or_b', 'c']));
    expect(o.overrideSlots['a_or_b'], isA<SealedArgument>());
    expect(o.overrideSlots['c'], isA<CustomSlot>());
    expect(o.paramOrder, ['d', 'a_or_b', 'c']);
    expect(o.argMapOrder, ['a_or_b', 'd', 'c']);
    final prelude = emittedPrelude(o, 'aws_thing');
    expect(prelude, contains('const ThingAOrBChoice(this.bee);'));
    expect(prelude, contains('final ThingBHelper bee;'));
    expect(prelude, contains("{'b': [bee.encode()]};"));
    expect(prelude, contains("{'b': TfArg.literal([bee.encode()])};"));
  });

  test('emittedPrelude puts a blank line before each sealed argument', () {
    ExactlyOneVariant variant(String m) => (
      tfName: m,
      ident: m,
      fieldType: 'TfArg<String>',
      encodeExpr: '$m.toTfJson()',
      argMapExpr: m,
      deprecation: null,
      defaultValue: null,
    );
    final exactlyOne = SealedArgument(
      concept: 'a_or_b',
      sealedClass: 'ThingAOrB',
      optional: false,
      variants: [
        SoloVariant(variant('a'), className: 'ThingAOrBA'),
        SoloVariant(variant('b'), className: 'ThingAOrBChoice'),
      ],
    );
    final atMostOne = SealedArgument(
      concept: 'c_or_d',
      sealedClass: 'ThingCOrD',
      optional: true,
      variants: [
        SoloVariant(variant('c'), className: 'ThingCOrDC'),
        SoloVariant(variant('d'), className: 'ThingCOrDChoice'),
      ],
    );
    const hand = 'final class ThingHand {}\n';
    String? prelude(String? handWritten, List<SealedArgument> arguments) =>
        emittedPrelude(
          WrapperOverride(
            outputDir: 'thing',
            prelude: handWritten,
          ).withSealedArguments(
            paramOrder: const [],
            argMapOrder: null,
            sealedArguments: arguments,
          ),
          'aws_thing',
        );

    expect(emittedPrelude(null, 'aws_thing'), isNull);
    expect(prelude(null, const []), isNull);
    expect(prelude(hand, const []), hand);

    final alone = prelude(null, [exactlyOne])!;
    expect(alone, startsWith('\n/// Exactly one of `a`, `b` on `aws_thing`'));
    expect(alone, endsWith('}\n'));
    expect(prelude(hand, [exactlyOne]), '$hand$alone');
    expect(
      prelude(hand, [exactlyOne, atMostOne]),
      startsWith('$hand$alone\n/// At most one of `c`, `d` on `aws_thing`'),
    );
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
    final root = groups.rootGroups('google_thing', _derives);
    expect(root.exactlyOne, [
      ['a', 'b'],
    ]);
    expect(root.atMostOne, [
      ['c', 'd'],
    ]);
    expect(
      groups.nestedHints('google_thing', _derives).enumValues([
        'e',
      ], 'no values'),
      isNull,
    );
    const data = WrapperOverride(
      outputDir: 'data',
      kind: WrapperOverrideKind.dataSource,
      deriveExactlyOne: true,
    );
    expect(groups.rootGroups('google_thing', data).exactlyOne, isEmpty);
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

  test('an overlapping exactly-one pair becomes one joint variant', () {
    final derived = _deriveLinux();
    expect(derived.skipped, isEmpty);
    expect(derived.nameErrors, isEmpty);
    expect(
      [
        for (final n in derived.names)
          (n.name.key, n.name.concept, n.name.source),
      ],
      [
        (
          'admin_username, os_managed_disk_id, source_image_id, '
              'source_image_reference',
          'os_source',
          SealedNameSource.human,
        ),
        (
          'admin_username, source_image_id, source_image_reference',
          'image',
          SealedNameSource.human,
        ),
        (
          'source_image_id, source_image_reference',
          'source_image',
          SealedNameSource.derived,
        ),
      ],
    );
    final o = derived.overrides.resources[_linuxType]!;
    final sealed = o.sealedArguments.single;
    expect(sealed.concept, 'os_source');
    expect(sealed.sealedClass, 'LinuxVirtualMachineOsSource');
    expect(sealed.optional, isFalse);
    expect(sealed.members, [
      'admin_username',
      'source_image_id',
      'source_image_reference',
      'os_managed_disk_id',
    ]);
    expect(sealed.variantClasses, [
      'LinuxVirtualMachineOsSourceImage',
      'LinuxVirtualMachineOsSourceOsManagedDiskId',
    ]);
    final image = sealed.variants.first as JointVariant;
    expect(image.ident, 'image');
    expect(image.blockKey, 'admin_username');
    expect(image.parts.first, isA<MemberPart>());
    final choice = image.parts.last as ChoicePart;
    expect(choice.ident, 'sourceImage');
    expect(choice.sealedClass, 'LinuxVirtualMachineSourceImage');
    expect(
      [for (final v in choice.variants) v.className],
      [
        'LinuxVirtualMachineSourceImageId',
        'LinuxVirtualMachineSourceImageReferenceChoice',
      ],
    );
    expect(o.paramOrder, contains('os_source'));
    for (final m in sealed.members) {
      expect(o.paramOrder, isNot(contains(m)));
    }
    final prelude = emittedPrelude(o, _linuxType);
    expect(
      prelude,
      contains(
        'const factory LinuxVirtualMachineOsSource.image({required '
        'TfArg<String> adminUsername, required LinuxVirtualMachineSourceImage '
        'sourceImage}) = LinuxVirtualMachineOsSourceImage;',
      ),
    );
    expect(prelude, contains("String get blockKey => 'admin_username';"));
    expect(
      prelude,
      contains(
        "encode() => {'admin_username': adminUsername.toTfJson(), "
        '...sourceImage.encode()};',
      ),
    );
    expect(
      prelude,
      contains("{'admin_username': adminUsername, ...sourceImage.argMap};"),
    );
    expect(prelude, contains('sealed class LinuxVirtualMachineSourceImage {'));
    expect(
      prelude,
      contains(
        '/// - `.image` sets `admin_username` and one of `source_image_id` or '
        '`source_image_reference`.',
      ),
    );
  });

  test('a one-member part is a required field on the joint variant', () {
    const type = 'azurerm_site_recovery_vmware_replicated_vm';
    final derived = _derive(
      {
        type: const WrapperOverride(
          outputDir: 'site_recovery',
          deriveExactlyOne: true,
          sealedNames: {
            'default_log_storage_account_id, default_recovery_disk_type, '
                    'managed_disk':
                'disk_replication',
            'default_log_storage_account_id, default_recovery_disk_type':
                'defaults',
          },
        ),
      },
      {
        type: ResourceDef(
          terraformType: type,
          root: BlockDef(
            attributes: [
              _attr('default_log_storage_account_id'),
              _attr('default_recovery_disk_type'),
              _attr('managed_disk'),
            ],
          ),
        ),
      },
      providerEnums: _hints(
        exactlyOne: {
          type: [
            ['default_log_storage_account_id', 'managed_disk'],
            ['default_recovery_disk_type', 'managed_disk'],
          ],
        },
      ),
    );
    expect(derived.skipped, isEmpty);
    expect(derived.nameErrors, isEmpty);
    final o = derived.overrides.resources[type]!;
    final sealed = o.sealedArguments.single;
    expect(sealed.sealedClass, 'SiteRecoveryVmwareReplicatedVmDiskReplication');
    expect(sealed.variantClasses, [
      'SiteRecoveryVmwareReplicatedVmDiskReplicationDefaults',
      'SiteRecoveryVmwareReplicatedVmDiskReplicationManagedDisk',
    ]);
    final defaults = sealed.variants.first as JointVariant;
    expect(defaults.ident, 'defaults');
    expect(defaults.blockKey, 'default_log_storage_account_id');
    expect(defaults.parts, everyElement(isA<MemberPart>()));
    expect(defaults.members, [
      'default_log_storage_account_id',
      'default_recovery_disk_type',
    ]);
    final prelude = emittedPrelude(o, type)!;
    expect(
      prelude,
      contains(
        "encode() => {'default_log_storage_account_id': "
        'defaultLogStorageAccountId.toTfJson(), '
        "'default_recovery_disk_type': defaultRecoveryDiskType.toTfJson()};",
      ),
    );
    expect('sealed class '.allMatches(prelude), hasLength(1));
  });

  test('a joint with no sealedNames keeps a member-named factory', () {
    final derived = _deriveLinux(sealedNames: null);
    expect(derived.nameErrors, isEmpty);
    expect(
      [for (final n in derived.names) (n.name.concept, n.name.source)],
      [
        (
          'admin_username_or_os_managed_disk_id_or_source_image_id_or_'
              'source_image_reference',
          SealedNameSource.fallback,
        ),
        ('admin_username', SealedNameSource.derived),
        ('source_image', SealedNameSource.derived),
      ],
    );
    final sealed = derived.overrides.resources[_linuxType]!.sealedArguments;
    expect(
      (sealed.single.variants.first as JointVariant).ident,
      'adminUsername',
    );
  });

  test('a joint name that repeats its key member is E406', () {
    final derived = _deriveLinux(
      sealedNames: {
        ..._linuxNames,
        'admin_username, source_image_id, source_image_reference':
            'admin_username',
      },
    );
    expect(derived.nameErrors, [
      '$_linuxType [admin_username, source_image_id, source_image_reference]: '
          'sealedNames "admin_username" repeats the derived name; remove it',
    ]);
  });

  test('a nested choice name that repeats the derived name is E406', () {
    final derived = _deriveLinux(
      sealedNames: {
        ..._linuxNames,
        'source_image_id, source_image_reference': 'source_image',
      },
    );
    expect(derived.nameErrors, [
      '$_linuxType [source_image_id, source_image_reference]: '
          'sealedNames "source_image" repeats the derived name; remove it',
    ]);
  });

  test('a failed joint member skips every joined group', () {
    final derived = _deriveLinux(
      sealedNames: null,
      requiredParams: ['source_image_id'],
    );
    expect(derived.skipped, [
      '$_linuxType [admin_username, os_managed_disk_id]: '
          'source_image_id is in requiredParams',
      '$_linuxType [os_managed_disk_id, source_image_id, '
          'source_image_reference]: source_image_id is in requiredParams',
    ]);
    expect(derived.overrides.resources[_linuxType]!.sealedArguments, isEmpty);
  });

  test('a non-overlapping group stays a single sealed slot', () {
    final derived = _derive(
      {'aws_thing': _derives},
      {
        'aws_thing': ResourceDef(
          terraformType: 'aws_thing',
          root: BlockDef(
            attributes: [_attr('a'), _attr('b'), _attr('c'), _attr('d')],
          ),
        ),
      },
      providerEnums: _hints(
        exactlyOne: {
          'aws_thing': [
            ['a', 'b'],
            ['c', 'd'],
          ],
        },
      ),
    );
    final o = derived.overrides.resources['aws_thing']!;
    expect(o.sealedArguments, hasLength(2));
    for (final a in o.sealedArguments) {
      expect(a.variants, everyElement(isA<SoloVariant>()));
    }
    expect(emittedPrelude(o, 'aws_thing'), isNot(contains('input sets')));
  });

  test('the migration extractor reads a joint variant as regular', () {
    final o = _deriveLinux().overrides.resources[_linuxType]!;
    final extraction = const HelperClassExtractor().extract(
      emittedPrelude(o, _linuxType)!,
    );
    final image = extraction.helpers['LinuxVirtualMachineOsSourceImage']!;
    expect(image.blockKey, 'admin_username');
    expect(image.shorthand, 'image');
    expect(image.irregularReason, isNull);
    final [adminUsername, sourceImage] = image.fields;
    expect(adminUsername.name, 'adminUsername');
    expect(adminUsername.tfKey, 'admin_username');
    expect(sourceImage.name, 'sourceImage');
    expect(sourceImage.merged, isTrue);
    expect(extraction.variantsOf('LinuxVirtualMachineOsSource'), {
      'admin_username': 'LinuxVirtualMachineOsSourceImage',
      'os_managed_disk_id': 'LinuxVirtualMachineOsSourceOsManagedDiskId',
    });
    expect(extraction.variantsOf('LinuxVirtualMachineSourceImage'), {
      'source_image_id': 'LinuxVirtualMachineSourceImageId',
      'source_image_reference': 'LinuxVirtualMachineSourceImageReferenceChoice',
    });
  });

  test('an overlap in a nested block joins in its helper', () {
    Map<String, dynamic> settings() => {
      'nesting_mode': 'list',
      'max_items': 1,
      'block': {
        'attributes': {
          'admin_username': _optionalString(),
          'os_managed_disk_id': _optionalString(),
          'source_image_id': _optionalString(),
        },
        'block_types': {'source_image_reference': _sourceImageReference()},
      },
    };
    final groups = [
      for (final g in _linuxGroups) [for (final m in g) 'settings.$m'],
    ];
    final names = {
      for (final MapEntry(:key, :value) in _linuxNames.entries)
        sealedGroupKeyOf(const ['settings'], sealedGroupKey(key)): value,
    };
    final specs = collectNestedTypes(
      resourceBlock: {
        'block_types': {'settings': settings()},
      },
      resourcePrefix: 'Thing',
      customSlotKeys: const {},
      excludedPaths: const {},
      exactlyOneGroups: const {'settings': _linuxGroups},
      sealedNames: names,
    );
    final src = renderNestedTypes(specs, resourceTerraformType: 'aws_thing');
    expect(
      src,
      contains('const ThingSettings({\n    required this.osSource,\n  });'),
    );
    expect(src, contains('final ThingOsSource osSource;'));
    expect(
      src,
      contains(
        'const factory ThingOsSource.image({required TfArg<String> '
        'adminUsername, required ThingSourceImage sourceImage}) = '
        'ThingOsSourceImage;',
      ),
    );
    expect(src, isNot(contains('argMap')));
    const keys = [
      'settings.admin_username, settings.os_managed_disk_id, '
          'settings.source_image_id, settings.source_image_reference',
      'settings.admin_username, settings.source_image_id, '
          'settings.source_image_reference',
      'settings.source_image_id, settings.source_image_reference',
    ];
    expect(
      [for (final n in nestedSealedNames(specs)) (n.key, n.concept, n.source)],
      [
        (keys[0], 'os_source', SealedNameSource.human),
        (keys[1], 'image', SealedNameSource.human),
        (keys[2], 'source_image', SealedNameSource.derived),
      ],
    );
    expect(nestedSealedKeys(specs), keys.toSet());

    final derived = _derive(
      {
        'aws_thing': WrapperOverride(
          outputDir: 'thing',
          deriveExactlyOne: true,
          deriveNestedTypes: true,
          sealedNames: names,
        ),
      },
      {
        'aws_thing': const ResourceDef(
          terraformType: 'aws_thing',
          root: BlockDef(),
        ),
      },
      providerEnums: _hints(exactlyOne: {'aws_thing': groups}),
      rawSchemas: {
        'aws_thing': {
          'block_types': {'settings': settings()},
        },
      },
    );
    expect(derived.skipped, isEmpty);
    expect(derived.nameErrors, isEmpty);
    expect(derived.names, hasLength(3));
    expect(derived.overrides.resources['aws_thing']!.sealedArguments, isEmpty);
  });

  test('rootSealedTypeNames reserves a joint\'s types', () {
    expect(
      rootSealedTypeNames(
        'LinuxVirtualMachine',
        blockGroups(_linuxGroups, const []),
        sealedNames: _linuxNames,
      ),
      {
        'LinuxVirtualMachineOsSource',
        'LinuxVirtualMachineOsSourceImage',
        'LinuxVirtualMachineOsSourceOsManagedDiskId',
        'LinuxVirtualMachineSourceImage',
        'LinuxVirtualMachineSourceImageId',
        'LinuxVirtualMachineSourceImageReference',
      },
    );
  });
}
