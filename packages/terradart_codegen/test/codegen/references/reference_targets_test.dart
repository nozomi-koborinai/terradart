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
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
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
        resourceSchemas: {
          'google_x_vm': _blocks('resource_schemas')['google_x_vm']!,
        },
        curated: const ['google_x_vm'],
        targetDirs: const {'google_x_vm': 'compute'},
        external: external,
      );

      final r = beta(attributes: {'google_x_vm.network': 'name'});
      expect(r.errors, isEmpty);
      final network = r.byResource['google_x_vm']!['network']!;
      expect(network.package, 'terradart_x');
      expect(network.attribute, 'name');
      expect(
        r.byResource['google_x_vm']!['nic.network']!.attribute,
        'self_link',
      );
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

  group('MM ResourceRef inputs', () {
    final vm = const MmYamlParser().parseString('''
name: Vm
parameters:
  - name: zoneNetwork
    type: String
properties:
  - name: network
    type: ResourceRef
    resource: Network
    imports: selfLink
  - name: networks
    type: Array
    item_type:
      type: ResourceRef
      resource: Network
      imports: name
  - name: nic
    type: NestedObject
    properties:
      - name: network
        type: ResourceRef
        resource: Network
        imports: selfLink
''');

    ReferenceResolution resolve({
      List<ReferenceRule> rules = const [],
      MmReferenceRule mmRule = const MmReferenceRule(),
    }) => resolveReferences(
      rules: rules,
      resourceSchemas: _blocks('resource_schemas'),
      curated: const ['google_x_network', 'google_x_vm'],
      targetDirs: const {'google_x_network': 'x', 'google_x_vm': 'x'},
      mmRule: mmRule,
      mm: {'google_x_vm': vm},
    );

    test('the parser records every ResourceRef by snake-cased path', () {
      expect(vm.name, 'Vm');
      expect(vm.resourceRefs, {
        'network': (resource: 'Network', imports: 'selfLink'),
        'networks': (resource: 'Network', imports: 'name'),
        'nic.network': (resource: 'Network', imports: 'selfLink'),
      });
    });

    test('keys by the Terraform name, not the REST api_name', () {
      final proxy = const MmYamlParser().parseString('''
name: Proxy
properties:
  - name: backendService
    api_name: service
    type: ResourceRef
    resource: BackendService
    imports: selfLink
''');
      expect(proxy.resourceRefs, {
        'backend_service': (resource: 'BackendService', imports: 'selfLink'),
      });
    });

    test('types each input as the same-product resource it imports', () {
      final r = resolve();
      expect(r.errors, isEmpty);
      final refs = r.byResource['google_x_vm']!;
      expect(refs['network']!.dartType, 'RefTo<GoogleXNetwork>');
      expect(refs['network']!.attribute, 'self_link');
      expect(refs['networks']!.attribute, 'name');
      expect(refs['nic.network']!.attribute, 'self_link');
    });

    test('explicit rules win, and attributes / exclude adjust the rest', () {
      final r = resolve(
        rules: [
          ReferenceRule(
            target: 'google_x_network',
            attribute: 'name',
            slots: RegExp(r'^network$'),
          ),
        ],
        mmRule: const MmReferenceRule(
          attributes: {'google_x_vm.networks': 'self_link'},
          exclude: {'google_x_vm.nic.network'},
        ),
      );
      expect(r.errors, isEmpty);
      final refs = r.byResource['google_x_vm']!;
      expect(refs.keys, unorderedEquals(['network', 'networks']));
      expect(refs['network']!.attribute, 'name');
      expect(refs['networks']!.attribute, 'self_link');
    });

    test('reports an entry that names no ResourceRef input', () {
      final r = resolve(
        mmRule: const MmReferenceRule(exclude: {'google_x_vm.name'}),
      );
      expect(r.errors, [
        'mm: "google_x_vm.name" is not a ResourceRef input of a curated type',
      ]);
    });

    test('loadMmReferenceRule reads the entry beside the rules', () {
      final tmp = Directory.systemTemp.createTempSync('mmrefs');
      addTearDown(() => tmp.deleteSync(recursive: true));
      final path = p.join(tmp.path, 'refs.yaml');
      File(path).writeAsStringSync('''
hashicorp/google:
  - mm: resource-refs
    attributes:
      google_x_vm.network: id
    exclude:
      - google_x_vm.nic.network
  - target: google_x_network
    attribute: id
    slots: '^networks\$'
''');
      final rule = loadMmReferenceRule(path, 'hashicorp/google')!;
      expect(rule.attributes, {'google_x_vm.network': 'id'});
      expect(rule.exclude, {'google_x_vm.nic.network'});
      expect(loadReferenceRules(path, 'hashicorp/google'), hasLength(1));
      expect(loadMmReferenceRule(path, 'hashicorp/aws'), isNull);
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

  group('IAM adjunct parents', () {
    Map<String, dynamic> block(Map<String, Map<String, Object>> attrs) => {
      'attributes': attrs,
    };
    const str = {'type': 'string', 'optional': true};
    const req = {'type': 'string', 'required': true};
    const out = {'type': 'string', 'computed': true};
    const computedStr = {'type': 'string', 'optional': true, 'computed': true};
    final resources = <String, Map<String, dynamic>>{
      'google_y_service': block({
        'name': req,
        'location': req,
        'project': computedStr,
        'id': computedStr,
      }),
      'google_y_service_iam_member': block({
        'name': req,
        'location': str,
        'project': str,
        'role': req,
        'member': req,
        'id': computedStr,
      }),
      'google_y_key': block({'name': req, 'id': out}),
      'google_y_key_iam_member': block({
        'crypto_key_id': req,
        'other_id': str,
        'role': req,
        'member': req,
      }),
      'google_y_app': block({'app_id': req, 'location': req, 'project': str}),
      'google_y_agent': block({
        'app': req,
        'location': req,
        'project': str,
        'zone': str,
      }),
    };
    final data = <String, Map<String, dynamic>>{
      'google_y_service': block({'name': req, 'location': req, 'id': out}),
    };

    ReferenceResolution resolve({
      ParentReferenceRule parentRule = const ParentReferenceRule(),
      List<ReferenceRule> rules = const [],
      Iterable<String> curated = const [
        'google_y_service',
        'google_y_service_iam_member',
      ],
    }) => resolveReferences(
      rules: rules,
      resourceSchemas: resources,
      curated: curated,
      targetDirs: {for (final t in curated) t: 'y'},
      dataSourceSchemas: data,
      parentRule: parentRule,
    );

    test('the parent names the adjunct and fills the keys both export', () {
      final r = resolve();
      expect(r.errors, isEmpty);
      final ref = r.byResource['google_y_service_iam_member']!['name']!;
      expect(ref.dartType, 'RefTo<GoogleYService>');
      expect(ref.attribute, 'name');
      expect(ref.dartName, 'service');
      // The data source does not export `project`, so a ref built from it
      // could not fill it.
      expect(ref.absorbed, ['location']);
    });

    test('the adjunct takes the parent and fills the rest from it', () {
      final ir = const SchemaJsonParser().parseString(
        jsonEncode({
          'format_version': '1.0',
          'provider_schemas': {
            'registry.terraform.io/hashicorp/google': {
              'resource_schemas': {
                for (final e in resources.entries) e.key: {'block': e.value},
              },
            },
          },
        }),
      );
      const override = WrapperOverride(outputDir: 'y');
      final references = resolve().byResource;
      final def = ir.resources['google_y_service_iam_member']!;
      final src =
          DartFormatter(
            languageVersion: DartFormatter.latestLanguageVersion,
          ).format(
            WrapperEmitter(
              overrides: const {'google_y_service_iam_member': override},
              references: references,
            ).emit(def, providerSource: 'hashicorp/google'),
          );
      expect(src, contains('required RefTo<GoogleYService> service,'));
      expect(src, contains('TfArg<String>? location,'));
      expect(src, contains("'name': service.encodeAs('name'),"));
      expect(
        src,
        contains("'location': ?(location ?? service.alsoAs('location')),"),
      );
      final slots = buildMigrateEntry(
        tfType: 'google_y_service_iam_member',
        override: override,
        def: def,
        kind: 'resource',
        emittedSource: src,
        references: references['google_y_service_iam_member']!,
      ).entry.slots;
      final name = slots.singleWhere((s) => s.tfName == 'name');
      expect(name.dartName, 'service');
      expect(name.kind, MigrateSlotKind.reference);
      final location = slots.singleWhere((s) => s.tfName == 'location');
      expect(location.defaultsFrom, 'service');
      expect(location.required, isFalse);
      expect(
        slots.singleWhere((s) => s.tfName == 'project').defaultsFrom,
        isNull,
      );
    });

    test('an id attribute fills nothing else', () {
      final r = resolve(
        parentRule: const ParentReferenceRule(
          attributes: {'google_y_service': 'id'},
        ),
      );
      final ref = r.byResource['google_y_service_iam_member']!['name']!;
      expect(ref.attribute, 'id');
      expect(ref.absorbed, isEmpty);
    });

    test('a key set it cannot tell apart asks for an identity entry', () {
      const curated = ['google_y_key', 'google_y_key_iam_member'];
      expect(
        resolve(curated: curated).errors.single,
        contains('add an identity entry'),
      );
      final r = resolve(
        curated: curated,
        parentRule: const ParentReferenceRule(
          identity: {'google_y_key': 'crypto_key_id'},
          attributes: {'google_y_key': 'id'},
          names: {'google_y_key': 'cryptoKey'},
        ),
      );
      expect(r.errors, isEmpty);
      final ref = r.byResource['google_y_key_iam_member']!['crypto_key_id']!;
      expect(ref.dartName, 'cryptoKey');
      expect(ref.attribute, 'id');
    });

    test('explicit rules leave the claimed keys alone', () {
      final r = resolve(
        rules: [
          ReferenceRule(
            target: 'google_y_service',
            attribute: 'name',
            slots: RegExp(r'^name$'),
          ),
        ],
      );
      expect(r.errors.single, contains('matches no curated input'));
    });

    test('an exclude keeps the keys strings, and stale entries fail', () {
      final r = resolve(
        parentRule: const ParentReferenceRule(
          exclude: {'google_y_service'},
          names: {'google_y_gone': 'gone'},
        ),
      );
      expect(r.byResource['google_y_service_iam_member'], isNull);
      expect(r.errors.single, contains('"google_y_gone" is not the curated'));
    });

    test('with: fills the sibling keys the target exports', () {
      final r = resolveReferences(
        rules: [
          ReferenceRule(
            target: 'google_y_app',
            attribute: 'app_id',
            slots: RegExp(r'^app$'),
            withKeys: const ['location', 'project', 'zone'],
          ),
        ],
        resourceSchemas: resources,
        curated: const ['google_y_app', 'google_y_agent'],
        targetDirs: const {'google_y_app': 'y', 'google_y_agent': 'y'},
      );
      expect(r.errors, isEmpty);
      final ref = r.byResource['google_y_agent']!['app']!;
      expect(ref.dartName, isNull);
      expect(ref.absorbed, ['location', 'project']);
    });

    test('the loader reads the entry and rejects unknown keys', () {
      final dir = Directory.systemTemp.createTempSync('parents_');
      addTearDown(() => dir.deleteSync(recursive: true));
      final ledger = File(p.join(dir.path, 'refs.yaml'))
        ..writeAsStringSync(r'''
hashicorp/google:
  - parents: iam-adjuncts
    identity: {google_y_key: key_id}
    names: {google_y_key: cryptoKey}
    exclude: [google_y_job]
  - target: google_y_app
    attribute: app_id
    slots: '^app$'
    with: [location]
''');
      final rule = loadParentReferenceRule(ledger.path, 'hashicorp/google')!;
      expect(rule.identity, {'google_y_key': 'key_id'});
      expect(rule.names, {'google_y_key': 'cryptoKey'});
      expect(rule.exclude, {'google_y_job'});
      final rules = loadReferenceRules(ledger.path, 'hashicorp/google');
      expect(rules.single.withKeys, ['location']);
      ledger.writeAsStringSync('''
hashicorp/google:
  - parents: iam-adjuncts
    renames: {}
''');
      expect(
        () => loadParentReferenceRule(ledger.path, 'hashicorp/google'),
        throwsFormatException,
      );
    });
  });

  group('IAM principals', () {
    Map<String, dynamic> block(Map<String, Map<String, Object>> attrs) => {
      'attributes': attrs,
    };
    const req = {'type': 'string', 'required': true};
    const out = {'type': 'string', 'computed': true};
    const members = {
      'type': ['set', 'string'],
      'required': true,
    };
    final resources = <String, Map<String, dynamic>>{
      'google_y_account': block({'account_id': req, 'member': out}),
      'google_y_topic_iam_member': block({
        'topic': req,
        'role': req,
        'member': req,
      }),
      'google_y_topic_iam_binding': block({
        'topic': req,
        'role': req,
        'members': members,
      }),
    };
    final data = <String, Map<String, dynamic>>{
      'google_y_default_account': block({'member': out}),
    };
    const curated = [
      'google_y_account',
      'google_y_topic_iam_member',
      'google_y_topic_iam_binding',
    ];
    final rule = PrincipalRule(
      slots: RegExp(r'^members?$'),
      types: RegExp(r'_iam_(member|binding)$'),
    );

    ReferenceResolution resolve({
      PrincipalRule? principalRule,
      List<ReferenceRule> rules = const [],
    }) => resolveReferences(
      rules: rules,
      resourceSchemas: resources,
      curated: curated,
      targetDirs: {for (final t in curated) t: 'y'},
      dataSourceSchemas: data,
      principalRule: principalRule ?? rule,
    );

    test('types member and members as IamPrincipal', () {
      final r = resolve();
      expect(r.errors, isEmpty);
      final member = r.byResource['google_y_topic_iam_member']!['member']!;
      expect(member.principal, isTrue);
      expect(member.dartType, 'IamPrincipal');
      expect(member.encode, isEmpty);
      final list = r.byResource['google_y_topic_iam_binding']!['members']!;
      expect(list.dartType, 'TfArg<List<IamPrincipal>>');
    });

    test('blocks with a computed member get a principal getter', () {
      final r = resolve();
      expect(r.principalResources, {'google_y_account'});
      expect(r.principalDataSources, {'google_y_default_account'});
    });

    test('a rule over a principal input does not claim it again', () {
      final r = resolve(
        rules: [
          ReferenceRule(
            target: 'google_y_account',
            attribute: 'member',
            slots: RegExp(r'^member$'),
          ),
        ],
      );
      expect(r.errors.single, contains('matches no curated input'));
      expect(
        r.byResource['google_y_topic_iam_member']!['member']!.principal,
        isTrue,
      );
    });

    test('an entry that matches nothing fails', () {
      final r = resolve(
        principalRule: PrincipalRule(slots: RegExp(r'^principals$')),
      );
      expect(
        r.errors.single,
        contains('principals: the entry matches no curated input'),
      );
    });

    test('the emitters type the input and read the getter', () {
      final ir = const SchemaJsonParser().parseString(
        jsonEncode({
          'format_version': '1.0',
          'provider_schemas': {
            'registry.terraform.io/hashicorp/google': {
              'resource_schemas': {
                for (final e in resources.entries) e.key: {'block': e.value},
              },
            },
          },
        }),
      );
      final r = resolve();
      const override = WrapperOverride(outputDir: 'y');
      String emit(String type) =>
          DartFormatter(
            languageVersion: DartFormatter.latestLanguageVersion,
          ).format(
            WrapperEmitter(
              overrides: {type: override},
              references: r.byResource,
              principals: r.principalResources,
              principal: r.principal,
            ).emit(ir.resources[type]!, providerSource: 'hashicorp/google'),
          );
      final account = emit('google_y_account');
      expect(
        account,
        contains("import '../iam/iam_principal.dart' show IamPrincipal;"),
      );
      expect(
        account,
        contains(
          'IamPrincipal get principal =>\n'
          "      IamPrincipal.arg(TfRef.attribute<String>(this, 'member'));",
        ),
      );
      final member = emit('google_y_topic_iam_member');
      expect(member, contains('required IamPrincipal member,'));
      expect(member, contains("'member': member}"));
      final binding = emit('google_y_topic_iam_binding');
      expect(binding, contains('required TfArg<List<IamPrincipal>> members,'));

      final entry = buildMigrateEntry(
        tfType: 'google_y_account',
        override: override,
        def: ir.resources['google_y_account']!,
        kind: 'resource',
        emittedSource: account,
      ).entry;
      expect(entry.principal, isTrue);
      final slots = buildMigrateEntry(
        tfType: 'google_y_topic_iam_binding',
        override: override,
        def: ir.resources['google_y_topic_iam_binding']!,
        kind: 'resource',
        emittedSource: binding,
        references: r.byResource['google_y_topic_iam_binding']!,
      ).entry.slots;
      final slot = slots.singleWhere((s) => s.tfName == 'members');
      expect(slot.kind, MigrateSlotKind.principal);
      expect(slot.repeated, isTrue);
      expect(slot.dartType, 'IamPrincipal');
    });

    test('the loader reads the entry and rejects another class', () {
      final dir = Directory.systemTemp.createTempSync('principals_');
      addTearDown(() => dir.deleteSync(recursive: true));
      final ledger = File(p.join(dir.path, 'refs.yaml'))
        ..writeAsStringSync(r'''
hashicorp/google:
  - principals: IamPrincipal
    slots: '^members?$'
    types: '_iam_member$'
''');
      final loaded = loadPrincipalRule(ledger.path, 'hashicorp/google')!;
      expect(loaded.slots.pattern, r'^members?$');
      expect(loaded.types!.pattern, r'_iam_member$');
      expect(loadReferenceRules(ledger.path, 'hashicorp/google'), isEmpty);
      ledger.writeAsStringSync(r'''
hashicorp/google:
  - principals: Member
    slots: '^member$'
''');
      expect(
        () => loadPrincipalRule(ledger.path, 'hashicorp/google'),
        throwsFormatException,
      );
    });
  });
}
