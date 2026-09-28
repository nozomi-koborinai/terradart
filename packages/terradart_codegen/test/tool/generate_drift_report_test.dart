import 'package:test/test.dart';

import '../../../../tool/generate_drift_report.dart';

ReportInputs _baseInputs({
  bool newMajor = false,
  String current = '7.31.0',
  String latest = '7.31.0',
  String maxMajor = '7',
  List<Map<String, dynamic>> mmChanged = const [],
  List<Map<String, dynamic>> mmFailed = const [],
  int wrapExit = 0,
  String wrapStdout = '',
  int gatesExit = 0,
  String gatesStdout = '',
  List<String> added = const [],
  List<String> removed = const [],
  bool withMm = true,
  ReportLane lane = ReportLane.google,
  Map<String, dynamic>? schemaDiff,
}) {
  return ReportInputs(
    state: {
      'new_major_available': newMajor,
      'max_major_version': maxMajor,
      'major': 7,
      'current': current,
      'latest': latest,
      'bump_date': '2026-06-13',
    },
    wrapCheckStdout: wrapStdout,
    wrapCheckExitCode: wrapExit,
    gatesStdout: gatesStdout,
    gatesExitCode: gatesExit,
    mmYamlSync: withMm
        ? {
            'changed': mmChanged,
            'failed': mmFailed,
            'unchanged': 15 - mmChanged.length - mmFailed.length,
          }
        : null,
    schemaDiff: schemaDiff ??
        {
          'added_resources': added,
          'removed_resources': removed,
        },
    lane: lane,
  );
}

void main() {
  group('buildNewMajorBanner', () {
    test('absent when no new major is available', () {
      expect(buildNewMajorBanner(_baseInputs()), isNull);
    });

    test('present and mentions the major when one is available', () {
      final out = buildNewMajorBanner(_baseInputs(
        newMajor: true,
        maxMajor: '8',
      ));
      expect(out, isNotNull);
      expect(out!, contains('`hashicorp/google` v8'));
      expect(out, contains('tracking v7'));
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
      final out = buildMmYamlSection(_baseInputs())!;
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
      ))!;
      expect(out, contains('google_kms_crypto_key.yaml'));
      expect(out, contains('CryptoKey.yaml'));
    });

    test('lists sync failures', () {
      final out = buildMmYamlSection(_baseInputs(
        mmFailed: [
          {'file': 'google_x.yaml', 'reason': 'HTTP 404'},
        ],
      ))!;
      expect(out, contains('Sync failures'));
      expect(out, contains('HTTP 404'));
    });

    test('absent on a lane without Magic Modules YAML', () {
      expect(buildMmYamlSection(_baseInputs(withMm: false)), isNull);
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
      expect(
          buildGateSection(_baseInputs()), contains('Universal QA gates pass'));
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
      expect(out, contains('wrappers will break'));
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
        newMajor: true,
        maxMajor: '8',
        current: '7.31.0',
        latest: '7.32.1',
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
  group('non-google lane', () {
    const aws = ReportLane(
      name: 'aws',
      source: 'hashicorp/aws',
      schemaDir: 'packages/terradart_codegen/test/fixtures/wrap/source_aws',
    );
    ReportInputs awsInputs({
      List<String> addedData = const [],
      List<String> removedData = const [],
    }) =>
        _baseInputs(
          withMm: false,
          lane: aws,
          current: '6.66.0',
          latest: '6.67.0',
          schemaDiff: {
            'added_resources': <String>[],
            'removed_resources': <String>[],
            'added_data_sources': addedData,
            'removed_data_sources': removedData,
          },
        );

    test('titles the report with the lane source and omits MM', () {
      final out = buildReport(awsInputs());
      expect(out, contains('# Schema bump (hashicorp/aws)'));
      expect(out, isNot(contains('magic-modules')));
      expect(out, isNot(contains('MM YAML')));
      expect(out, contains('source_aws/schema.json'));
      expect(out, contains('## ✅ Lane QA gates (aws) pass'));
    });

    test('summary uses the lane prefix and counts data sources', () {
      final out = buildSummaryTable(awsInputs(addedData: ['aws_new_thing']));
      expect(out, contains('New `aws_*` resources | **0 detected**'));
      expect(out, contains('New `aws_*` data sources | **1 detected**'));
      expect(out, contains('6.66.0 → **6.67.0**'));
    });

    test('data-source removals block auto-merge, additions do not', () {
      final blockers = autoMergeBlockers(awsInputs(
        addedData: ['aws_a'],
        removedData: ['aws_b'],
      ));
      expect(blockers, contains('1 curated data source(s) removed upstream'));
      expect(blockers.where((b) => b.contains('new')), isEmpty);
    });

    test('a leftover-generator lane covers new factories in its example', () {
      final i = ReportInputs(
        state: const {'bump_date': '2026-10-05'},
        wrapCheckStdout: '',
        wrapCheckExitCode: 0,
        gatesStdout: '',
        gatesExitCode: 0,
        schemaDiff: const {
          'added_resources': ['aws_x'],
          'removed_resources': <String>[],
          'added_data_sources': ['aws_x'],
          'removed_data_sources': <String>[],
        },
        newFactories: const {
          'example_generator': 'tool/generate_aws_leftover_example.dart',
          'factories': [
            {'tf_type': 'aws_x', 'class_name': 'AwsX', 'kind': 'resource'},
          ],
        },
        lane: aws,
      );
      final out = buildNewResourceSection(i);
      expect(out, contains('- `aws_x` → `AwsX`'));
      expect(
        out,
        contains('- `aws_x` (data source) — no factory generated'),
      );
      expect(out, contains('leftover example generator'));
    });

    test('a pr-only lane never auto-merges', () {
      const cf = ReportLane(
        name: 'cloudflare',
        source: 'cloudflare/cloudflare',
        schemaDir: 's',
        prOnly: true,
      );
      final i = _baseInputs(withMm: false, lane: cf);
      expect(
        autoMergeBlockers(i).first,
        'cloudflare is a pr-only lane (bump.mode in tool/providers.yaml): '
        'its bumps never auto-merge',
      );
      expect(buildReport(i), contains('## ✋ Needs a maintainer'));
    });

    test('lane coordinates come from tool/providers.yaml', () {
      const yaml = '''
providers:
  aws:
    source: hashicorp/aws
    schemaDir: packages/x/source_aws
    bump: {mode: auto}
  cloudflare:
    source: cloudflare/cloudflare
    schemaDir: packages/x/source_cloudflare
    bump: {mode: pr-only}
''';
      final lane = ReportLane.fromProviders(yaml, 'aws');
      expect(lane.prOnly, isFalse);
      expect(ReportLane.fromProviders(yaml, 'cloudflare').prOnly, isTrue);
      expect(lane.typePrefix, 'aws_');
      expect(lane.gatesLabel, 'lane QA gates (aws)');
      expect(
        () => ReportLane.fromProviders(yaml, 'nope'),
        throwsFormatException,
      );
    });
  });
}
