import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/naming.dart';
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
import 'package:terradart_codegen/src/parser/discovery_enums.dart';
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
      final kept = enums.withinSchema(
        ir,
        dropped: (g) => dropped.add(
          '${g.kind.label(g.type)} [${g.members.join(', ')}] '
          'missing ${g.missing.join(', ')}',
        ),
      );
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
        'x_thing [mode, beta_only] missing beta_only',
        'x_thing [mode, state] missing state',
        'x_thing [settings.level, wrong.depth] missing wrong.depth',
        'data.x_thing [mode, other] missing other',
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

  group('an override enumValues entry', () {
    final ir = ProviderSchemaIR(
      providerName: 'x',
      providerSource: 'example/x',
      providerVersion: '1.0.0',
      resources: {
        'x_thing': ResourceDef(
          terraformType: 'x_thing',
          root: BlockDef(
            attributes: [
              const Attribute(
                name: 'status',
                type: StringType(),
                constraints: Constraints(
                  computed: true,
                  enumValues: ['ACTOVE', 'OFFLINE'],
                ),
              ),
              _attr('size', type: const NumberType()),
            ],
            nestedBlocks: [
              NestedBlockDef(
                name: 'entities',
                nesting: NestingMode.list,
                constraints: const Constraints(optional: true),
                block: BlockDef(
                  attributes: [_attr('entity_name', description: available)],
                ),
              ),
            ],
          ),
        ),
      },
      dataSources: const {},
    );
    LoadedOverrides lane(Map<String, List<String>> values) => LoadedOverrides(
      resources: {
        'x_thing': WrapperOverride(outputDir: 'thing', enumValues: values),
      },
      dataSources: const {},
    );

    test('replaces a top-level set, outputs included', () {
      final out = const ProviderEnums.on().withOverrideEnums(
        lane({
          'status': ['ACTIVE', 'OFFLINE'],
        }),
        ir,
        error: fail,
      );
      expect(_values(out, 'status'), ['ACTIVE', 'OFFLINE']);
    });

    test('wins over the derived set of a nested input', () {
      const enums = ProviderEnums.on();
      final override = lane({
        'entities.entity_name': ['Lead', 'issue'],
      }).resources['x_thing']!;
      enums.withOverrideEnums(lane(override.enumValues!), ir, error: fail);
      final resolve = enums.nestedHints('x_thing', override).enumValues;
      expect(resolve(['entities', 'entity_name'], available), [
        'Lead',
        'issue',
      ]);
      expect(resolve(['other'], available), ['a', 'b']);
    });

    test('fails on a path that names no string attribute', () {
      final errors = <String>[];
      const ProviderEnums.on().withOverrideEnums(
        lane({
          'gone': ['a', 'b'],
          'size': ['1', '2'],
        }),
        ir,
        error: errors.add,
      );
      expect(errors, [
        contains('enumValues gone: names no string attribute'),
        contains('enumValues size: names no string attribute'),
      ]);
    });

    test('fails on an entry the derivation already gives', () {
      final errors = <String>[];
      const ProviderEnums.on().withOverrideEnums(
        lane({
          'status': ['OFFLINE', 'ACTOVE'],
          'entities.entity_name': ['b', 'a'],
        }),
        ir,
        error: errors.add,
      );
      expect(errors, hasLength(2));
      expect(errors, everyElement(contains('remove the entry')));
    });

    test('fails once upstream fixes the value and adds another', () {
      final fixed = ProviderSchemaIR(
        providerName: ir.providerName,
        providerSource: ir.providerSource,
        providerVersion: ir.providerVersion,
        resources: {
          'x_thing': const ResourceDef(
            terraformType: 'x_thing',
            root: BlockDef(
              attributes: [
                Attribute(
                  name: 'status',
                  type: StringType(),
                  constraints: Constraints(
                    computed: true,
                    enumValues: ['ACTIVE', 'OFFLINE', 'NEW_STATUS'],
                  ),
                ),
              ],
            ),
          ),
        },
        dataSources: const {},
      );
      final errors = <String>[];
      const ProviderEnums.on().withOverrideEnums(
        lane({
          'status': ['ACTIVE', 'OFFLINE'],
        }),
        fixed,
        error: errors.add,
      );
      expect(errors, [contains('enumValues status: the derivation already')]);
    });
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

  group('withDiscovery', () {
    DiscoveryEnums discovery({bool passthrough = false}) => DiscoveryEnums(
      docs: {
        'x.v1': {
          'Thing': {
            'properties': {
              'tier': {
                'enum': ['TIER_UNSPECIFIED', 'STANDARD', 'PREMIUM'],
              },
              'settings': {r'$ref': 'Settings'},
            },
          },
          'Settings': {
            'properties': {
              'level': {
                'enum': ['LOW', 'HIGH'],
              },
            },
          },
        },
      },
      resources: {
        'x_thing': (
          doc: 'x.v1',
          schema: 'Thing',
          paths: const {},
          passthrough: passthrough,
        ),
      },
      dataSources: const {},
    );
    const mmYaml = MmResourceOverrides(fieldOverrides: {});
    List<String>? resolve(
      ProviderEnums enums,
      List<String> path, [
      String? description,
    ]) => enums.nestedHints('x_thing', _resource).enumValues(path, description);

    test('types an input no description lists, sentinel dropped', () {
      final enums = ProviderEnums.mmGroups(
        const {},
      ).withDiscovery(discovery(), const {});
      expect(resolve(enums, ['tier']), ['STANDARD', 'PREMIUM']);
      expect(resolve(enums, ['settings', 'level']), ['LOW', 'HIGH']);
      expect(resolve(enums, ['name']), isNull);
    });

    test('a Magic Modules value set wins over Discovery', () {
      final enums = ProviderEnums.mmGroups(const {
        'x_thing': MmResourceOverrides(
          fieldOverrides: {},
          enumValuesByPath: {
            'tier': ['BASIC'],
          },
        ),
      }).withDiscovery(discovery(), const {});
      expect(resolve(enums, ['tier']), ['BASIC']);
    });

    test('a hand-written resource keeps its description set', () {
      final enums = ProviderEnums.mmGroups(
        const {},
      ).withDiscovery(discovery(), const {});
      expect(
        resolve(enums, ['tier'], 'Possible values: ["STANDARD", "GOLD"]'),
        ['STANDARD', 'GOLD'],
      );
    });

    for (final (label, enums) in [
      (
        'an MM resource',
        ProviderEnums.mmGroups(const {
          'x_thing': mmYaml,
        }).withDiscovery(discovery(), const {'x_thing': mmYaml}),
      ),
      (
        'a passthrough root',
        ProviderEnums.mmGroups(
          const {},
        ).withDiscovery(discovery(passthrough: true), const {}),
      ),
    ]) {
      test('$label takes Discovery over a description it contradicts', () {
        expect(
          resolve(enums, ['tier'], 'Possible values: ["STANDARD", "GOLD"]'),
          ['STANDARD', 'PREMIUM'],
        );
      });

      test('$label keeps a description whose values Discovery has', () {
        expect(
          resolve(enums, [
            'tier',
          ], 'Possible values: ["TIER_UNSPECIFIED", "PREMIUM"]'),
          ['TIER_UNSPECIFIED', 'PREMIUM'],
        );
      });
    }
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
