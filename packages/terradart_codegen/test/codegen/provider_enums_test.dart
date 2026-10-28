import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/nested_types/nested_type_collector.dart';
import 'package:terradart_codegen/src/codegen/provider_enums.dart';
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

Attribute _attr(
  String name, {
  TypeDef type = const StringType(),
  String? description,
  bool computedOnly = false,
}) => Attribute(
  name: name,
  type: type,
  description: description,
  constraints: computedOnly
      ? const Constraints(computed: true)
      : const Constraints(optional: true),
);

ProviderSchemaIR _ir(
  List<Attribute> attrs, {
  List<Attribute> dataAttrs = const [],
}) => ProviderSchemaIR(
  providerName: 'x',
  providerSource: 'example/x',
  providerVersion: '1.0.0',
  resources: {
    'x_thing': ResourceDef(
      terraformType: 'x_thing',
      root: BlockDef(attributes: attrs),
    ),
  },
  dataSources: {
    if (dataAttrs.isNotEmpty)
      'x_thing': ResourceDef(
        terraformType: 'x_thing',
        root: BlockDef(attributes: dataAttrs),
      ),
  },
);

List<String>? _values(
  ProviderSchemaIR ir,
  String attr, {
  WrapperOverrideKind kind = WrapperOverrideKind.resource,
}) => ir
    .of(kind)['x_thing']!
    .root
    .attributes
    .firstWhere((a) => a.name == attr)
    .constraints
    .enumValues;

const _resource = WrapperOverride(outputDir: 'thing', deriveExactlyOne: true);
const _data = WrapperOverride(
  outputDir: 'data',
  kind: WrapperOverrideKind.dataSource,
  deriveExactlyOne: true,
);

void main() {
  const available = 'Available values: "a", "b".';

  test('off leaves the IR and the resolver alone', () {
    final ir = _ir([_attr('mode', description: available)]);
    expect(identical(ProviderEnums.off.enrich(ir), ir), isTrue);
    expect(
      ProviderEnums.off.nestedHints('x_thing', _resource).enumValues,
      same(descriptionEnumValues),
    );
  });

  test('a hint beats the description, at any depth', () {
    const enums = ProviderEnums.on(
      resources: KindHints(
        enums: {
          'x_thing': {
            'mode': ['h1', 'h2'],
            'settings.level': ['l1'],
          },
        },
      ),
    );
    final ir = enums.enrich(_ir([_attr('mode', description: available)]));
    expect(_values(ir, 'mode'), ['h1', 'h2']);
    expect(
      enums.nestedHints('x_thing', _resource).enumValues([
        'settings',
        'level',
      ], available),
      ['l1'],
    );
  });

  test('a resource hint never types its data-source twin', () {
    const enums = ProviderEnums.on(
      resources: KindHints(
        enums: {
          'x_thing': {
            'mode': ['h1', 'h2'],
            'settings.level': ['l1'],
          },
        },
        exactlyOne: {
          'x_thing': [
            ['a', 'b'],
          ],
        },
      ),
    );
    final ir = enums.enrich(
      _ir(
        [_attr('mode')],
        dataAttrs: [
          _attr('mode', description: available),
          _attr('other'),
        ],
      ),
    );
    expect(_values(ir, 'mode', kind: WrapperOverrideKind.dataSource), [
      'a',
      'b',
    ]);
    expect(
      enums.nestedHints('x_thing', _data).enumValues([
        'settings',
        'level',
      ], available),
      ['a', 'b'],
    );
    expect(enums.rootGroups('x_thing', _data).exactlyOne, isEmpty);
    expect(enums.rootGroups('x_thing', _resource).exactlyOne, [
      ['a', 'b'],
    ]);
  });

  test('fromMm reads MM enum values and exactly_one_of groups', () {
    final enums = ProviderEnums.fromMm({
      'x_thing': const MmYamlParser().parseString('''
properties:
  - name: mode
    type: Enum
    enum_values: [M1, M2]
    exactly_one_of: [mode, other]
  - name: rules
    type: Array
    item_type:
      type: NestedObject
      properties:
        - name: level
          type: Enum
          enum_values: [L1]
'''),
    });
    expect(enums.enabled, isTrue);
    expect(enums.caseInsensitive, isFalse);
    expect(_values(enums.enrich(_ir([_attr('mode')])), 'mode'), ['M1', 'M2']);
    final resolve = enums.nestedHints('x_thing', _resource).enumValues;
    expect(resolve(['rules', 'level'], null), ['L1']);
    expect(resolve(['rules', 'other'], available), isNull);
    expect(enums.rootGroups('x_thing', _resource).exactlyOne, [
      ['mode', 'other'],
    ]);
    expect(enums.rootGroups('x_thing', _data).exactlyOne, isEmpty);
  });

  test(
    'withinSchema drops members the schema has no input for, outputs too',
    () {
      const enums = ProviderEnums.on(
        resources: KindHints(
          exactlyOne: {
            'x_thing': [
              ['mode', 'other', 'beta_only'],
              ['mode', 'beta_only'],
              ['settings.level', 'settings.tier'],
              ['mode', 'state'],
            ],
          },
          atMostOne: {
            'x_thing': [
              ['settings.level', 'wrong.depth'],
            ],
          },
        ),
        dataSources: KindHints(
          exactlyOne: {
            'x_thing': [
              ['mode', 'other'],
            ],
          },
        ),
      );
      final dropped = <String>[];
      final ir = ProviderSchemaIR(
        providerName: 'x',
        providerSource: 'example/x',
        providerVersion: '1.0.0',
        resources: {
          'x_thing': ResourceDef(
            terraformType: 'x_thing',
            root: BlockDef(
              attributes: [
                _attr('mode'),
                _attr('other'),
                _attr('state', computedOnly: true),
              ],
              nestedBlocks: [
                NestedBlockDef(
                  name: 'settings',
                  nesting: NestingMode.list,
                  constraints: const Constraints(optional: true),
                  block: BlockDef(attributes: [_attr('level'), _attr('tier')]),
                ),
              ],
            ),
          ),
        },
        dataSources: {
          'x_thing': ResourceDef(
            terraformType: 'x_thing',
            root: BlockDef(attributes: [_attr('mode')]),
          ),
        },
      );
      final kept = enums.withinSchema(ir, dropped: dropped.add);
      final root = kept.rootGroups('x_thing', _resource);
      expect(root.exactlyOne, [
        ['mode', 'other'],
      ]);
      expect(root.atMostOne, isEmpty);
      final nested = kept.nestedHints('x_thing', _resource);
      expect(nested.exactlyOneGroups, {
        'settings': [
          ['level', 'tier'],
        ],
      });
      expect(nested.atMostOneGroups, isEmpty);
      expect(kept.rootGroups('x_thing', _data).exactlyOne, isEmpty);
      expect(dropped, [
        'x_thing [mode, beta_only]',
        'x_thing [mode, state]',
        'x_thing [settings.level, wrong.depth]',
        'data.x_thing [mode, other]',
      ]);
    },
  );

  test('a loaded group source survives trimming and extending', () {
    final ir = _ir([_attr('a'), _attr('b')]);
    const lane = LoadedOverrides(
      resources: {
        'x_thing': WrapperOverride(outputDir: 'thing', exactlyOneOf: ['a, b']),
      },
      dataSources: {},
    );
    final sources = {
      'hints': const ProviderEnums.on(
        resources: KindHints(
          exactlyOne: {
            'x_thing': [
              ['a', 'gone'],
            ],
          },
        ),
      ),
      'mm groups': ProviderEnums.mmGroups(const {
        'x_thing': MmResourceOverrides(
          fieldOverrides: {},
          atMostOneOfPaths: [
            ['b', 'gone'],
          ],
        ),
      }),
      'mm yaml without groups': ProviderEnums.mmGroups(const {}),
    };
    for (final MapEntry(key: name, value: source) in sources.entries) {
      final trimmed = source.withinSchema(ir);
      final root = trimmed.rootGroups('x_thing', _resource);
      expect([...root.exactlyOne, ...root.atMostOne], isEmpty, reason: name);
      expect(trimmed.hasGroupSource, isTrue, reason: name);
      final extended = trimmed.withOverrideGroups(lane, ir, error: fail);
      expect(extended.rootGroups('x_thing', _resource).exactlyOne, [
        ['a', 'b'],
      ], reason: name);
      expect(extended.hasGroupSource, isTrue, reason: name);
    }
    final overridesOnly = ProviderEnums.off.withOverrideGroups(
      lane,
      ir,
      error: fail,
    );
    expect(overridesOnly.rootGroups('x_thing', _resource).exactlyOne, [
      ['a', 'b'],
    ]);
    expect(overridesOnly.hasGroupSource, isFalse);
  });

  test('top-level string and list-of-string inputs are enriched', () {
    final ir = const ProviderEnums.on().enrich(
      _ir([
        _attr('status', description: available, computedOnly: true),
        _attr(
          'tags',
          type: const ListType(StringType()),
          description: available,
        ),
        _attr(
          'ports',
          type: const SetType(NumberType()),
          description: available,
        ),
        _attr('mode', description: available),
      ]),
    );
    expect(_values(ir, 'status'), isNull);
    expect(_values(ir, 'tags'), ['a', 'b']);
    expect(_values(ir, 'ports'), isNull);
    expect(_values(ir, 'mode'), ['a', 'b']);
  });

  test('typeDerivedEnums types deriveEnums inputs; explicit entries win', () {
    const enums = ProviderEnums.on();
    final ir = enums.enrich(
      _ir([
        _attr('mode', description: available),
        _attr('kind', description: available),
        _attr('slot', description: available),
        _attr(
          'tags',
          type: const SetType(StringType()),
          description: available,
        ),
      ]),
    );
    final typed = enums.typeDerivedEnums(
      const LoadedOverrides(
        resources: {
          'x_thing': WrapperOverride(
            outputDir: 'thing',
            deriveEnums: true,
            dartTypeOverrides: {'kind': 'String'},
            customSlots: {
              'slot': CustomSlot(paramDeclaration: 'x', argMapEntry: 'y,'),
            },
          ),
        },
        dataSources: {},
      ),
      ir,
    );
    expect(typed.resources['x_thing']!.dartTypeOverrides, {
      'mode': 'XThingMode',
      'tags': 'List<XThingTags>',
      'kind': 'String',
    });
    expect(isEnumListType('List<XThingTags>'), isTrue);
    expect(isEnumListType('XThingMode'), isFalse);

    final untouched = enums.typeDerivedEnums(
      const LoadedOverrides(
        resources: {'x_thing': WrapperOverride(outputDir: 'thing')},
        dataSources: {},
      ),
      ir,
    );
    expect(untouched.resources['x_thing']!.dartTypeOverrides, isNull);
  });

  test('typeDerivedEnums names a data-source enum on the Data stem', () {
    const enums = ProviderEnums.on(
      dataSources: KindHints(
        enums: {
          'x_thing': {
            'mode': ['d1', 'd2'],
          },
        },
      ),
    );
    final ir = enums.enrich(_ir([_attr('mode')], dataAttrs: [_attr('mode')]));
    final typed = enums.typeDerivedEnums(
      const LoadedOverrides(
        resources: {
          'x_thing': WrapperOverride(outputDir: 'thing', deriveEnums: true),
        },
        dataSources: {
          'x_thing': WrapperOverride(
            outputDir: 'data',
            kind: WrapperOverrideKind.dataSource,
            deriveEnums: true,
          ),
        },
      ),
      ir,
    );
    expect(typed.dataSources['x_thing']!.dartTypeOverrides, {
      'mode': 'DataXThingMode',
    });
    expect(typed.resources['x_thing']!.dartTypeOverrides, isNull);
  });

  group('ProviderEnums.load', () {
    late Directory dir;
    setUp(() => dir = Directory.systemTemp.createTempSync('provider_enums_'));
    tearDown(() => dir.deleteSync(recursive: true));

    void write(WrapperOverrideKind kind, String body, {String v = '1.0.0'}) {
      final hints = Directory(providerHintsDir(dir.path, kind))
        ..createSync(recursive: true);
      File(
        p.join(hints.path, 'x_thing.yaml'),
      ).writeAsStringSync('provider_version: $v\n$body');
    }

    test('reads each kind from its own directory', () {
      write(
        WrapperOverrideKind.resource,
        'properties:\n'
        '  - api_name: mode\n'
        '    enum_values: [h1]\n'
        'exactly_one_of_groups:\n'
        '  - ["a", "b"]\n',
      );
      write(
        WrapperOverrideKind.dataSource,
        'properties:\n'
        '  - api_name: mode\n'
        '    enum_values: [d1]\n'
        'at_most_one_of_groups:\n'
        '  - ["c", "d"]\n',
      );
      expect(hasDataSourceHints(dir.path), isTrue);
      final enums = ProviderEnums.load(dir.path, providerVersion: '1.0.0');
      expect(
        enums.nestedHints('x_thing', _resource).enumValues(['mode'], null),
        ['h1'],
      );
      expect(enums.nestedHints('x_thing', _data).enumValues(['mode'], null), [
        'd1',
      ]);
      final resource = enums.rootGroups('x_thing', _resource);
      final data = enums.rootGroups('x_thing', _data);
      expect(resource.exactlyOne, [
        ['a', 'b'],
      ]);
      expect(resource.atMostOne, isEmpty);
      expect(data.exactlyOne, isEmpty);
      expect(data.atMostOne, [
        ['c', 'd'],
      ]);
    });

    test('without hints/data the data table is empty', () {
      write(
        WrapperOverrideKind.resource,
        'properties:\n'
        '  - api_name: mode\n'
        '    enum_values: [h1]\n',
      );
      expect(hasDataSourceHints(dir.path), isFalse);
      final enums = ProviderEnums.load(dir.path, providerVersion: '1.0.0');
      expect(
        enums.nestedHints('x_thing', _data).enumValues(['mode'], null),
        isNull,
      );
    });

    test('rejects a data hint extracted at another release', () {
      write(WrapperOverrideKind.dataSource, '', v: '0.9.0');
      expect(
        () => ProviderEnums.load(dir.path, providerVersion: '1.0.0'),
        throwsFormatException,
      );
    });
  });
}
