import 'package:terradart_google/cloud_run.dart';
import 'package:test/test.dart';

/// Wire-precision tests for the Cloud Run v2 sealed families.
///
/// Gate 6 (test/synth/encode_round_trip_test.dart) asserts every sealed
/// member encodes something well-formed; these tests pin the exact wire
/// shape and — the part Gate 6 cannot see — exactly-one-of exclusivity:
/// a variant must not leak its siblings' keys.
void main() {
  group('CloudRunV2ServiceTemplateContainersEnvSource', () {
    test('.value encodes env.value and nothing else', () {
      final env = CloudRunV2ServiceTemplateContainersEnv(
        name: .literal('LOG_LEVEL'),
        source: .value(.literal('info')),
      );
      expect(env.encode(), equals({'name': 'LOG_LEVEL', 'value': 'info'}));
    });

    test('.valueSource encodes value_source.secret_key_ref and no value', () {
      final env = CloudRunV2ServiceTemplateContainersEnv(
        name: .literal('DB_PASSWORD'),
        source: .valueSource(
          CloudRunV2ServiceTemplateContainersEnvValueSource(
            secretKeyRef:
                CloudRunV2ServiceTemplateContainersEnvValueSourceSecretKeyRef(
                  secret: .literal('db-pwd'),
                  version: .literal('latest'),
                ),
          ),
        ),
      );
      expect(
        env.encode(),
        equals({
          'name': 'DB_PASSWORD',
          'value_source': {
            'secret_key_ref': {'secret': 'db-pwd', 'version': 'latest'},
          },
        }),
      );
    });
  });

  group('CloudRunV2ServiceTemplateVolumesSource', () {
    test('every variant encodes exactly its own block key', () {
      final variants = <String, CloudRunV2ServiceTemplateVolumesSource>{
        'secret': .secret(
          CloudRunV2ServiceTemplateVolumesSecret(secret: .literal('s')),
        ),
        'cloud_sql_instance': .cloudSqlInstance(
          CloudRunV2ServiceTemplateVolumesCloudSqlInstance(
            instances: .literal(['p:r:i']),
          ),
        ),
        'empty_dir': .emptyDir(
          CloudRunV2ServiceTemplateVolumesEmptyDir(
            sizeLimit: .literal('500Mi'),
          ),
        ),
        'gcs': .gcs(
          CloudRunV2ServiceTemplateVolumesGcs(bucket: .literal('assets')),
        ),
        'nfs': .nfs(
          CloudRunV2ServiceTemplateVolumesNfs(
            server: .literal('10.0.0.2'),
            path: .literal('/exports'),
          ),
        ),
      };
      for (final entry in variants.entries) {
        final volume = CloudRunV2ServiceTemplateVolumes(
          name: .literal('v'),
          source: entry.value,
        );
        expect(
          volume.encode().keys.toList()..remove('name'),
          equals([entry.key]),
          reason: '${entry.value.runtimeType} must emit only ${entry.key}',
        );
      }
    });

    test('secret volume maps items to path/version/mode', () {
      final volume = CloudRunV2ServiceTemplateVolumes(
        name: .literal('certs'),
        source: .secret(
          CloudRunV2ServiceTemplateVolumesSecret(
            secret: .literal('certs'),
            defaultMode: .literal(292),
            items: [
              CloudRunV2ServiceTemplateVolumesSecretItems(
                path: .literal('tls.crt'),
                version: .literal('3'),
              ),
            ],
          ),
        ),
      );
      expect(
        volume.encode(),
        equals({
          'name': 'certs',
          'secret': {
            'default_mode': 292,
            'secret': 'certs',
            'items': [
              {'path': 'tls.crt', 'version': '3'},
            ],
          },
        }),
      );
    });
  });
}
