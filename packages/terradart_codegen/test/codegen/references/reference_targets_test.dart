import 'dart:convert';
import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/data_source_wrapper_emitter.dart';
import 'package:terradart_codegen/src/codegen/exactly_one_derivation.dart';
import 'package:terradart_codegen/src/codegen/migrate/migrate_entry_builder.dart';
import 'package:terradart_codegen/src/codegen/migrate/migrate_manifest_data.dart';
import 'package:terradart_codegen/src/codegen/provider_enums.dart';
import 'package:terradart_codegen/src/codegen/references/reference_targets.dart';
import 'package:terradart_codegen/src/codegen/wrapper_emitter.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

const _schema = {
  'format_version': '1.0',
  'provider_schemas': {
    'registry.terraform.io/hashicorp/google': {
      'resource_schemas': {
        'google_x_network': {
          'block': {
            'attributes': {
              'name': {'type': 'string', 'required': true},
              'id': {'type': 'string', 'optional': true, 'computed': true},
              'self_link': {'type': 'string', 'computed': true},
            },
          },
        },
        'google_x_vm': {
          'block': {
            'attributes': {
              'name': {'type': 'string', 'required': true},
              'network': {'type': 'string', 'optional': true},
              'networks': {
                'type': ['list', 'string'],
                'optional': true,
              },
              'network_count': {'type': 'number', 'optional': true},
              'network_tier': {'type': 'string', 'computed': true},
            },
            'block_types': {
              'nic': {
                'nesting_mode': 'list',
                'block': {
                  'attributes': {
                    'network': {'type': 'string', 'required': true},
                  },
                },
              },
              'timeouts': {
                'nesting_mode': 'single',
                'block': {
                  'attributes': {
                    'network': {'type': 'string', 'optional': true},
                  },
                },
              },
            },
          },
        },
      },
      'data_source_schemas': {
        'google_x_network': {
          'block': {
            'attributes': {
              'name': {'type': 'string', 'required': true},
              'self_link': {'type': 'string', 'computed': true},
            },
          },
        },
      },
    },
  },
};

Map<String, Map<String, dynamic>> _blocks(String key) {
  final provider =
      (_schema['provider_schemas']!
              as Map)['registry.terraform.io/hashicorp/google']
          as Map;
  return {
    for (final e in (provider[key] as Map).entries)
      e.key as String: ((e.value as Map)['block'] as Map)
          .cast<String, dynamic>(),
  };
}

ReferenceRule _rule({
  String attribute = 'self_link',
  Map<String, String> attributes = const {},
  Set<String> exclude = const {},
}) => ReferenceRule(
  target: 'google_x_network',
  attribute: attribute,
  slots: RegExp(r'(^|\.)(network|networks)$'),
  attributes: attributes,
  exclude: exclude,
);

ReferenceResolution _resolve(
  List<ReferenceRule> rules, {
  Iterable<String> curated = const ['google_x_network', 'google_x_vm'],
  bool withData = true,
  bool complete = true,
}) => resolveReferences(
  rules: rules,
  resourceSchemas: _blocks('resource_schemas'),
  curated: curated,
  targetDirs: {for (final t in curated) t: 'x'},
  dataSourceSchemas: withData ? _blocks('data_source_schemas') : const {},
  complete: complete,
);

void main() {
  group('stringInputs', () {
    test('lists string inputs by dotted path, skipping timeouts', () {
      expect(stringInputs(_blocks('resource_schemas')['google_x_vm']!), {
        'name': false,
        'network': false,
        'networks': true,
        'nic.network': false,
      });
    });

    test('walks plugin-framework nested_type objects', () {
      expect(
        stringInputs({
          'attributes': {
            'config': {
              'optional': true,
              'nested_type': {
                'nesting_mode': 'single',
                'attributes': {
                  'zone_id': {'type': 'string', 'required': true},
                },
              },
            },
          },
        }),
        {'config.zone_id': false},
      );
    });
  });

  group('resolveReferences', () {
    test('types every matched input with the rule attribute', () {
      final r = _resolve([_rule()]);
      expect(r.errors, isEmpty);
      final vm = r.byResource['google_x_vm']!;
      expect(vm.keys, unorderedEquals(['network', 'networks', 'nic.network']));
      expect(vm['network']!.dartType, 'RefTo<GoogleXNetwork>');
      expect(vm['networks']!.dartType, 'TfArg<List<RefTo<GoogleXNetwork>>>');
      expect(vm['network']!.attribute, 'self_link');
      expect(
        vm['network']!.import,
        "import '../x/google_x_network.dart' show GoogleXNetwork;",
      );
      expect(r.slotCount, 3);
    });

    test('applies attributes and exclude entries', () {
      final r = _resolve([
        _rule(
          attributes: {'google_x_vm.networks': 'name'},
          exclude: {'google_x_vm.nic.network'},
        ),
      ]);
      expect(r.errors, isEmpty);
      final vm = r.byResource['google_x_vm']!;
      expect(vm.keys, unorderedEquals(['network', 'networks']));
      expect(vm['networks']!.attribute, 'name');
    });

    test("skips the target's own top-level inputs", () {
      final r = _resolve([
        ReferenceRule(
          target: 'google_x_network',
          attribute: 'self_link',
          slots: RegExp(r'^name$'),
        ),
      ]);
      expect(r.byResource['google_x_network'], isNull);
      expect(r.byResource['google_x_vm']!.keys, ['name']);
    });

    test('reports a target outside the lane or a missing attribute', () {
      expect(_resolve([_rule()], curated: const ['google_x_vm']).errors, [
        'google_x_network: target is not a curated resource',
      ]);
      expect(
        _resolve([_rule(attribute: 'arn')]).errors.single,
        contains('emits "arn", which the target does not export'),
      );
      expect(
        _resolve([_rule(attribute: 'id')]).errors.single,
        contains('data source DataGoogleXNetwork does not export'),
      );
      expect(
        _resolve([_rule(attribute: 'id')], withData: false).errors,
        isEmpty,
      );
    });

    test('reports stale ledger entries and inputs claimed twice', () {
      final errors = _resolve([
        _rule(
          attributes: {'google_x_vm.gone': 'name'},
          exclude: {'google_x_vm.also_gone'},
        ),
      ]).errors;
      expect(errors, hasLength(2));
      expect(errors[0], contains('attributes entry "google_x_vm.gone"'));
      expect(errors[1], contains('exclude entry "google_x_vm.also_gone"'));

      expect(
        _resolve([
          ReferenceRule(
            target: 'google_x_network',
            attribute: 'self_link',
            slots: RegExp(r'^nothing$'),
          ),
        ]).errors,
        ['google_x_network: the rule matches no curated input'],
      );
      expect(
        _resolve([_rule(), _rule()]).errors,
        contains(
          'google_x_vm.network: matched by both google_x_network and '
          'google_x_network',
        ),
      );
    });

    group('data sources', () {
      ReferenceResolution resolveData(ReferenceRule rule) => resolveReferences(
        rules: [rule],
        resourceSchemas: _blocks('resource_schemas'),
        curated: const ['google_x_network', 'google_x_vm'],
        targetDirs: const {'google_x_network': 'x', 'google_x_vm': 'x'},
        dataSourceSchemas: {
          ..._blocks('data_source_schemas'),
          'google_x_vm': {
            'attributes': {
              'name': {'type': 'string', 'required': true},
              'network': {'type': 'string', 'optional': true},
            },
          },
          'google_x_vms': {
            'attributes': {
              'network': {'type': 'string', 'optional': true},
            },
          },
        },
      );

      test('types data-source inputs under data.<type>.<path>', () {
        final r = resolveData(_rule());
        expect(r.errors, isEmpty);
        expect(
          r.byDataSource.keys,
          unorderedEquals(['google_x_vm', 'google_x_vms']),
        );
        expect(r.byDataSource['google_x_vm']!.keys, ['network']);
        expect(
          r.byDataSource['google_x_vm']!['network']!.dartType,
          'RefTo<GoogleXNetwork>',
        );
        expect(r.byDataSource['google_x_network'], isNull);
        expect(r.slotCount, 5);
      });

      test('inherits the resource twin entries', () {
        final r = resolveData(
          _rule(
            attributes: {'google_x_vm.network': 'name'},
            exclude: {'google_x_vm.networks'},
          ),
        );
        expect(r.errors, isEmpty);
        expect(r.byResource['google_x_vm']!['network']!.attribute, 'name');
        expect(r.byDataSource['google_x_vm']!['network']!.attribute, 'name');
        expect(
          r.byDataSource['google_x_vms']!['network']!.attribute,
          'self_link',
        );
      });

      test('data. keys apply to the data source only', () {
        final r = resolveData(
          _rule(
            attributes: {'data.google_x_vms.network': 'name'},
            exclude: {'data.google_x_vm.network'},
          ),
        );
        expect(r.errors, isEmpty);
        expect(r.byDataSource['google_x_vm'], isNull);
        expect(r.byResource['google_x_vm']!['network']!.attribute, 'self_link');
        expect(r.byDataSource['google_x_vms']!['network']!.attribute, 'name');
        expect(
          resolveData(_rule(exclude: {'data.google_x_gone.network'})).errors,
          contains(contains('exclude entry "data.google_x_gone.network"')),
        );
      });
    });

    test('types limits a rule to the types it matches', () {
      ReferenceRule scoped(String types) => ReferenceRule(
        target: 'google_x_network',
        attribute: 'self_link',
        slots: RegExp(r'^network$'),
        types: RegExp(types),
      );
      final r = _resolve([scoped(r'^google_x_vm$')]);
      expect(r.errors, isEmpty);
      expect(r.byResource['google_x_vm']!.keys, ['network']);
      expect(_resolve([scoped(r'^google_y_')]).errors, [
        'google_x_network: the rule matches no curated input',
      ]);
    });

    test("inherited rules target another lane's package", () {
      final external = (
        resourceSchemas: _blocks('resource_schemas'),
        dataSourceSchemas: _blocks('data_source_schemas'),
        dirs: const {'google_x_network': 'x'},
        package: 'terradart_x',
      );
      ReferenceResolution beta({
        Map<String, String> attributes = const {},
        Set<String> exclude = const {},
      }) => resolveReferences(
        rules: [
          ReferenceRule(
            target: 'google_x_network',
            attribute: 'self_link',
            slots: RegExp(r'(^|\.)network$'),
            attributes: attributes,
            exclude: exclude,
            inherited: true,
          ),
          ReferenceRule(
            target: 'google_x_network',
            attribute: 'self_link',
            slots: RegExp(r'^nothing$'),
            inherited: true,
          ),
        ],
        resourceSchemas: {'google_x_vm': _blocks('resource_schemas')['google_x_vm']!},
        curated: const ['google_x_vm'],
        targetDirs: const {'google_x_vm': 'compute'},
        external: external,
      );

      final r = beta(attributes: {'google_x_vm.network': 'name'});
      expect(r.errors, isEmpty);
      final network = r.byResource['google_x_vm']!['network']!;
      expect(network.package, 'terradart_x');
      expect(network.attribute, 'name');
      expect(r.byResource['google_x_vm']!['nic.network']!.attribute, 'self_link');
      expect(referenceImports([network, network]), [
        "import 'package:terradart_x/terradart_x.dart' show GoogleXNetwork;",
      ]);
      expect(beta(exclude: {'google_x_vm.gone'}).errors, [
        'inherit: exclude entry "google_x_vm.gone" is not an input an '
            'inherited rule matches',
      ]);
      expect(
        beta(attributes: {'google_x_vm.network': 'id'}).errors.single,
        contains('data source DataGoogleXNetwork does not export'),
      );
    });

    test('a partial run does not report entries it cannot see', () {
      expect(
        _resolve([
          _rule(attributes: {'google_other.network': 'name'}),
        ], complete: false).errors,
        isEmpty,
      );
    });
  });

  group('loadReferenceRules', () {
    late Directory tmp;
    setUp(() => tmp = Directory.systemTemp.createTempSync('refs'));
    tearDown(() => tmp.deleteSync(recursive: true));

    String write(String yaml) {
      final path = p.join(tmp.path, 'refs.yaml');
      File(path).writeAsStringSync(yaml);
      return path;
    }

    test('reads the section of one provider source', () {
      final path = write('''
hashicorp/google:
  - target: google_x_network
    attribute: id
    slots: '^network\$'
    types: '^google_x_'
    attributes:
      google_x_vm.network: self_link
    exclude:
      - google_x_vm.nic.network
cloudflare/cloudflare:
  - target: cloudflare_zone
    attribute: id
    slots: '^zone_id\$'
''');
      final rules = loadReferenceRules(path, 'hashicorp/google');
      expect(rules.single.target, 'google_x_network');
      expect(rules.single.types!.pattern, '^google_x_');
      expect(rules.single.attributes, {'google_x_vm.network': 'self_link'});
      expect(rules.single.exclude, {'google_x_vm.nic.network'});
      expect(loadReferenceRules(path, 'hashicorp/aws'), isEmpty);
    });

    test('inherit takes another section with its own exceptions', () {
      final path = write('''
hashicorp/google:
  - target: google_x_network
    attribute: self_link
    slots: '^network\$'
    attributes:
      google_x_vm.network: name
hashicorp/google-beta:
  - inherit: hashicorp/google
    exclude:
      - google_beta_vm.network
''');
      final rule = loadReferenceRules(path, 'hashicorp/google-beta').single;
      expect(rule.target, 'google_x_network');
      expect(rule.inherited, isTrue);
      expect(rule.attributes, isEmpty);
      expect(rule.exclude, {'google_beta_vm.network'});
      expect(
        () => loadReferenceRules(
          write('hashicorp/google-beta:\n  - inherit: hashicorp/nope\n'),
          'hashicorp/google-beta',
        ),
        throwsA(isA<FormatException>()),
      );
    });

    test('rejects an unknown key', () {
      final path = write('''
hashicorp/google:
  - target: google_x_network
    attribute: id
    slot: network
''');
      expect(
        () => loadReferenceRules(path, 'hashicorp/google'),
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            contains('unknown key "slot"'),
          ),
        ),
      );
    });
  });

  group('typed emission', () {
    final ir = const SchemaJsonParser().parseString(jsonEncode(_schema));
    const override = WrapperOverride(
      outputDir: 'compute',
      deriveNestedTypes: true,
    );
    final references = _resolve([
      _rule(attributes: {'google_x_vm.nic.network': 'name'}),
    ]).byResource;
    final emitter = WrapperEmitter(
      overrides: const {'google_x_vm': override},
      rawResourceSchemas: {
        'google_x_vm': _blocks('resource_schemas')['google_x_vm']!,
      },
      references: references,
    );
    final src =
        DartFormatter(
          languageVersion: DartFormatter.latestLanguageVersion,
        ).format(
          emitter.emit(
            ir.resources['google_x_vm']!,
            providerSource: 'hashicorp/google',
          ),
        );

    test('types top-level and nested inputs and imports the target', () {
      expect(
        src,
        contains("import '../x/google_x_network.dart' show GoogleXNetwork;"),
      );
      expect(src, contains('RefTo<GoogleXNetwork>? network'));
      expect(src, contains('TfArg<List<RefTo<GoogleXNetwork>>>? networks'));
      expect(src, contains("'network': ?network?.encodeAs('self_link')"));
      expect(src, contains("'networks': ?networks?.encodeAs('self_link')"));
      expect(src, contains('final RefTo<GoogleXNetwork> network;'));
      expect(src, contains("'network': network.encodeAs('name').toTfJson()"));
      expect(src, contains('TfArg<num>? networkCount'));
      expect(emitter.typedReferences, [
        'google_x_vm.network',
        'google_x_vm.networks',
        'google_x_vm.nic.network',
      ]);
    });

    test('records reference slots in the migration manifest', () {
      final b = buildMigrateEntry(
        tfType: 'google_x_vm',
        override: override,
        def: ir.resources['google_x_vm']!,
        kind: 'resource',
        emittedSource: src,
        rawSchemaBlock: _blocks('resource_schemas')['google_x_vm'],
        references: references['google_x_vm']!,
      );
      MigrateSlotData slot(List<MigrateSlotData> slots, String name) =>
          slots.singleWhere((s) => s.dartName == name);
      final network = slot(b.entry.slots, 'network');
      expect(network.kind, MigrateSlotKind.reference);
      expect(network.dartType, 'GoogleXNetwork');
      expect(network.attribute, 'self_link');
      expect(network.repeated, isFalse);
      final networks = slot(b.entry.slots, 'networks');
      expect(networks.kind, MigrateSlotKind.reference);
      expect(networks.repeated, isTrue);
      final nic = b.helpers.single;
      final field = slot(nic.slots, 'network');
      expect(field.kind, MigrateSlotKind.reference);
      expect(field.attribute, 'name');
    });

    test('counts a hand-written prelude field that takes the RefTo', () {
      const hand = WrapperOverride(
        outputDir: 'compute',
        deriveNestedTypes: true,
        nestedTypeExcludes: ['nic'],
        prelude: '''
class XVmNic {
  const XVmNic({this.network});
  final RefTo<GoogleXNetwork>? network;
}
''',
      );
      final handEmitter = WrapperEmitter(
        overrides: const {'google_x_vm': hand},
        rawResourceSchemas: {
          'google_x_vm': _blocks('resource_schemas')['google_x_vm']!,
        },
        references: references,
      )..emit(ir.resources['google_x_vm']!, providerSource: 'hashicorp/google');
      expect(handEmitter.typedReferences, contains('google_x_vm.nic.network'));
    });
  });

  group('data-source emission', () {
    final block = {
      'attributes': {
        'name': {'type': 'string', 'required': true},
        'network': {'type': 'string', 'optional': true},
        'self_link': {'type': 'string', 'computed': true},
      },
    };
    final schema = {
      'format_version': '1.0',
      'provider_schemas': {
        'registry.terraform.io/hashicorp/google': {
          'resource_schemas': const <String, Object?>{},
          'data_source_schemas': {
            'google_x_vm': {'block': block},
          },
        },
      },
    };
    final ir = const SchemaJsonParser().parseString(jsonEncode(schema));
    final references = {
      'google_x_vm': {
        'network': const ResolvedReference(
          target: 'google_x_network',
          className: 'GoogleXNetwork',
          outputDir: 'x',
          attribute: 'self_link',
          list: false,
        ),
      },
    };
    final emitter = DataSourceWrapperEmitter(
      overrides: const {
        'google_x_vm': WrapperOverride(
          kind: WrapperOverrideKind.dataSource,
          outputDir: 'compute',
        ),
      },
      rawDataSourceSchemas: {'google_x_vm': block},
      resourceDirs: const {'google_x_vm': 'compute', 'google_x_network': 'x'},
      references: references,
    );
    final src =
        DartFormatter(
          languageVersion: DartFormatter.latestLanguageVersion,
        ).format(
          emitter.emit(
            ir.dataSources['google_x_vm']!,
            providerSource: 'hashicorp/google',
          ),
        );

    test('types a matched input and imports the target', () {
      expect(
        src,
        contains("import '../x/google_x_network.dart' show GoogleXNetwork;"),
      );
      expect(src, contains('RefTo<GoogleXNetwork>? network'));
      expect(src, contains("'network': ?network?.encodeAs('self_link')"));
      expect(src, contains('required TfArg<String> name'));
      expect(emitter.typedReferences, ['data.google_x_vm.network']);
    });
  });

  group('sealed emission', () {
    const schema = {
      'format_version': '1.0',
      'provider_schemas': {
        'registry.terraform.io/hashicorp/google': {
          'resource_schemas': {
            'google_x_network': {
              'block': {
                'attributes': {
                  'name': {'type': 'string', 'required': true},
                  'self_link': {'type': 'string', 'computed': true},
                },
              },
            },
            'google_x_nic': {
              'block': {
                'attributes': {
                  'network': {'type': 'string', 'optional': true},
                  'network_name': {'type': 'string', 'optional': true},
                },
                'block_types': {
                  'peer': {
                    'nesting_mode': 'single',
                    'block': {
                      'attributes': {
                        'network': {'type': 'string', 'optional': true},
                        'address': {'type': 'string', 'optional': true},
                      },
                    },
                  },
                },
              },
            },
          },
        },
      },
    };
    final provider =
        (schema['provider_schemas']!
                as Map)['registry.terraform.io/hashicorp/google']
            as Map;
    final blocks = {
      for (final e in (provider['resource_schemas'] as Map).entries)
        e.key as String: ((e.value as Map)['block'] as Map)
            .cast<String, dynamic>(),
    };
    final ir = const SchemaJsonParser().parseString(jsonEncode(schema));
    final references = resolveReferences(
      rules: [_rule()],
      resourceSchemas: blocks,
      curated: const ['google_x_network', 'google_x_nic'],
      targetDirs: const {'google_x_network': 'x', 'google_x_nic': 'x'},
    ).byResource;
    const groups = ProviderEnums.on(
      atMostOneGroups: {
        'google_x_nic': [
          ['network', 'network_name'],
        ],
      },
      exactlyOneGroups: {
        'google_x_nic': [
          ['peer.address', 'peer.network'],
        ],
      },
    );
    final derived = deriveExactlyOneSlots(
      {
        'google_x_nic': const WrapperOverride(
          outputDir: 'x',
          deriveNestedTypes: true,
          deriveExactlyOne: true,
        ),
      },
      {'google_x_nic': ir.resources['google_x_nic']!},
      providerEnums: groups,
      rawSchemas: {'google_x_nic': blocks['google_x_nic']!},
      references: references,
    );
    final override = derived.overrides['google_x_nic']!;
    final emitter = WrapperEmitter(
      overrides: {'google_x_nic': override},
      rawResourceSchemas: {'google_x_nic': blocks['google_x_nic']!},
      providerEnums: groups,
      references: references,
    );
    final src =
        DartFormatter(
          languageVersion: DartFormatter.latestLanguageVersion,
        ).format(
          emitter.emit(
            ir.resources['google_x_nic']!,
            providerSource: 'hashicorp/google',
          ),
        );

    test('a variant of a matched member holds the reference', () {
      expect(derived.skipped, isEmpty);
      expect(derived.skippedAtMostOne, isEmpty);
      expect(derived.typedReferences, ['google_x_nic.network']);
      expect(emitter.typedReferences, [
        'google_x_nic.network',
        'google_x_nic.peer.network',
      ]);
      expect(
        src,
        contains("import '../x/google_x_network.dart' show GoogleXNetwork;"),
      );
      expect(src, contains('RefTo<GoogleXNetwork> network) ='));
      expect(src, contains('final RefTo<GoogleXNetwork> network;'));
      expect(
        src,
        contains("'network': network.encodeAs('self_link').toTfJson()"),
      );
      expect(
        src,
        matches(
          RegExp(
            r"argMap => \{\s+'network': network\.encodeAs\('self_link'\),",
          ),
        ),
      );
      expect(src, contains('final TfArg<String> networkName;'));
    });

    test('the manifest records the variant field as a reference', () {
      final b = buildMigrateEntry(
        tfType: 'google_x_nic',
        override: override,
        def: ir.resources['google_x_nic']!,
        kind: 'resource',
        emittedSource: src,
        rawSchemaBlock: blocks['google_x_nic'],
        exactlyOneGroups: groups.nestedExactlyOneGroups(
          'google_x_nic',
          override,
        ),
        references: references['google_x_nic']!,
      );
      final fields = [
        for (final h in b.helpers)
          for (final s in h.slots)
            if (s.tfName == 'network') s,
      ];
      expect(fields, hasLength(2));
      for (final f in fields) {
        expect(f.kind, MigrateSlotKind.reference);
        expect(f.dartType, 'GoogleXNetwork');
        expect(f.attribute, 'self_link');
      }
    });
  });
}
