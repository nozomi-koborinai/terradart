import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/parser/discovery_enums.dart';
import 'package:test/test.dart';

final _schemas = <String, Object?>{
  'Address': {
    'properties': {
      'IPProtocol': {
        'enum': ['TCP', 'UDP'],
      },
      'addressType': {
        'enum': ['EXTERNAL', 'INTERNAL', 'UNSPECIFIED_TYPE'],
      },
      'policies': {
        'items': {r'$ref': 'Policy'},
      },
      'labels': {
        'additionalProperties': {r'$ref': 'Label'},
      },
      'description': {'type': 'string'},
      'nodeAffinities': {
        'items': {
          'properties': {
            'operator': {
              'enum': ['IN', 'NOT_IN'],
            },
          },
        },
      },
    },
  },
  'Policy': {
    'properties': {
      'mode': {
        'enum': ['ON', 'OFF'],
      },
    },
  },
  'Label': {
    'properties': {
      'kind': {
        'items': {
          'enum': ['A', 'B'],
        },
      },
    },
  },
  'Unrelated': {
    'properties': {
      'flag': {
        'enum': ['X'],
      },
    },
  },
};

DiscoveryEnums _enums({Map<String, List<String>> paths = const {}}) =>
    DiscoveryEnums(
      docs: {'compute.v1': _schemas},
      resources: {
        'google_compute_address': (
          doc: 'compute.v1',
          schema: 'Address',
          paths: paths,
        ),
      },
      dataSources: {
        'google_compute_address': (
          doc: 'compute.v1',
          schema: 'Policy',
          paths: const {},
        ),
      },
    );

void main() {
  group('lookup', () {
    List<String>? values(
      String path, {
      DiscoveryEnums? enums,
      bool dataSource = false,
      List<String>? restPath,
    }) => (enums ?? _enums())
        .lookup(
          'google_compute_address',
          path,
          dataSource: dataSource,
          restPath: restPath,
        )
        ?.values;

    test('matches a segment by its letters, case and underscores aside', () {
      expect(values('ip_protocol'), ['TCP', 'UDP']);
      final found = _enums().lookup('google_compute_address', 'address_type');
      expect(found?.doc, 'compute.v1');
      expect(found?.field, 'Address.addressType');
    });

    test(r'follows $ref, items and additionalProperties', () {
      expect(values('policies.mode'), ['ON', 'OFF']);
      expect(values('labels.kind'), ['A', 'B']);
      expect(values('node_affinity.operator'), ['IN', 'NOT_IN']);
    });

    test('is null for a non-enum, an unknown path or an unknown type', () {
      expect(values('description'), isNull);
      expect(values('missing'), isNull);
      expect(values('policies'), isNull);
      expect(_enums().lookup('google_other', 'ip_protocol'), isNull);
    });

    test('a data source has its own root', () {
      expect(values('mode', dataSource: true), ['ON', 'OFF']);
      expect(values('ip_protocol', dataSource: true), isNull);
    });

    test('a REST path and a hand path win over the segments', () {
      expect(values('protocol', restPath: ['IPProtocol']), ['TCP', 'UDP']);
      expect(
        values(
          'rules.mode',
          enums: _enums(
            paths: {
              'rules': ['policies'],
            },
          ),
        ),
        ['ON', 'OFF'],
      );
    });

    test('a top-level input falls back to a method query parameter', () {
      final enums = DiscoveryEnums(
        docs: {'compute.v1': _schemas},
        resources: {
          'google_compute_address': (
            doc: 'compute.v1',
            schema: 'Address',
            paths: const {},
          ),
        },
        dataSources: const {},
        parameters: {
          'compute.v1': {
            'Address': {
              'checkExistingUsage': [
                'CHECK_EXISTING_USAGE_UNSPECIFIED',
                'SKIP',
              ],
              'IPProtocol': ['NOT_USED'],
            },
          },
        },
      );
      final found = enums.lookup(
        'google_compute_address',
        'check_existing_usage',
      );
      expect(found?.values, ['CHECK_EXISTING_USAGE_UNSPECIFIED', 'SKIP']);
      expect(found?.field, 'Address?checkExistingUsage');
      expect(enums.lookup('google_compute_address', 'ip_protocol')?.values, [
        'TCP',
        'UDP',
      ], reason: 'a schema property wins over a parameter');
      expect(
        enums.lookup('google_compute_address', 'labels.check_existing_usage'),
        isNull,
      );
    });
  });

  test('isDiscoverySentinel', () {
    for (final v in ['TYPE_UNSPECIFIED', 'UNSPECIFIED', 'UNSPECIFIED_MODE']) {
      expect(isDiscoverySentinel(v), isTrue, reason: v);
    }
    for (final v in ['SPECIFIED', 'UNSPECIFIEDX', 'EXTERNAL']) {
      expect(isDiscoverySentinel(v), isFalse, reason: v);
    }
  });

  group('parseDiscoveryRoots', () {
    test('reads roots, hand paths and nulls', () {
      final roots = parseDiscoveryRoots('''
provider_version: 7.0.0
upstream_ref: abc
resources:
  google_a:
    doc: a.v1
    schema: A
    paths:
      settings: config.settings
  google_b: null
data_sources:
  google_c:
    doc: c.v1
    schema: C
''');
      expect(roots.providerVersion, '7.0.0');
      expect(roots.upstreamRef, 'abc');
      expect(roots.resources.keys, ['google_a']);
      final a = roots.resources['google_a']!;
      expect((a.doc, a.schema), ('a.v1', 'A'));
      expect(a.paths, {
        'settings': ['config', 'settings'],
      });
    });

    test('rejects a root without doc and schema', () {
      expect(
        () => parseDiscoveryRoots('resources:\n  google_a:\n    doc: a.v1\n'),
        throwsFormatException,
      );
      expect(() => parseDiscoveryRoots('- x'), throwsFormatException);
    });
  });

  test('pruneDiscoveryDoc keeps only the paths to an enum', () {
    final pruned = pruneDiscoveryDoc(
      {
        'name': 'compute',
        'version': 'v1',
        'revision': '20261001',
        'kind': 'discovery#restDescription',
        'schemas': _schemas,
      },
      ['Address'],
      sourceUrl: 'https://example.test/rest',
    );
    expect(pruned['name'], 'compute');
    expect(pruned['revision'], '20261001');
    expect(pruned['sourceUrl'], 'https://example.test/rest');
    expect(pruned.containsKey('kind'), isFalse);
    final schemas = pruned['schemas'] as Map<String, Object?>;
    expect(schemas.keys, ['Address', 'Label', 'Policy']);
    final address = (schemas['Address'] as Map)['properties'] as Map;
    expect(address.containsKey('description'), isFalse);
    expect(address['IPProtocol'], {
      'enum': ['TCP', 'UDP'],
    });
    expect(pruned.containsKey('parameters'), isFalse);
  });

  test('pruneDiscoveryDoc keeps the enum parameters of root methods', () {
    Map<String, Object?> method(String ref, Map<String, Object?> params) => {
      'request': {r'$ref': ref},
      'parameters': params,
    };
    final pruned = pruneDiscoveryDoc(
      {
        'name': 'compute',
        'version': 'v1',
        'schemas': _schemas,
        'resources': {
          'projects': {
            'resources': {
              'addresses': {
                'methods': {
                  'patch': method('Address', {
                    'mode': {
                      'type': 'string',
                      'enum': ['A', 'B'],
                    },
                    'updateMask': {'type': 'string'},
                  }),
                  'insert': method('Address', {
                    'mode': {
                      'enum': ['A'],
                    },
                  }),
                  'other': method('Unrelated', {
                    'flag': {
                      'enum': ['X'],
                    },
                  }),
                },
              },
            },
          },
        },
      },
      ['Address'],
      sourceUrl: 'https://example.test/rest',
    );
    expect(pruned['parameters'], {
      'Address': {
        'mode': {
          'enum': ['A'],
        },
      },
    });
  });

  group('load', () {
    late Directory dir;
    setUp(() => dir = Directory.systemTemp.createTempSync('discovery_'));
    tearDown(() => dir.deleteSync(recursive: true));

    test('is null without roots.yaml', () {
      expect(DiscoveryEnums.load(dir.path), isNull);
    });

    test('reads every document beside roots.yaml', () {
      final d = Directory(p.join(dir.path, discoveryDirName))..createSync();
      File(p.join(d.path, 'compute.v1.json')).writeAsStringSync(
        jsonEncode({
          'name': 'compute',
          'schemas': _schemas,
          'parameters': {
            'Address': {
              'checkMode': {
                'enum': ['ON'],
              },
            },
          },
        }),
      );
      File(p.join(d.path, discoveryRootsFile)).writeAsStringSync(
        'resources:\n  google_compute_address:\n'
        '    doc: compute.v1\n    schema: Address\n',
      );
      final loaded = DiscoveryEnums.load(dir.path)!;
      expect(loaded.lookup('google_compute_address', 'ip_protocol')?.values, [
        'TCP',
        'UDP',
      ]);
      expect(loaded.lookup('google_compute_address', 'check_mode')?.values, [
        'ON',
      ]);
    });

    test('rejects a document without schemas', () {
      final d = Directory(p.join(dir.path, discoveryDirName))..createSync();
      File(p.join(d.path, 'x.v1.json')).writeAsStringSync('{}');
      File(p.join(d.path, discoveryRootsFile)).writeAsStringSync('{}');
      expect(() => DiscoveryEnums.load(dir.path), throwsFormatException);
    });
  });
}
