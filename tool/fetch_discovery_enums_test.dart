import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/parser/discovery_enums.dart';
import 'package:test/test.dart';

import 'fetch_discovery_enums.dart';
import 'wrap_lanes.dart';

void main() {
  final lanes = {
    for (final l in parseWrapLanes(File(providersPath).readAsStringSync()))
      l.name: l,
  };

  group('staleDiscovery', () {
    for (final name in ['google', 'google-beta']) {
      test('the committed $name copy is current', () {
        expect(staleDiscovery(lanes[name]!, Directory.current.path), isEmpty);
      });
    }

    group('seeded on a copy of the google lane', () {
      final lane = lanes['google']!;
      late Directory root;
      String at(String rel) => p.join(root.path, rel);
      String rootsPath() =>
          at(p.join(lane.schemaDir, discoveryDirName, discoveryRootsFile));
      void edit(String rel, String Function(String) change) {
        final f = File(at(rel));
        f.writeAsStringSync(change(f.readAsStringSync()));
      }

      setUp(() {
        root = Directory.systemTemp.createTempSync('stale_discovery_');
        for (final rel in [
          p.join(lane.schemaDir, discoveryDirName, discoveryRootsFile),
          p.join(lane.schemaDir, 'provider_version.txt'),
          p.join(lane.schemaDir, 'mm_upstream_ref.txt'),
          mmYamlSourcesPath,
          discoverySourcesPath,
        ]) {
          File(at(rel))
            ..createSync(recursive: true)
            ..writeAsStringSync(File(rel).readAsStringSync());
        }
        for (final f in Directory(
          p.join(lane.schemaDir, discoveryDirName),
        ).listSync().whereType<File>()) {
          if (f.path.endsWith('.json')) {
            File(at(f.path)).writeAsStringSync(f.readAsStringSync());
          }
        }
        Directory(
          p.dirname(at(lane.overridesRoot)),
        ).createSync(recursive: true);
        Link(at(lane.overridesRoot)).createSync(p.absolute(lane.overridesRoot));
      });
      tearDown(() => root.deleteSync(recursive: true));

      test('the copy starts current', () {
        expect(staleDiscovery(lane, root.path), isEmpty);
      });

      test('a moved provider pin is stale', () {
        edit(p.join(lane.schemaDir, 'provider_version.txt'), (_) => '0.0.1\n');
        expect(staleDiscovery(lane, root.path), [
          contains('the fixture is 0.0.1'),
        ]);
      });

      test('a moved MM ref is stale', () {
        edit(p.join(lane.schemaDir, 'mm_upstream_ref.txt'), (_) => 'abc\n');
        expect(staleDiscovery(lane, root.path), [
          contains('the lane is at abc'),
        ]);
      });

      test('an edit to the hand roots is stale', () {
        edit(
          discoverySourcesPath,
          (s) => s.replaceFirst(
            'google_app_engine_application: {api: appengine, version: v1,',
            'google_app_engine_application: {api: appengine, version: v1beta,',
          ),
        );
        expect(staleDiscovery(lane, root.path), [
          contains('predates the $discoverySourcesPath entries of google'),
        ]);
      });

      test('a wrapped type the record lacks, or one it adds, is stale', () {
        final text = File(rootsPath()).readAsStringSync();
        final first = RegExp(
          r'^  (google_\w+):',
          multiLine: true,
        ).firstMatch(text)!.group(1)!;
        File(rootsPath()).writeAsStringSync(
          text
              .replaceFirst(
                RegExp('^  $first:', multiLine: true),
                '  ${first}_x:',
              )
              .replaceFirst(
                'data_sources:\n',
                'data_sources:\n  google_gone: null\n',
              ),
        );
        expect(staleDiscovery(lane, root.path), [
          'discovery/roots.yaml resources lacks $first',
          'discovery/roots.yaml resources lists ${first}_x, which no override '
              'wraps',
          'discovery/roots.yaml data_sources lists google_gone, which no '
              'override wraps',
        ]);
      });

      test('a hand edit to a copied document is stale', () {
        final doc = p.join(lane.schemaDir, discoveryDirName, 'compute.v1.json');
        edit(
          doc,
          (s) => s.replaceFirst(
            RegExp(r'"revision": "\d+"'),
            '"revision": "HAND_EDIT"',
          ),
        );
        expect(staleDiscovery(lane, root.path), [
          'discovery/compute.v1.json does not match the digest '
              'discovery/roots.yaml records (edited by hand?)',
        ]);
      });

      test('an edited enum value in a copied document is stale', () {
        final doc = p.join(lane.schemaDir, discoveryDirName, 'compute.v1.json');
        edit(doc, (s) => s.replaceFirst('"PREMIUM"', '"PREMIUM_X"'));
        expect(staleDiscovery(lane, root.path), [
          contains('compute.v1.json does not match the digest'),
        ]);
      });

      test('a removed or an added document is stale', () {
        File(
          at(p.join(lane.schemaDir, discoveryDirName, 'compute.v1.json')),
        ).deleteSync();
        File(
          at(p.join(lane.schemaDir, discoveryDirName, 'extra.v1.json')),
        ).writeAsStringSync('{}');
        expect(staleDiscovery(lane, root.path), [
          'discovery/roots.yaml records compute.v1.json, which is missing',
          'discovery/extra.v1.json has no digest in discovery/roots.yaml',
        ]);
      });

      test('a missing record is stale', () {
        File(rootsPath()).deleteSync();
        expect(staleDiscovery(lane, root.path), [contains('is missing')]);
      });
    });
  });

  group('handRoots', () {
    const yaml = '''
google:
  products:
    monitoring: {api: monitoring, version: v3}
  types:
    google_a:
      api: a
      version: v1
      schema: A
      paths: {settings: config.settings}
''';

    test('reads types and products per lane', () {
      final hand = handRoots(yaml, 'google');
      expect(hand.products['monitoring'], {
        'api': 'monitoring',
        'version': 'v3',
      });
      expect(hand.types['google_a'], {
        'api': 'a',
        'version': 'v1',
        'schema': 'A',
        'paths': {'settings': 'config.settings'},
      });
      expect(handRoots(yaml, 'google-beta').types, isEmpty);
    });

    test('rejects an entry without api and version', () {
      expect(
        () =>
            handRoots('google:\n  types:\n    google_a: {api: a}\n', 'google'),
        throwsFormatException,
      );
    });

    test('the digest moves with any edit to the lane', () {
      final before = handRootsDigest(yaml, 'google');
      expect(before, hasLength(16));
      expect(handRootsDigest(yaml, 'google'), before);
      expect(
        handRootsDigest(yaml.replaceFirst('schema: A', 'schema: B'), 'google'),
        isNot(before),
      );
      expect(
        handRootsDigest('$yaml\ngoogle-beta: {}\n', 'google'),
        before,
        reason: 'another lane does not move it',
      );
    });
  });

  test(
    'discoverySchemaNamed prefers the exact name, then the shortest suffix',
    () {
      final schemas = [
        'GoogleCloudAiplatformV1Endpoint',
        'GoogleCloudAiplatformV1PrivateEndpoint',
        'Address',
      ];
      expect(discoverySchemaNamed(schemas, 'Address'), 'Address');
      expect(
        discoverySchemaNamed(schemas, 'Endpoint'),
        'GoogleCloudAiplatformV1Endpoint',
      );
      expect(discoverySchemaNamed(schemas, 'Missing'), isNull);
    },
  );

  test('discoveryUrls reads the API and version off a base_url', () {
    expect(
      discoveryUrls(
        'https://{{region}}-aiplatform.googleapis.com/v1/',
      ).map((u) => '$u'),
      [
        r'https://aiplatform.googleapis.com/$discovery/rest?version=v1',
        'https://www.googleapis.com/discovery/v1/apis/aiplatform/v1/rest',
      ],
    );
    expect(
      discoveryUrls('https://www.googleapis.com/storage/v1/').map((u) => '$u'),
      ['https://www.googleapis.com/discovery/v1/apis/storage/v1/rest'],
    );
    expect(discoveryUrls('https://example.googleapis.com/'), isEmpty);
    expect(apiUrls('compute', 'beta').map((u) => '$u'), [
      r'https://compute.googleapis.com/$discovery/rest?version=beta',
      'https://www.googleapis.com/discovery/v1/apis/compute/beta/rest',
    ]);
  });

  test('absentApis reads reasoned absences, and they move the digest', () {
    const base = 'google:\n  types: {}\n';
    const withAbsent = 'google:\n  absent:\n    x.v1: retired\n  types: {}\n';
    expect(absentApis(withAbsent, 'google'), {'x.v1': 'retired'});
    expect(absentApis(base, 'google'), isEmpty);
    expect(
      () => absentApis('google:\n  absent:\n    x.v1: ""\n', 'google'),
      throwsFormatException,
    );
    expect(
      handRootsDigest(withAbsent, 'google'),
      isNot(handRootsDigest(base, 'google')),
    );
    for (final url in apiUrls('contentwarehouse', 'v1')) {
      expect(discoveryApiOf(url), 'contentwarehouse.v1');
    }
  });

  test('discoveryAbsent fails closed on anything but a real absence', () {
    final own = Uri.parse(
      r'https://apikeys.googleapis.com/$discovery/rest?version=v2',
    );
    final directory = Uri.parse(
      'https://www.googleapis.com/discovery/v1/apis/apikeys/v2/rest',
    );
    final github = Uri.parse(
      'https://raw.githubusercontent.com/GoogleCloudPlatform/magic-modules/x/a',
    );
    for (final url in [own, directory, github]) {
      expect(discoveryAbsent(url, status: 404), isTrue, reason: '$url');
      for (final status in [429, 500, 503]) {
        expect(discoveryAbsent(url, status: status), isFalse, reason: '$url');
      }
      expect(
        discoveryAbsent(url, socketError: 'Connection reset by peer'),
        isFalse,
        reason: '$url',
      );
    }
    expect(discoveryAbsent(own, status: 403), isTrue);
    expect(
      discoveryAbsent(own, socketError: "Failed host lookup: 'x'"),
      isTrue,
    );
    expect(discoveryAbsent(directory, status: 403), isFalse);
    expect(
      discoveryAbsent(directory, socketError: "Failed host lookup: 'x'"),
      isFalse,
    );
    expect(
      discoveryAbsent(github, socketError: "Failed host lookup: 'x'"),
      isFalse,
    );
  });

  test('renderDiscoveryRoots round-trips through parseDiscoveryRoots', () {
    final text = renderDiscoveryRoots(
      lane: 'google',
      providerVersion: '7.0.0',
      upstreamRef: 'abc',
      handRoots: '0123456789abcdef',
      digests: const {'a.v1': 'aa', 'c.v1': 'cc'},
      roots: {
        (false, 'google_a'): (
          doc: 'a.v1',
          schema: 'A',
          paths: const {'settings': 'config.settings'},
        ),
        (false, 'google_b'): null,
        (true, 'google_c'): (doc: 'c.v1', schema: 'C', paths: const {}),
      },
      reasons: {(false, 'google_b'): 'no hand root'},
    );
    expect(text, contains('google_b: null  # no hand root'));
    expect(text, contains('hand_roots: 0123456789abcdef'));
    expect(text, contains('digests:\n  a.v1: aa\n  c.v1: cc\n'));
    final parsed = parseDiscoveryRoots(text);
    expect(parsed.providerVersion, '7.0.0');
    expect(parsed.upstreamRef, 'abc');
    final a = parsed.resources['google_a']!;
    expect((a.doc, a.schema), ('a.v1', 'A'));
    expect(a.paths, {
      'settings': ['config', 'settings'],
    });
    expect(parsed.resources.containsKey('google_b'), isFalse);
    expect(parsed.dataSources['google_c']!.schema, 'C');
  });
}
