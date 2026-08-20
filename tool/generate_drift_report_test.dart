import 'package:test/test.dart';

import 'generate_drift_report.dart';

ReportInputs inputs({Map<String, dynamic>? betaBump}) => ReportInputs(
      state: {
        'bump_date': '2026-08-24',
        'v7_current': '7.44.0',
        'v7_latest': '7.46.0',
        'bump_needed': true,
        'v8_available': false,
      },
      wrapCheckStdout: 'clean',
      wrapCheckExitCode: 0,
      gatesStdout: 'ok',
      gatesExitCode: 0,
      mmYamlSync: {'changed': <String>[], 'failed': <String>[]},
      schemaDiff: {
        'added_resources': <String>[],
        'removed_resources': <String>[],
      },
      betaBump: betaBump,
    );

void main() {
  test('no beta input: no beta section, no beta summary row', () {
    final report = buildReport(inputs());
    expect(report, isNot(contains('google-beta')));
    expect(betaSummaryRow(inputs()), isNull);
    expect(buildBetaSection(inputs()), isNull);
  });

  test('clean beta bump renders version movement in section and summary', () {
    final i = inputs(betaBump: {
      'previous_version': '7.44.0',
      'version': '7.46.0',
      'extract_exit': 0,
      'wrap_check_exit': 0,
      'log_excerpt': '',
    });
    final section = buildBetaSection(i)!;
    expect(section, contains('## google-beta bump (7.44.0 → 7.46.0)'));
    expect(section, contains('re-extracted at 7.46.0'));
    expect(section, contains('clean'));
    expect(betaSummaryRow(i), contains('7.44.0 → **7.46.0**'));
    expect(buildReport(i), contains('hashicorp/google-beta'));
  });

  test('extract failure: GA-only note, excerpt, warning summary row', () {
    final i = inputs(betaBump: {
      'previous_version': '7.44.0',
      'version': '7.46.0',
      'extract_exit': 69,
      'wrap_check_exit': null,
      'log_excerpt': 'StateError: requested resource(s) absent',
    });
    final section = buildBetaSection(i)!;
    expect(section, contains('re-extraction failed (exit 69)'));
    expect(section, contains('ships GA-only'));
    expect(section, contains('StateError: requested resource(s) absent'));
    expect(betaSummaryRow(i), contains('⚠️'));
  });

  test('wrap-check divergence: divergence line and excerpt', () {
    final i = inputs(betaBump: {
      'previous_version': '7.44.0',
      'version': '7.46.0',
      'extract_exit': 0,
      'wrap_check_exit': 1,
      'log_excerpt': 'MISMATCH lib/src/firebase/google_firebase_project.dart',
    });
    final section = buildBetaSection(i)!;
    expect(section, contains('divergence (exit 1)'));
    expect(section, contains('MISMATCH'));
    expect(betaSummaryRow(i), contains('⚠️'));
  });
}
