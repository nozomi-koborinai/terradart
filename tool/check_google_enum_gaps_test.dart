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
}) : super(
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

  test('a nested TfArg<List<String>> value set is a gap', () {
    expect(
      nestedEnumFieldIsGap(
        'final TfArg<List<String>>? protocols;',
        'protocols',
      ),
      isTrue,
    );
  });
}

Map<String, dynamic> _schema(Map<String, dynamic> attributes) => {
  'block': {'attributes': attributes},
};

String _gapKey(String gap) => gap.split('\t')[1];
