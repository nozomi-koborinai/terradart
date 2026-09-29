// The tool/ test convention keeps this file outside test/, so the analyzer
// does not recognize it as a test for @visibleForTesting purposes.
// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:test/test.dart';

import 'generate_drift_report.dart';

const _noBreaks = <String, dynamic>{'breaking': <String>[], 'added': 0};

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
  schemaDiff: {'added_resources': added, 'removed_resources': <String>[]},
  betaBump: betaBump,
  apiDiff: apiDiff,
  newFactories: newFactories,
  scaffold: scaffold,
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
}
