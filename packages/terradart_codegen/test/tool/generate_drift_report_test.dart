import 'package:test/test.dart';

import '../../../../tool/generate_drift_report.dart';

ReportInputs _baseInputs({
  bool v8Available = false,
  String v7Current = '7.31.0',
  String v7Latest = '7.31.0',
  String maxMajor = '7',
  List<Map<String, dynamic>> mmChanged = const [],
  List<Map<String, dynamic>> mmFailed = const [],
  int wrapExit = 0,
  String wrapStdout = '',
  int gatesExit = 0,
  String gatesStdout = '',
  List<String> added = const [],
  List<String> removed = const [],
}) {
  return ReportInputs(
    state: {
      'v8_available': v8Available,
      'max_major_version': maxMajor,
      'v7_current': v7Current,
      'v7_latest': v7Latest,
      'bump_date': '2026-06-13',
    },
    wrapCheckStdout: wrapStdout,
    wrapCheckExitCode: wrapExit,
    gatesStdout: gatesStdout,
    gatesExitCode: gatesExit,
    mmYamlSync: {
      'changed': mmChanged,
      'failed': mmFailed,
      'unchanged': 15 - mmChanged.length - mmFailed.length,
    },
    schemaDiff: {
      'added_resources': added,
      'removed_resources': removed,
    },
  );
}

void main() {
  group('buildV8Banner', () {
    test('absent when v8_available is false', () {
      expect(buildV8Banner(_baseInputs()), isNull);
    });

    test('present and mentions the major when v8_available is true', () {
      final out = buildV8Banner(_baseInputs(
        v8Available: true,
        maxMajor: '8',
      ));
      expect(out, isNotNull);
      expect(out!, contains('v8'));
      expect(out, contains('NEW MAJOR AVAILABLE'));
    });
  });

  group('buildSummaryTable', () {
    test('clean state shows all-green', () {
      final out = buildSummaryTable(_baseInputs());
      expect(out, contains('✅ clean'));
      expect(out, contains('✅ all pass'));
      expect(out, contains('✅ none'));
    });

    test('reflects wrap divergence and gate failures', () {
      final out = buildSummaryTable(_baseInputs(
        wrapExit: 1,
        gatesExit: 1,
        removed: ['google_zombie'],
      ));
      expect(out, contains('⚠️ divergence'));
      expect(out, contains('❌ failures'));
      expect(out, contains('⚠️ 1'));
    });
  });

  group('buildMmYamlSection', () {
    test('shows "no upstream changes" when nothing changed', () {
      final out = buildMmYamlSection(_baseInputs());
      expect(out, contains('no upstream changes'));
    });

    test('lists changed files with URL', () {
      final out = buildMmYamlSection(_baseInputs(
        mmChanged: [
          {
            'file': 'google_kms_crypto_key.yaml',
            'upstream_url':
                'https://raw.githubusercontent.com/x/y/main/mmv1/products/kms/CryptoKey.yaml',
          },
        ],
      ));
      expect(out, contains('google_kms_crypto_key.yaml'));
      expect(out, contains('CryptoKey.yaml'));
    });

    test('lists sync failures', () {
      final out = buildMmYamlSection(_baseInputs(
        mmFailed: [
          {'file': 'google_x.yaml', 'reason': 'HTTP 404'},
        ],
      ));
      expect(out, contains('Sync failures'));
      expect(out, contains('HTTP 404'));
    });
  });

  group('buildDivergenceSection', () {
    test('returns clean message on exit 0', () {
      final out = buildDivergenceSection(_baseInputs());
      expect(out, contains('byte-identical'));
    });

    test('truncates very long wrap stdout', () {
      final big = 'X' * 20000;
      final out = buildDivergenceSection(_baseInputs(
        wrapExit: 1,
        wrapStdout: big,
      ));
      expect(out.length, lessThan(20000 + 500));
      expect(out, contains('truncated'));
    });
  });

  group('buildGateSection', () {
    test('green when exit 0', () {
      expect(buildGateSection(_baseInputs()), contains('6/6 pass'));
    });
    test('shows failures when exit nonzero', () {
      final out = buildGateSection(_baseInputs(
        gatesExit: 1,
        gatesStdout: 'Gate 2 failed',
      ));
      expect(out, contains('failures'));
      expect(out, contains('Gate 2 failed'));
    });
  });

  group('buildNewResourceSection', () {
    test('clean message on empty', () {
      expect(buildNewResourceSection(_baseInputs()), contains('none'));
    });
    test('lists new resources + backlog note', () {
      final out = buildNewResourceSection(_baseInputs(
        added: [
          'google_cloud_run_v2_worker_pool',
          'google_dataform_repository'
        ],
      ));
      expect(out, contains('google_cloud_run_v2_worker_pool'));
      expect(out, contains('google_dataform_repository'));
      expect(out, contains('curation_backlog.yaml'));
    });
  });

  group('buildRemovedResourceSection', () {
    test('clean when empty', () {
      expect(buildRemovedResourceSection(_baseInputs()), contains('none'));
    });
    test('lists removed and warns', () {
      final out = buildRemovedResourceSection(_baseInputs(
        removed: ['google_legacy_resource'],
      ));
      expect(out, contains('google_legacy_resource'));
      expect(out, contains('wrapper will break'));
    });
  });

  group('buildReport (full integration)', () {
    test('all-clean report does not include v8 banner', () {
      final out = buildReport(_baseInputs());
      expect(out, isNot(contains('NEW MAJOR AVAILABLE')));
      expect(out, contains('# Schema bump'));
      expect(out, contains('Generated by'));
    });

    test('full-mix report contains every section', () {
      final out = buildReport(_baseInputs(
        v8Available: true,
        maxMajor: '8',
        v7Current: '7.31.0',
        v7Latest: '7.32.1',
        mmChanged: [
          {'file': 'google_kms_crypto_key.yaml', 'upstream_url': 'u'},
        ],
        wrapExit: 1,
        wrapStdout: 'mismatch in pubsub',
        gatesExit: 0,
        added: ['google_new_thing'],
        removed: [],
      ));
      expect(out, contains('NEW MAJOR AVAILABLE'));
      expect(out, contains('7.31.0 → **7.32.1**'));
      expect(out, contains('google_kms_crypto_key.yaml'));
      expect(out, contains('mismatch in pubsub'));
      expect(out, contains('google_new_thing'));
      expect(out, contains('Generated by'));
    });
  });
}
