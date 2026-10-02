import 'package:terradart_google/cloud_run.dart';
import 'package:test/test.dart';

/// Wire-precision tests for the Cloud Run v2 sealed families.
///
/// Gate 6 (test/synth/encode_round_trip_test.dart) asserts every sealed
/// member encodes something well-formed; these tests pin the exact wire
/// shape and — the part Gate 6 cannot see — exactly-one-of exclusivity:
/// a variant must not leak its siblings' keys.
void main() {
  group('CloudRunV2ServiceEnvSource', () {
    test('.value encodes env.value and nothing else', () {
      final env = const CloudRunV2ServiceEnv(
        name: .literal('LOG_LEVEL'),
        source: .value(.literal('info')),
      );
      expect(env.encode(), equals({'name': 'LOG_LEVEL', 'value': 'info'}));
    });

    test('.valueSource encodes value_source.secret_key_ref and no value', () {
      final env = CloudRunV2ServiceEnv(
        name: const .literal('DB_PASSWORD'),
        source: .valueSource(
          CloudRunV2ServiceValueSource(
            secretKeyRef: CloudRunV2ServiceSecretKeyRef(
              secret: .literal('db-pwd'),
              version: const .literal('latest'),
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

  group('CloudRunV2ServiceSource', () {
    test('every variant encodes exactly its own block key', () {
      final variants = <String, CloudRunV2ServiceSource>{
        'secret': .secret(CloudRunV2ServiceSecret(secret: .literal('s'))),
        'cloud_sql_instance': const .cloudSqlInstance(
          CloudRunV2ServiceCloudSqlInstance(instances: .literal(['p:r:i'])),
        ),
        'empty_dir': const .emptyDir(
          CloudRunV2ServiceEmptyDir(sizeLimit: .literal('500Mi')),
        ),
        'gcs': .gcs(CloudRunV2ServiceGcs(bucket: .literal('assets'))),
        'nfs': const .nfs(
          CloudRunV2ServiceNfs(
            server: .literal('10.0.0.2'),
            path: .literal('/exports'),
          ),
        ),
      };
      for (final entry in variants.entries) {
        final volume = CloudRunV2ServiceVolumes(
          name: const .literal('v'),
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
      final volume = CloudRunV2ServiceVolumes(
        name: const .literal('certs'),
        source: .secret(
          CloudRunV2ServiceSecret(
            secret: .literal('certs'),
            defaultMode: const .literal(292),
            items: [
              const CloudRunV2ServiceItems(
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
