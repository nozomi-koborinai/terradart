// The tool/ test convention keeps this file outside test/, so the analyzer
// does not recognize it as a test for @visibleForTesting purposes.
// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import 'coverage_verdict.dart';
import 'generate_drift_report.dart';

const _noBreaks = <String, dynamic>{'breaking': <String>[], 'added': 0};

const _validated = CoverageGreen(
  slug: 'data_source_leftover',
  engine: 'tofu 1.13.1',
  providers: {'hashicorp/google': '8.6.0'},
  learned: [],
  excluded: [],
  pruned: [],
);

ReportInputs inputs({
  Map<String, dynamic>? betaBump,
  Map<String, dynamic>? apiDiff = _noBreaks,
  List<String> added = const [],
  int wrapCheckExitCode = 0,
  Map<String, dynamic>? newFactories,
  Map<String, dynamic>? scaffold,
  Map<String, dynamic> mmYamlSync = const {
    'changed': <String>[],
    'failed': <String>[],
  },
  CoverageVerdict? coverage = _validated,
  ReportLane lane = ReportLane.google,
  List<String> addedDataSources = const [],
}) => ReportInputs(
  state: {
    'bump_date': '2026-08-24',
    'current': '7.44.0',
    'latest': '7.46.0',
    'bump_needed': true,
    'major': 7,
    'new_major_available': false,
  },
  wrapCheckStdout: 'clean',
  wrapCheckExitCode: wrapCheckExitCode,
  gatesStdout: 'ok',
  gatesExitCode: 0,
  mmYamlSync: mmYamlSync,
  schemaDiff: {
    'added_resources': added,
    'removed_resources': <String>[],
    'added_data_sources': addedDataSources,
    'removed_data_sources': <String>[],
  },
  betaBump: betaBump,
  apiDiff: apiDiff,
  newFactories: newFactories,
  scaffold: scaffold,
  coverage: coverage,
  lane: lane,
);

void main() {
  test('MM YAML section names the pinned magic-modules commit', () {
    final sha = 'd' * 40;
    expect(
      buildMmYamlSection(
        inputs(
          mmYamlSync: {'ref': sha, 'changed': <String>[], 'failed': <String>[]},
        ),
      ),
      contains('Read at magic-modules `$sha`.'),
    );
    final section = buildMmYamlSection(
      inputs(
        mmYamlSync: {
          'ref': sha,
          'changed': [
            {'file': 'google_x.yaml', 'upstream_url': 'https://example/x'},
          ],
          'failed': <String>[],
        },
      ),
    )!;
    expect(section, contains('## MM YAML updates (1 files)'));
    expect(section, contains('Read at magic-modules `$sha`.'));
    expect(section, contains('| `google_x.yaml` |'));
    expect(buildMmYamlSection(inputs()), isNot(contains('Read at')));
  });

  test('no beta input: no beta section, no beta summary row', () {
    final report = buildReport(inputs());
    expect(report, isNot(contains('google-beta')));
    expect(betaSummaryRow(inputs()), isNull);
    expect(buildBetaSection(inputs()), isNull);
  });

  test('clean beta bump renders version movement in section and summary', () {
    final i = inputs(
      betaBump: {
        'previous_version': '7.44.0',
        'version': '7.46.0',
        'extract_exit': 0,
        'wrap_check_exit': 0,
        'log_excerpt': '',
      },
    );
    final section = buildBetaSection(i)!;
    expect(section, contains('## google-beta bump (7.44.0 → 7.46.0)'));
    expect(section, contains('re-extracted at 7.46.0'));
    expect(section, contains('clean'));
    expect(betaSummaryRow(i), contains('7.44.0 → **7.46.0**'));
    expect(buildReport(i), contains('hashicorp/google-beta'));
  });

  test('extract failure: GA-only note, excerpt, warning summary row', () {
    final i = inputs(
      betaBump: {
        'previous_version': '7.44.0',
        'version': '7.46.0',
        'extract_exit': 69,
        'wrap_check_exit': null,
        'log_excerpt': 'StateError: requested resource(s) absent',
      },
    );
    final section = buildBetaSection(i)!;
    expect(section, contains('re-extraction failed (exit 69)'));
    expect(section, contains('ships GA-only'));
    expect(section, contains('StateError: requested resource(s) absent'));
    expect(betaSummaryRow(i), contains('⚠️'));
  });

  test('wrap-check divergence: divergence line and excerpt', () {
    final i = inputs(
      betaBump: {
        'previous_version': '7.44.0',
        'version': '7.46.0',
        'extract_exit': 0,
        'wrap_check_exit': 1,
        'log_excerpt': 'MISMATCH lib/src/firebase/google_firebase_project.dart',
      },
    );
    final section = buildBetaSection(i)!;
    expect(section, contains('divergence (exit 1)'));
    expect(section, contains('MISMATCH'));
    expect(betaSummaryRow(i), contains('⚠️'));
  });

  test('routine bump: auto-merge enabled', () {
    expect(autoMergeBlockers(inputs()), isEmpty);
    expect(buildReport(inputs()), contains('## ✅ Auto-merge enabled'));
    expect(
      buildApiSection(inputs()),
      contains('no breaking change; 0 entries added'),
    );
  });

  test('new resources do not block auto-merge', () {
    final i = inputs(
      added: ['google_foo'],
      newFactories: {
        'example_generator': null,
        'factories': [
          {
            'tf_type': 'google_foo',
            'class_name': 'GoogleFoo',
            'kind': 'resource',
          },
        ],
      },
      scaffold: {'exit': 0, 'log_excerpt': ''},
    );
    expect(autoMergeBlockers(i), isEmpty);
    final section = buildNewResourceSection(i);
    expect(section, contains('- `google_foo` → `GoogleFoo`'));
    expect(section, contains('`awaiting-example:`'));
    expect(buildReport(i), contains('## ✅ Auto-merge enabled'));
  });

  group('example coverage of new factories', () {
    Map<String, dynamic> factory(String kind, {required bool covered}) => {
      'tf_type': 'google_foo',
      'class_name': kind == 'resource' ? 'GoogleFoo' : 'DataGoogleFoo',
      'kind': kind,
      'example_covered': covered,
    };
    String section(List<Map<String, dynamic>> factories) =>
        buildNewResourceSection(
          inputs(
            added: ['google_foo'],
            newFactories: {
              'example_generator':
                  'tool/generate_data_source_leftover_example.dart',
              'factories': factories,
            },
          ),
        );

    test('every factory covered: the generator covers it', () {
      final s = section([factory('dataSource', covered: true)]);
      expect(s, contains('example generator covers it in an example'));
      expect(s, isNot(contains('awaiting-example:')));
    });

    test('a generator covering data sources only: counts both', () {
      final s = section([
        factory('resource', covered: false),
        factory('dataSource', covered: true),
      ]);
      expect(s, contains('example generator covers 1 of them'));
      expect(s, contains('for the other 1 an `awaiting-example:` line'));
    });

    test('no factory covered: awaiting-example only', () {
      final s = section([factory('resource', covered: false)]);
      expect(s, contains('an `awaiting-example:` line'));
      expect(s, isNot(contains('generator covers')));
    });
  });

  test('a failed scaffold blocks auto-merge and shows its log', () {
    final i = inputs(
      added: ['google_foo'],
      scaffold: {'exit': 66, 'log_excerpt': 'wrap-init failed'},
    );
    expect(autoMergeBlockers(i), [
      'scaffolding default overrides for the new types failed',
    ]);
    final section = buildNewResourceSection(i);
    expect(section, contains('no factory generated'));
    expect(section, contains('wrap-init failed'));
  });

  test('a breaking API change blocks auto-merge and is listed', () {
    final i = inputs(
      apiDiff: {
        'breaking': ['removed slot:terradart_google:GooglePubsubTopic.name'],
        'added': 2,
      },
    );
    expect(autoMergeBlockers(i), ['1 breaking API change(s)']);
    expect(
      buildApiSection(i),
      contains('`removed slot:terradart_google:GooglePubsubTopic.name`'),
    );
  });

  test('a missing API comparison blocks auto-merge', () {
    expect(autoMergeBlockers(inputs(apiDiff: null)), [
      'the generated API surface was not compared',
    ]);
  });

  test('wrap divergence and a failed beta ride-along block auto-merge', () {
    final i = inputs(
      wrapCheckExitCode: 1,
      betaBump: {
        'previous_version': '7.44.0',
        'version': '7.46.0',
        'extract_exit': 69,
        'wrap_check_exit': null,
        'log_excerpt': '',
      },
    );
    expect(autoMergeBlockers(i), [
      '`terradart wrap --check` diverged',
      'the google-beta ride-along failed',
    ]);
  });

  group('coverage stack', () {
    const aws = ReportLane(
      name: 'aws',
      source: 'hashicorp/aws',
      schemaDir: 's',
      hasCoverageStack: true,
    );
    CoverageGreen awsGreen(List<ExcludedFactory> excluded) => CoverageGreen(
      slug: 'aws_leftover',
      engine: 'tofu 1.13.1',
      providers: const {'hashicorp/aws': '6.69.0'},
      learned: const [],
      excluded: excluded,
      pruned: const [],
    );
    const fooRejected = ExcludedFactory(
      className: 'AwsFooBar',
      tfType: 'aws_foo_bar',
      kind: FactoryKind.resource,
      cause: ProviderRejected(
        'aws_foo_bar.foo_bar.mode',
        'leftover',
        'Attribute mode must be a valid Foo mode, got: leftover',
      ),
    );
    const routeRejected = ExcludedFactory(
      className: 'AwsDirectoryServiceIpRoute',
      tfType: 'aws_directory_service_ip_route',
      kind: FactoryKind.resource,
      cause: ProviderRejected(
        'aws_directory_service_ip_route.directory_service_ip_route.'
            'directory_id',
        'leftover',
        'Attribute directory_id must be a valid Directory Service Directory '
            'ID, got: leftover',
      ),
    );
    const keyedUnplaceable = ExcludedFactory(
      className: 'DataAwsKeyed',
      tfType: 'aws_keyed',
      kind: FactoryKind.dataSource,
      cause: GeneratorCannotPlace(
        'DataAwsKeyed.key takes a required DataAwsKeyedKey: add a dummy '
        'value to _requiredHelpers',
      ),
    );

    test('the #922 week: a learned value keeps auto-merge and is listed', () {
      final i = inputs(
        coverage: const CoverageGreen(
          slug: 'data_source_leftover',
          engine: 'tofu 1.13.1',
          providers: {'hashicorp/google': '8.6.0'},
          learned: [
            LearnedEntry(
              key: 'DataGoogleIamWorkloadIdentityPoolJwks.resourceName',
              value: 'https://example.com/leftover',
              source: 'family url-host',
              rejected: 'terradart-leftover',
              at:
                  'data.google_iam_workload_identity_pool_jwks.jwks.'
                  'resource_name',
              detail:
                  'expected "resource_name" to have a host, got '
                  'terradart-leftover',
            ),
          ],
          excluded: [],
          pruned: [],
        ),
      );
      expect(autoMergeBlockers(i), isEmpty);
      expect(
        buildCoverageSection(i),
        '## ✅ Coverage stack `data_source_leftover`\n'
        '\n'
        'Validated with tofu 1.13.1 against hashicorp/google 8.6.0: the '
        'commands of the `validate (data_source_leftover)` CI leg, then '
        '`dart analyze` as the example gates run it.\n'
        '\n'
        'Learned from provider diagnostics '
        '(`tool/coverage_dummies/google.yaml`):\n'
        '\n'
        '- `DataGoogleIamWorkloadIdentityPoolJwks.resourceName` = '
        '`https://example.com/leftover` (family url-host)\n'
        '  - `data.google_iam_workload_identity_pool_jwks.jwks.resource_name` '
        'rejected `terradart-leftover`: expected "resource_name" to have a '
        'host, got terradart-leftover',
      );
      expect(
        buildSummaryTable(i),
        contains(
          '| coverage stack `data_source_leftover` | ✅ validated (tofu '
          '1.13.1, hashicorp/google 8.6.0) · 1 learned |\n',
        ),
      );
    });

    test('a factory the provider rejects withholds auto-merge, new or '
        'existing', () {
      final i = inputs(
        lane: aws,
        added: ['aws_foo_bar'],
        coverage: awsGreen(const [fooRejected, routeRejected]),
      );
      expect(autoMergeBlockers(i), [
        '2 factories left the coverage stack `aws_leftover`: the provider '
            'rejects their dummy values',
      ]);
      expect(
        buildCoverageSection(i),
        '## ⚠️ Coverage stack `aws_leftover`\n'
        '\n'
        'Validated with tofu 1.13.1 against hashicorp/aws 6.69.0: the '
        'commands of the `validate (aws_leftover)` CI leg, then `dart '
        'analyze` as the example gates run it.\n'
        '\n'
        'Left out of the stack (an `awaiting-example:` line in '
        '`tool/example_debt.yaml` holds its coverage):\n'
        '\n'
        '- `AwsFooBar` (`aws_foo_bar`, new): `aws_foo_bar.foo_bar.mode` '
        'rejected `leftover`: Attribute mode must be a valid Foo mode, got: '
        'leftover\n'
        '  - Withholds auto-merge. To cover it, give the rejected argument a '
        'value in `tool/coverage_dummies/aws.yaml` (keys are Dart names, '
        '`AwsFooBar.<parameter>`), or add a message family to '
        '`kDiagnosticFamilies` when the message names a shape. Then delete '
        'its `awaiting-example:` line and run `dart tool/coverage_stack.dart '
        '--lane aws`.\n'
        '- `AwsDirectoryServiceIpRoute` (`aws_directory_service_ip_route`, '
        'existing): `aws_directory_service_ip_route.directory_service_ip_route'
        '.directory_id` rejected `leftover`: Attribute directory_id must be a '
        'valid Directory Service Directory ID, got: leftover\n'
        '  - Withholds auto-merge. To cover it, give the rejected argument a '
        'value in `tool/coverage_dummies/aws.yaml` (keys are Dart names, '
        '`AwsDirectoryServiceIpRoute.<parameter>`), or add a message family '
        'to `kDiagnosticFamilies` when the message names a shape. Then delete '
        'its `awaiting-example:` line and run `dart tool/coverage_stack.dart '
        '--lane aws`.',
      );
    });

    test('a factory the generator cannot place does not block', () {
      final i = inputs(lane: aws, coverage: awsGreen(const [keyedUnplaceable]));
      expect(autoMergeBlockers(i), isEmpty);
      expect(
        buildCoverageSection(i),
        endsWith(
          '- `DataAwsKeyed` (`aws_keyed`, data source, existing): the '
          'generator cannot place it: DataAwsKeyed.key takes a required '
          'DataAwsKeyedKey: add a dummy value to _requiredHelpers\n'
          '  - Then delete its `awaiting-example:` line and run `dart '
          'tool/coverage_stack.dart --lane aws`.',
        ),
      );
      expect(
        buildSummaryTable(i),
        contains(
          '| coverage stack `aws_leftover` | ⚠️ validated (tofu 1.13.1, '
          'hashicorp/aws 6.69.0) · 1 left out |\n',
        ),
      );
    });

    test('a missing verdict blocks auto-merge', () {
      final i = inputs(lane: aws, coverage: null);
      expect(autoMergeBlockers(i), ['the coverage stack was not validated']);
      expect(
        buildCoverageSection(i),
        '## ❌ Coverage stack\n'
        '\n'
        'Not validated: `tool/coverage_stack.dart` wrote no verdict (it '
        'crashed, or the regenerate failed before it ran), so the stack is as '
        'the bump found it. Reproduce with `dart tool/coverage_stack.dart '
        '--lane aws`.',
      );
    });

    test('a broken stack blocks auto-merge and shows its log', () {
      final i = inputs(
        lane: aws,
        coverage: const CoverageBroken(
          slug: 'aws_leftover',
          stage: OracleStage.init,
          logExcerpt: 'Error: Failed to query available provider packages\n',
        ),
      );
      expect(autoMergeBlockers(i), [
        'the coverage stack `aws_leftover` fails init',
      ]);
      expect(
        buildCoverageSection(i),
        '## ❌ Coverage stack `aws_leftover`\n'
        '\n'
        'Fails `init`; the stack and `tool/coverage_dummies/aws.yaml` are as '
        'the bump found them. Reproduce with `dart tool/coverage_stack.dart '
        '--lane aws`.\n'
        '\n'
        '```\n'
        'Error: Failed to query available provider packages\n'
        '```',
      );
      expect(
        buildSummaryTable(i),
        contains('| coverage stack `aws_leftover` | ❌ fails init |\n'),
      );
    });

    test('a lane without a coverage stack has no section and no blocker', () {
      final i = inputs(
        lane: const ReportLane(
          name: 'aws',
          source: 'hashicorp/aws',
          schemaDir: 's',
        ),
        coverage: null,
      );
      expect(coverageBlockers(i), isEmpty);
      expect(buildCoverageSection(i), isNull);
      expect(buildReport(i), isNot(contains('Coverage stack')));
    });

    test('every bump lane of tool/providers.yaml has a coverage stack', () {
      final yaml = File('tool/providers.yaml').readAsStringSync();
      expect(
        [
          for (final name in ['google', 'aws', 'cloudflare'])
            ReportLane.fromProviders(yaml, name).hasCoverageStack,
        ],
        [true, true, true],
      );
      expect(
        ReportLane.fromProviders('''
providers:
  appwrite:
    source: appwrite/appwrite
    schemaDir: s
    bump: {mode: auto}
''', 'appwrite').hasCoverageStack,
        isFalse,
      );
    });

    test('readInputs reads coverage_stack.json', () {
      final dir = Directory.systemTemp.createTempSync('drift');
      addTearDown(() => dir.deleteSync(recursive: true));
      void put(String name, String text) =>
          File('${dir.path}/$name').writeAsStringSync(text);
      put('state.json', '{}');
      put('wrap_check.txt', '');
      put('wrap_check_exit', '0');
      put('gates.txt', '');
      put('gates_exit', '0');
      put('schema_diff.json', '{}');
      expect(readInputs(dir.path).coverage, isNull);
      put(
        'coverage_stack.json',
        jsonEncode(encodeVerdict(awsGreen(const [routeRejected]))),
      );
      expect(encodeVerdict(readInputs(dir.path).coverage!), {
        'verdict': 'green',
        'slug': 'aws_leftover',
        'engine': 'tofu 1.13.1',
        'providers': {'hashicorp/aws': '6.69.0'},
        'learned': <Object>[],
        'excluded': [
          {
            'class_name': 'AwsDirectoryServiceIpRoute',
            'tf_type': 'aws_directory_service_ip_route',
            'kind': 'resource',
            'cause': {
              'kind': 'provider_rejected',
              'at':
                  'aws_directory_service_ip_route.directory_service_ip_route.'
                  'directory_id',
              'rejected': 'leftover',
              'detail':
                  'Attribute directory_id must be a valid Directory Service '
                  'Directory ID, got: leftover',
            },
          },
        ],
        'pruned': <Object>[],
      });
    });
  });
}
