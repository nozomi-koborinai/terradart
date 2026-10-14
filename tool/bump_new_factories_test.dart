// The tool/ test convention keeps this file outside test/, so the analyzer
// does not recognize it as a test for @visibleForTesting purposes.
// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import 'append_curation_backlog.dart';
import 'bump_new_factories.dart';
import 'coverage_verdict.dart';
import 'wrap_lanes.dart';

void main() {
  const catalog = '''
const terradartCatalog = <CatalogEntry>[
  CatalogEntry(
    tfType: 'aws_new',
    className: 'AwsNew',
    barrel: 'misc',
    kind: CatalogKind.resource,
  ),
  CatalogEntry(
    tfType:
        'aws_new',
    className: 'AwsNewData',
    barrel: 'data',
    kind: CatalogKind.dataSource,
  ),
  CatalogEntry(
    tfType: 'aws_old',
    className: 'AwsOld',
    barrel: 'misc',
    kind: CatalogKind.resource,
  ),
];
''';

  test('reads every catalog entry, wrapped tfType lines included', () {
    expect(readCatalog(catalog).map((f) => f.className), [
      'AwsNew',
      'AwsNewData',
      'AwsOld',
    ]);
  });

  test('a new factory is an added type the catalog now lists', () {
    final factories = newFactories({
      'added_resources': ['aws_new', 'aws_never_wrapped'],
      'added_data_sources': ['aws_new'],
    }, readCatalog(catalog));
    expect(factories.map((f) => '${f.kind} ${f.className}'), [
      'resource AwsNew',
      'dataSource AwsNewData',
    ]);
  });

  group('coverage', () {
    CoverageGreen green(List<ExcludedFactory> excluded) => CoverageGreen(
      slug: 'aws_leftover',
      engine: 'tofu 1.13.1',
      providers: const {'hashicorp/aws': '6.69.0'},
      learned: const [],
      excluded: excluded,
      pruned: const [],
    );
    const newDataRejected = ExcludedFactory(
      className: 'AwsNewData',
      tfType: 'aws_new',
      kind: FactoryKind.dataSource,
      cause: ProviderRejected(
        'data.aws_new.new.mode',
        'leftover',
        'Attribute mode must be a valid Foo mode, got: leftover',
      ),
    );
    const oldRejected = ExcludedFactory(
      className: 'AwsOld',
      tfType: 'aws_old',
      kind: FactoryKind.resource,
      cause: ProviderRejected(
        'aws_old.old.directory_id',
        'leftover',
        'Attribute directory_id must be a valid Directory Service Directory '
            'ID,\ngot: leftover',
      ),
    );

    test('a green stack covering data sources leaves new resources '
        'awaiting', () {
      expect(
        awaitingExample(readCatalog(catalog), {
          'dataSource',
        }, green(const [])).map((f) => f.className),
        ['AwsNew', 'AwsOld'],
      );
    });

    test('a factory the stack left out awaits an example', () {
      expect(
        awaitingExample(readCatalog(catalog), {
          'resource',
          'dataSource',
        }, green(const [newDataRejected])).map((f) => f.className),
        ['AwsNewData'],
      );
    });

    test('no verdict, or a broken one, covers nothing', () {
      final factories = readCatalog(catalog);
      expect(
        awaitingExample(factories, {'resource', 'dataSource'}, null),
        factories,
      );
      expect(
        awaitingExample(
          factories,
          {'resource', 'dataSource'},
          const CoverageBroken(
            slug: 'aws_leftover',
            stage: OracleStage.init,
            logExcerpt: 'registry unreachable',
          ),
        ),
        factories,
      );
    });

    test('an existing factory the stack left out is not a new one', () {
      final factories = newFactories({
        'added_resources': ['aws_new'],
        'added_data_sources': ['aws_new'],
      }, readCatalog(catalog));
      expect(
        leftExisting(
          green(const [newDataRejected, oldRejected]),
          factories,
        ).map((e) => e.className),
        ['AwsOld'],
      );
      expect(leftExisting(null, factories), isEmpty);
    });

    test('left-out factories carry why on their awaiting-example line', () {
      final out = appendAwaitingExampleDebt(
        '# ledger\n',
        factories: [
          (tfType: 'aws_new', className: 'AwsNewData', kind: 'dataSource'),
        ],
        leftOut: const [
          newDataRejected,
          oldRejected,
          ExcludedFactory(
            className: 'AwsKeyed',
            tfType: 'aws_keyed',
            kind: FactoryKind.dataSource,
            cause: GeneratorCannotPlace(
              'AwsKeyed.key takes a required AwsKeyedKey: add a dummy value '
              'to _requiredHelpers',
            ),
          ),
        ],
        source: 'hashicorp/aws',
        providerVersion: '6.69.0',
        detectedAt: '2026-10-19',
      );
      expect(out.split('\n').where((l) => l.isNotEmpty && !l.startsWith('#')), [
        'AwsNewData: awaiting-example: aws_new (data source) added in '
            'hashicorp/aws 6.69.0 (schema bump 2026-10-19); the coverage '
            'stack left it out: data.aws_new.new.mode rejected leftover: '
            'Attribute mode must be a valid Foo mode, got: leftover',
        'AwsOld: awaiting-example: aws_old left the coverage stack in '
            'hashicorp/aws 6.69.0 (schema bump 2026-10-19): '
            'aws_old.old.directory_id rejected leftover: Attribute '
            'directory_id must be a valid Directory Service Directory ID, '
            'got: leftover',
        'AwsKeyed: awaiting-example: aws_keyed (data source) left the '
            'coverage stack in hashicorp/aws 6.69.0 (schema bump '
            '2026-10-19): AwsKeyed.key takes a required AwsKeyedKey: add a '
            'dummy value to _requiredHelpers',
      ]);
    });

    test('a later note fills an entry recorded without one', () {
      final filled = appendCurationEntries(
        existing: const [
          {
            'resource': 'aws_new',
            'detected_at': '2026-10-19',
            'provider_version': '6.69.0',
          },
        ],
        resources: ['aws_new'],
        detectedAt: '2026-10-19',
        providerVersion: '6.69.0',
        note: 'factory generated',
      );
      expect(filled.single['note'], 'factory generated');

      final kept = appendCurationEntries(
        existing: const [
          {
            'resource': 'aws_new',
            'detected_at': '2026-10-19',
            'provider_version': '6.69.0',
            'note': 'keep me',
          },
        ],
        resources: ['aws_new'],
        detectedAt: '2026-10-19',
        providerVersion: '6.69.0',
        note: 'factory generated',
      );
      expect(kept.single['note'], 'keep me');
    });

    test('the left-out backlog note survives the backlog file', () {
      final yaml = formatBacklogYaml(
        header: '# backlog',
        entries: appendCurationEntries(
          existing: const [],
          resources: ['aws_old'],
          detectedAt: '2026-10-19',
          providerVersion: '6.69.0',
          note: leftCoverageNote('aws'),
        ),
      );
      expect(readBacklogEntries(yaml), [
        {
          'resource': 'aws_old',
          'detected_at': '2026-10-19',
          'provider_version': '6.69.0',
          'note':
              'the coverage stack left this factory out (its awaiting-example '
              'line in tool/example_debt.yaml says why); give its dummy value '
              'in tool/coverage_dummies/aws.yaml, delete that line, and run '
              'dart tool/coverage_stack.dart --lane aws',
        },
      ]);
    });

    test('record --coverage writes the backlog and debt entries', () async {
      final root = Directory.systemTemp.createTempSync('record');
      addTearDown(() => root.deleteSync(recursive: true));
      void put(String path, String text) => File('${root.path}/$path')
        ..createSync(recursive: true)
        ..writeAsStringSync(text);
      put(providersPath, File(providersPath).readAsStringSync());
      put('packages/terradart_aws/lib/src/_catalog.g.dart', catalog);
      put(curationBacklogPath, '# backlog\n\nentries: []\n');
      put(exampleDebtPath, '# ledger\n');
      put(
        'diff.json',
        jsonEncode({
          'added_resources': ['aws_new'],
          'added_data_sources': ['aws_new'],
        }),
      );
      put(
        'coverage.json',
        jsonEncode(encodeVerdict(green(const [newDataRejected, oldRejected]))),
      );

      final r = await Process.run(Platform.resolvedExecutable, [
        File('tool/bump_new_factories.dart').absolute.path,
        'record',
        '--lane=aws',
        '--diff=diff.json',
        '--detected-at=2026-10-19',
        '--provider-version=6.69.0',
        '--coverage=coverage.json',
        '--out=out.json',
      ], workingDirectory: root.path);
      expect(r.exitCode, 0, reason: '${r.stdout}${r.stderr}');

      String read(String path) => File('${root.path}/$path').readAsStringSync();
      expect(
        read(
          exampleDebtPath,
        ).split('\n').where((l) => l.isNotEmpty && !l.startsWith('#')),
        [
          'AwsNewData: awaiting-example: aws_new (data source) added in '
              'hashicorp/aws 6.69.0 (schema bump 2026-10-19); the coverage '
              'stack left it out: data.aws_new.new.mode rejected leftover: '
              'Attribute mode must be a valid Foo mode, got: leftover',
          'AwsOld: awaiting-example: aws_old left the coverage stack in '
              'hashicorp/aws 6.69.0 (schema bump 2026-10-19): '
              'aws_old.old.directory_id rejected leftover: Attribute '
              'directory_id must be a valid Directory Service Directory ID, '
              'got: leftover',
        ],
      );
      expect(readBacklogEntries(read(curationBacklogPath)), [
        {
          'data_source': 'aws_new',
          'detected_at': '2026-10-19',
          'provider_version': '6.69.0',
          'note': generatedFactoryNote,
        },
        {
          'resource': 'aws_new',
          'detected_at': '2026-10-19',
          'provider_version': '6.69.0',
          'note': generatedFactoryNote,
        },
        {
          'resource': 'aws_old',
          'detected_at': '2026-10-19',
          'provider_version': '6.69.0',
          'note': leftCoverageNote('aws'),
        },
      ]);
      expect(jsonDecode(read('out.json')), {
        'example_generator': 'tool/generate_aws_leftover_example.dart',
        'factories': [
          {
            'tf_type': 'aws_new',
            'class_name': 'AwsNew',
            'kind': 'resource',
            'example_covered': true,
          },
          {
            'tf_type': 'aws_new',
            'class_name': 'AwsNewData',
            'kind': 'dataSource',
            'example_covered': false,
          },
        ],
      });
    });
  });

  test('awaiting-example lines go under one section, once', () {
    const existing = '# ledger\nGoogleOld: org-only\n';
    final factories = [
      (tfType: 'google_new', className: 'GoogleNew', kind: 'resource'),
    ];
    String append(String yaml) => appendAwaitingExampleDebt(
      yaml,
      factories: factories,
      source: 'hashicorp/google',
      providerVersion: '7.47.0',
      detectedAt: '2026-10-04',
    );
    final once = append(existing);
    expect(once, startsWith(existing));
    expect(once, contains('# Awaiting an example:'));
    expect(
      once,
      endsWith(
        'GoogleNew: awaiting-example: google_new added in hashicorp/google '
        '7.47.0 (schema bump 2026-10-04)\n',
      ),
    );
    expect(append(once), once);

    final next = appendAwaitingExampleDebt(
      once,
      factories: [
        (tfType: 'google_next', className: 'GoogleNext', kind: 'resource'),
      ],
      source: 'hashicorp/google',
      providerVersion: '7.48.0',
      detectedAt: '2026-10-11',
    );
    expect('# Awaiting an example:'.allMatches(next), hasLength(1));
    expect(next, endsWith('(schema bump 2026-10-11)\n'));
  });

  test('the committed debt ledger parses the section header as comments', () {
    final debt = File(exampleDebtPath).readAsStringSync();
    final appended = appendAwaitingExampleDebt(
      debt,
      factories: [(tfType: 'google_x', className: 'GoogleX', kind: 'resource')],
      source: 'hashicorp/google',
      providerVersion: '7.47.0',
      detectedAt: '2026-10-04',
    );
    final added = appended.substring(debt.trimRight().length).split('\n');
    expect(added.where((l) => l.isNotEmpty && !l.startsWith('#')), [
      'GoogleX: awaiting-example: google_x added in hashicorp/google 7.47.0 '
          '(schema bump 2026-10-04)',
    ]);
  });

  group('barrels', () {
    const manifest = '''
umbrellaFile: terradart_x

barrels:
  alpha:
    doc: |-
      /// Alpha.
  gamma:
    doc: |-
      /// Gamma.
''';

    test('adds a placeholder entry per missing barrel, in key order', () {
      final next = addMissingBarrels(manifest, {'alpha', 'beta', 'zeta'});
      expect(
        next,
        contains(
          '      /// Alpha.\n'
          '  beta:\n'
          '    doc: |-\n'
          '      /// `beta` factories, added by the weekly schema bump.\n'
          '  gamma:',
        ),
      );
      expect(
        next,
        endsWith(
          '  zeta:\n    doc: |-\n'
          '      /// `zeta` factories, added by the weekly schema bump.\n',
        ),
      );
      expect(addMissingBarrels(next, {'alpha', 'beta', 'zeta'}), next);
    });

    test('every committed lane already has an entry per override barrel', () {
      for (final lane in parseWrapLanes(
        File(providersPath).readAsStringSync(),
      )) {
        final text = File(lane.barrelsManifest).readAsStringSync();
        expect(
          addMissingBarrels(text, overrideBarrels(lane.overridesRoot)),
          text,
          reason: lane.name,
        );
      }
    });
  });

  group('MM upstreams', () {
    const sources = '''
upstream_repo: GoogleCloudPlatform/magic-modules
upstream_branch: main
files:
  google_compute_network:
    upstream: mmv1/products/compute/Network.yaml
  google_compute_resize_request:
    upstream: mmv1/products/compute/ResizeRequest.yaml
  google_network_connectivity_hub:
    upstream: mmv1/products/networkconnectivity/Hub.yaml
  google_compute_router_peer:
    upstream: null  # handwritten
  data_google_compute_network:
    upstream: null  # data source
''';

    test('guesses the product from the longest known prefix', () {
      expect(
        guessMmUpstreams('google_network_connectivity_gateway_route', sources),
        ['mmv1/products/networkconnectivity/GatewayRoute.yaml'],
      );
      expect(guessMmUpstreams('google_compute_region_health_source', sources), [
        'mmv1/products/compute/RegionHealthSource.yaml',
      ]);
      expect(guessMmUpstreams('google_unknown_thing', sources), isEmpty);
    });

    test('guesses right for most committed rows', () {
      final committed = File(mmSourcesPath).readAsStringSync();
      final files = RegExp(
        r'^  (google_\w+):\n    upstream: (mmv1/products/\S+)$',
        multiLine: true,
      ).allMatches(committed).take(200).toList();
      final hits = files
          .where((m) => guessMmUpstreams(m[1]!, committed).contains(m[2]))
          .length;
      expect(hits / files.length, greaterThan(0.8));
    });

    test('fetches the first resolving guess and adds rows', () async {
      final dir = Directory.systemTemp.createTempSync('mm');
      addTearDown(() => dir.deleteSync(recursive: true));
      final upstreams = await resolveMmUpstreams(
        ['google_compute_foo_bar', 'google_unknown_thing'],
        mmSources: sources,
        mmDir: dir.path,
        fetch: (path) async =>
            path.endsWith('/FooBar.yaml') ? 'name: FooBar\n' : null,
      );
      expect(upstreams, {
        'google_compute_foo_bar': 'mmv1/products/compute/FooBar.yaml',
        'google_unknown_thing': null,
      });
      expect(
        File('${dir.path}/google_compute_foo_bar.yaml').readAsStringSync(),
        'name: FooBar\n',
      );
      final next = addMmSourceRows(sources, upstreams);
      expect(
        next,
        contains(
          '  google_compute_foo_bar:\n'
          '    upstream: mmv1/products/compute/FooBar.yaml\n'
          '  google_unknown_thing:\n'
          '    upstream: null  # schema bump: no mmv1 YAML at the guessed '
          'paths; probe upstream by hand\n'
          '  data_google_compute_network:',
        ),
      );
      expect(addMmSourceRows(next, upstreams), next);
    });

    test('adds a data-source row per new data source, in key order', () {
      final next = addMmDataSourceRows(sources, [
        'google_zeta',
        'google_alpha',
        'google_compute_network',
      ]);
      expect(
        next,
        endsWith(
          '  data_google_alpha:\n'
          '    upstream: null  # data source; no mmv1 YAML (schema bump)\n'
          '  data_google_compute_network:\n'
          '    upstream: null  # data source\n'
          '  data_google_zeta:\n'
          '    upstream: null  # data source; no mmv1 YAML (schema bump)\n',
        ),
      );
      expect(addMmDataSourceRows(next, ['google_zeta']), next);
    });
  });

  group('data-source overrides', () {
    const schema = '''
{"provider_schemas": {"registry.terraform.io/hashicorp/google": {
  "provider": {"version": 0, "block": {}},
  "resource_schemas": {},
  "data_source_schemas": {
    "google_foo": {"version": 0, "block": {
      "attributes": {
        "id": {"type": "string", "optional": true, "computed": true},
        "name": {"type": "string", "required": true},
        "project": {"type": "string", "optional": true},
        "state": {"type": "string", "computed": true}
      }
    }}
  }
}}}''';

    test('writes a leftover-thin override per data source lacking one', () {
      final dir = Directory.systemTemp.createTempSync('ds');
      addTearDown(() => dir.deleteSync(recursive: true));
      File('${dir.path}/data_google_kept.yaml').writeAsStringSync('kept\n');
      expect(
        scaffoldDataSourceOverrides(
          ['google_foo', 'google_kept'],
          schema: schema,
          overridesRoot: dir.path,
        ),
        ['google_foo'],
      );
      final yaml = File('${dir.path}/data_google_foo.yaml').readAsStringSync();
      expect(yaml, startsWith('kind: data_source\noutputDir: data\n'));
      expect(yaml, endsWith('paramOrder:\n  - name\n  - project\n'));
      expect(
        File('${dir.path}/data_google_kept.yaml').readAsStringSync(),
        'kept\n',
      );
    });

    test('fails on a type the schema does not have', () {
      final dir = Directory.systemTemp.createTempSync('ds');
      addTearDown(() => dir.deleteSync(recursive: true));
      expect(
        () => scaffoldDataSourceOverrides(
          ['google_missing'],
          schema: schema,
          overridesRoot: dir.path,
        ),
        throwsStateError,
      );
    });
  });
}
