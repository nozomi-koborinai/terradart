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
          passthrough: false,
        ),
      },
      dataSources: {
        'google_compute_address': (
          doc: 'compute.v1',
          schema: 'Policy',
          paths: const {},
          passthrough: false,
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
    test('reads roots, hand paths, passthrough and nulls', () {
      final roots = parseDiscoveryRoots('''
provider_version: 7.0.0
upstream_ref: abc
resources:
  google_a:
    doc: a.v1
    schema: A
    passthrough: true
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
      expect((a.doc, a.schema, a.passthrough), ('a.v1', 'A', true));
      expect(a.paths, {
        'settings': ['config', 'settings'],
      });
      expect(roots.dataSources['google_c']!.passthrough, isFalse);
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
      File(
        p.join(d.path, 'compute.v1.json'),
      ).writeAsStringSync(jsonEncode({'name': 'compute', 'schemas': _schemas}));
      File(p.join(d.path, discoveryRootsFile)).writeAsStringSync(
        'resources:\n  google_compute_address:\n'
        '    doc: compute.v1\n    schema: Address\n',
      );
      final loaded = DiscoveryEnums.load(dir.path)!;
      expect(loaded.lookup('google_compute_address', 'ip_protocol')?.values, [
        'TCP',
        'UDP',
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
