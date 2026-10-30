import 'dart:io';

import 'package:test/test.dart';

import 'check_google_enum_gaps.dart';

void main() {
  test('a constructor split across lines is seen', () {
    final gaps = topLevelEnumGaps(
      stem: 'google_cloud_run_v2_instance',
      override: const {'outputDir': 'cloud_run'},
      resourceSchemas: {
        'google_cloud_run_v2_instance': _schema({
          'encryption_key_revocation_action': {
            'type': 'string',
            'optional': true,
            'description': 'Possible values: ["PREVENT_NEW", "SHUTDOWN"]',
          },
        }),
      },
      dataSourceSchemas: const {},
      generatedSource: '''
GoogleCloudRunV2Instance(
  super.localName, {
  TfArg<String>? encryptionKeyRevocationAction,
})
  : super(
''',
    );
    expect(gaps.map(_gapKey), [
      'google_cloud_run_v2_instance.encryption_key_revocation_action',
    ]);
  });

  test('a TfArg<List<String>> value-set input is seen', () {
    final gaps = topLevelEnumGaps(
      stem: 'google_netapp_volume',
      override: const {'outputDir': 'netapp'},
      resourceSchemas: {
        'google_netapp_volume': _schema({
          'protocols': {
            'type': ['list', 'string'],
            'required': true,
            'description':
                'Possible values: ["NFSV3", "NFSV4", "SMB", "ISCSI"]',
          },
        }),
      },
      dataSourceSchemas: const {},
      generatedSource: '''
GoogleNetappVolume(super.localName, {
  required TfArg<List<String>> protocols,
}) : super(
''',
    );
    expect(gaps.map(_gapKey), ['google_netapp_volume.protocols']);
  });

  test('a data-source value-set input is seen', () {
    final gaps = topLevelEnumGaps(
      stem: 'data_google_site_verification_token',
      override: const {'kind': 'data_source', 'outputDir': 'data'},
      resourceSchemas: const {},
      dataSourceSchemas: {
        'google_site_verification_token': _schema({
          'type': {
            'type': 'string',
            'required': true,
            'description': 'Possible values: ["INET_DOMAIN", "SITE"]',
          },
          'verification_method': {
            'type': 'string',
            'required': true,
            'description':
                'Possible values: ["ANALYTICS", "DNS_CNAME", "DNS_TXT", "FILE", "META", "TAG_MANAGER"]',
          },
        }),
      },
      generatedSource: '''
DataGoogleSiteVerificationToken(super.localName, {
  required TfArg<String> type,
  required TfArg<String> verificationMethod,
}) : super(
''',
    );
    expect(gaps.map(_gapKey), [
      'google_site_verification_token.type',
      'google_site_verification_token.verification_method',
    ]);
  });

  test('an optional computed value set is seen', () {
    final gaps = topLevelEnumGaps(
      stem: 'google_alloydb_instance',
      override: const {'outputDir': 'alloydb'},
      resourceSchemas: {
        'google_alloydb_instance': _schema({
          'availability_type': {
            'type': 'string',
            'optional': true,
            'computed': true,
            'description': 'Possible values: ["ZONAL", "REGIONAL"]',
          },
          'state': {
            'type': 'string',
            'computed': true,
            'description': 'Possible values: ["READY", "STOPPED"]',
          },
        }),
      },
      dataSourceSchemas: const {},
      generatedSource: '''
GoogleAlloydbInstance(
  super.localName, {
  TfArg<String>? availabilityType,
  TfArg<String>? state,
})
  : super(
''',
    );
    expect(gaps.map(_gapKey), ['google_alloydb_instance.availability_type']);
  });

  test('a sealed variant value set is seen', () {
    final gaps = topLevelEnumGaps(
      stem: 'google_app_engine_standard_app_version',
      override: const {'outputDir': 'app'},
      resourceSchemas: {
        'google_app_engine_standard_app_version': _schema({
          'app_engine_bundled_services': {
            'type': ['set', 'string'],
            'optional': true,
            'description':
                'Possible values: ["BUNDLED_SERVICE_TYPE_API", "BUNDLED_SERVICE_TYPE_MAIL"]',
          },
        }),
      },
      dataSourceSchemas: const {},
      generatedSource: '''
GoogleAppEngineStandardAppVersion(
  super.localName, {
  required TfArg<String> runtime,
})
  : super(

const factory AppEngineStandardAppVersionLegacyServices.appEngineBundledServices(
  TfArg<List<String>> appEngineBundledServices,
) = AppEngineStandardAppVersionLegacyServicesAppEngineBundledServices;
''',
    );
    expect(gaps.map(_gapKey), [
      'google_app_engine_standard_app_version.app_engine_bundled_services',
    ]);
  });

  test('a nested TfArg<List<String>> value set is a gap', () {
    expect(
      nestedEnumFieldIsGap(
        'final TfArg<List<String>>? protocols;',
        'protocols',
      ),
      isTrue,
    );
  });

  test('a Magic Modules value set the description omits is seen', () {
    final gaps = topLevelEnumGaps(
      stem: 'google_netapp_volume',
      override: const {'outputDir': 'netapp'},
      resourceSchemas: {
        'google_netapp_volume': _schema({
          'restricted_actions': {
            'type': ['list', 'string'],
            'optional': true,
            'description':
                'List of actions that are restricted on this volume.',
          },
        }),
      },
      dataSourceSchemas: const {},
      generatedSource: '''
GoogleNetappVolume(super.localName, {
  TfArg<List<String>>? restrictedActions,
}) : super(
''',
      mmValues: mmEnumValues('''
properties:
  - name: restrictedActions
    type: Array
    item_type:
      type: Enum
      enum_values:
        - DELETE
  - name: state
    type: Enum
    output: true
    enum_values:
      - READY
'''),
    );
    expect(gaps.map(_gapKey), ['google_netapp_volume.restricted_actions']);
  });

  test('a dartTypeOverrides entry does not hide a raw string input', () {
    final gaps = topLevelEnumGaps(
      stem: 'google_alloydb_backup',
      override: const {
        'outputDir': 'alloydb',
        'dartTypeOverrides': {'type': 'String'},
      },
      resourceSchemas: {
        'google_alloydb_backup': _schema({
          'type': {
            'type': 'string',
            'optional': true,
            'description': 'Possible values: ["ON_DEMAND", "AUTOMATED"]',
          },
        }),
      },
      dataSourceSchemas: const {},
      generatedSource: '''
GoogleAlloydbBackup(super.localName, {
  TfArg<String>? type,
}) : super(
''',
    );
    expect(gaps.map(_gapKey), ['google_alloydb_backup.type']);
  });

  test('a nested input takes its Magic Modules value set', () {
    final sites = collectNestedEnumSites(
      {
        'block_types': {
          'enrolled_services': {
            'block': {
              'attributes': {
                'enrollment_level': {
                  'type': 'string',
                  'optional': true,
                  'description': 'The enrollment level of the service.',
                },
              },
            },
          },
        },
      },
      mmValues: mmEnumValues('''
properties:
  - name: enrolledServices
    type: Array
    item_type:
      type: NestedObject
      properties:
        - name: enrollmentLevel
          type: Enum
          enum_values:
            - BLOCK_ALL
'''),
    );
    expect(
      [
        for (final s in sites)
          '${s.blockPath.join('.')}.${s.attr}: ${s.values}',
      ],
      ['enrolled_services.enrollment_level: [BLOCK_ALL]'],
    );
  });

  test('a fixed literal in a hand-written variant covers its value set', () {
    const source =
        "Map<String, Object?> encode() => {'array_config': 'CONTAINS'};";
    expect(encodesFixedValue(source, 'array_config', ['CONTAINS']), isTrue);
    expect(encodesFixedValue(source, 'array_config', ['OTHER']), isFalse);
  });

  group('the checker on the generated wrappers', () {
    const wrappers = [
      'alloydb/google_alloydb_backup.dart',
      'folder/google_folder_access_approval_settings.dart',
      'compute/google_compute_instance.dart',
    ];
    late Directory root;

    setUp(() {
      root = Directory.systemTemp.createTempSync('enum_gap_seed_');
      for (final wrapper in wrappers) {
        File('${root.path}/$wrapper')
          ..createSync(recursive: true)
          ..writeAsStringSync(
            File(
              'packages/terradart_google/lib/src/$wrapper',
            ).readAsStringSync(),
          );
      }
    });

    tearDown(() => root.deleteSync(recursive: true));

    ProcessResult check() => Process.runSync(Platform.resolvedExecutable, [
      'tool/check_google_enum_gaps.dart',
      '--strict-nested',
      '--generated-root',
      root.path,
    ]);

    void seed(String wrapper, Pattern typed, String raw) {
      final file = File('${root.path}/$wrapper');
      final source = file.readAsStringSync();
      final seeded = source.replaceAll(typed, raw);
      expect(seeded, isNot(source));
      file.writeAsStringSync(seeded);
    }

    test('passes on the committed wrappers', () {
      final result = check();
      expect(result.exitCode, 0, reason: '${result.stdout}');
    });

    test('fails on a seeded TfArg<String> value-set input', () {
      seed(
        wrappers[0],
        RegExp(r'AlloydbBackupType\?\s+type,'),
        'TfArg<String>? type,',
      );
      final result = check();
      expect(result.exitCode, 1);
      expect(result.stdout, contains('google_alloydb_backup.type'));
    });

    test('fails on a nested Magic Modules value set left a string', () {
      seed(
        wrappers[1],
        'final FolderAccessApprovalSettingsEnrollmentLevel? enrollmentLevel;',
        'final TfArg<String>? enrollmentLevel;',
      );
      final result = check();
      expect(result.exitCode, 1);
      expect(
        result.stdout,
        contains(
          'google_folder_access_approval_settings.enrolled_services'
          '.enrollment_level',
        ),
      );
    });

    test('fails on a One of ... or ... value set left a string', () {
      seed(
        wrappers[2],
        'final ComputeInstanceMode? mode;',
        'final TfArg<String>? mode;',
      );
      final result = check();
      expect(result.exitCode, 1);
      expect(result.stdout, contains('google_compute_instance.boot_disk.mode'));
      expect(
        result.stdout,
        contains('google_compute_instance.attached_disk.mode'),
      );
    });
  });
}

Map<String, dynamic> _schema(Map<String, dynamic> attributes) => {
  'block': {'attributes': attributes},
};

String _gapKey(String gap) => gap.split('\t')[1];
