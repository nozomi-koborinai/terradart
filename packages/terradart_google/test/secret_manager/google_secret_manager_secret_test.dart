import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  group('Replication', () {
    test('Replication.auto encodes empty auto block', () {
      expect(
        Replication.auto().encode(),
        equals({'auto': <String, Object?>{}}),
      );
    });

    test('Replication.userManaged with two replicas', () {
      expect(
        Replication.userManaged(const [
          Replica(location: TfArgLiteral<String>('us-central1')),
          Replica(location: TfArgLiteral<String>('us-east1')),
        ]).encode(),
        equals({
          'user_managed': {
            'replicas': [
              {'location': 'us-central1'},
              {'location': 'us-east1'},
            ],
          },
        }),
      );
    });

    test('Replication.auto with CMEK', () {
      expect(
        Replication.auto(
          customerManagedEncryption: const CustomerManagedEncryption(
            kmsKeyName: TfArgLiteral<String>(
              'projects/p/locations/l/keyRings/r/cryptoKeys/k',
            ),
          ),
        ).encode(),
        equals({
          'auto': {
            'customer_managed_encryption': {
              'kms_key_name': 'projects/p/locations/l/keyRings/r/cryptoKeys/k',
            },
          },
        }),
      );
    });
  });

  group('GoogleSecretManagerSecret', () {
    test('secret with auto replication minimal', () {
      final s = GoogleSecretManagerSecret(
        localName: 'api_key',
        secretId: TfArg.literal('orders-api-key'),
        replication: Replication.auto(),
      );
      expect(
        s.argMap.keys.toList(),
        equals(<String>['secret_id', 'replication']),
      );
      expect(s.argMap['secret_id']!.toTfJson(), equals('orders-api-key'));
      expect(
        s.argMap['replication']!.toTfJson(),
        equals({'auto': <String, Object?>{}}),
      );
    });

    test('secret with rotation references topic.id', () {
      final notifyTopic = GooglePubsubTopic(
        localName: 'rotation',
        name: TfArg.literal('rotation'),
      );
      final s = GoogleSecretManagerSecret(
        localName: 'rotated',
        secretId: TfArg.literal('rotated'),
        replication: Replication.auto(),
        topics: [SecretTopic(name: TfArg.ref(notifyTopic.id))],
        rotation: const Rotation(
          nextRotationTime: TfArgLiteral<String>('2026-06-01T00:00:00Z'),
          rotationPeriod: TfArgLiteral<String>('86400s'),
        ),
      );
      final topicsJson = s.argMap['topics']!.toTfJson() as List<dynamic>;
      expect(
        (topicsJson.first as Map)['name'],
        equals(r'${google_pubsub_topic.rotation.id}'),
      );
      expect(
        s.argMap['rotation']!.toTfJson(),
        equals({
          'next_rotation_time': '2026-06-01T00:00:00Z',
          'rotation_period': '86400s',
        }),
      );
    });

    test('secretIdRef + nameRef + id interpolations', () {
      final s = GoogleSecretManagerSecret(
        localName: 'api_key',
        secretId: TfArg.literal('orders-api-key'),
        replication: Replication.auto(),
      );
      expect(
        s.secretIdRef.interpolation,
        equals(r'${google_secret_manager_secret.api_key.secret_id}'),
      );
      expect(
        s.nameRef.interpolation,
        equals(r'${google_secret_manager_secret.api_key.name}'),
      );
      expect(
        s.id.interpolation,
        equals(r'${google_secret_manager_secret.api_key.id}'),
      );
    });
  });
}
