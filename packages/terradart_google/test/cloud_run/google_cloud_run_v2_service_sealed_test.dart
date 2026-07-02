import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_run.dart';
import 'package:test/test.dart';

/// Wire-precision tests for the Cloud Run v2 sealed families.
///
/// Gate 6 (test/synth/encode_round_trip_test.dart) asserts every sealed
/// member encodes something well-formed; these tests pin the exact wire
/// shape and — the part Gate 6 cannot see — exactly-one-of exclusivity:
/// a variant must not leak its siblings' keys.
void main() {
  group('CloudRunV2ServiceEnvVarSource', () {
    test('FromLiteral encodes env.value and nothing else', () {
      final env = CloudRunV2ServiceEnvVar(
        name: TfArg.literal('LOG_LEVEL'),
        source: CloudRunV2ServiceEnvVarFromLiteral(TfArg.literal('info')),
      );
      expect(env.toArgMap(), equals({'name': 'LOG_LEVEL', 'value': 'info'}));
    });

    test('FromSecret encodes value_source.secret_key_ref and no value', () {
      final env = CloudRunV2ServiceEnvVar(
        name: TfArg.literal('DB_PASSWORD'),
        source: CloudRunV2ServiceEnvVarFromSecret(
          secret: TfArg.literal('db-pwd'),
          version: TfArg.literal('latest'),
        ),
      );
      expect(
        env.toArgMap(),
        equals({
          'name': 'DB_PASSWORD',
          'value_source': [
            {
              'secret_key_ref': [
                {'secret': 'db-pwd', 'version': 'latest'},
              ],
            },
          ],
        }),
      );
    });

    test('null source emits the name alone', () {
      final env = CloudRunV2ServiceEnvVar(name: TfArg.literal('EMPTY'));
      expect(env.toArgMap(), equals({'name': 'EMPTY'}));
    });
  });

  group('CloudRunV2ServiceVolumeSource', () {
    test('every variant encodes exactly its own block key', () {
      final variants = <String, CloudRunV2ServiceVolumeSource>{
        'secret': CloudRunV2ServiceVolumeSecret(secret: TfArg.literal('s')),
        'cloud_sql_instance': CloudRunV2ServiceCloudSqlVolume(
          instances: TfArg.literal(['p:r:i']),
        ),
        'empty_dir': CloudRunV2ServiceEmptyDirVolume(
          sizeLimit: TfArg.literal('500Mi'),
        ),
        'gcs': CloudRunV2ServiceGcsVolume(bucket: TfArg.literal('assets')),
        'nfs': CloudRunV2ServiceNfsVolume(
          server: TfArg.literal('10.0.0.2'),
          path: TfArg.literal('/exports'),
        ),
      };
      for (final entry in variants.entries) {
        expect(
          entry.value.encode().keys.toList(),
          equals([entry.key]),
          reason: '${entry.value.runtimeType} must emit only ${entry.key}',
        );
      }
    });

    test('secret volume maps items to path/version/mode', () {
      final volume = CloudRunV2ServiceVolumeSecret(
        secret: TfArg.literal('certs'),
        defaultMode: TfArg.literal(292),
        items: [
          CloudRunV2ServiceSecretVolumeItem(
            path: TfArg.literal('tls.crt'),
            version: TfArg.literal('3'),
          ),
        ],
      );
      expect(
        volume.encode(),
        equals({
          'secret': [
            {
              'secret': 'certs',
              'default_mode': 292,
              'items': [
                {'path': 'tls.crt', 'version': '3'},
              ],
            },
          ],
        }),
      );
    });
  });
}
