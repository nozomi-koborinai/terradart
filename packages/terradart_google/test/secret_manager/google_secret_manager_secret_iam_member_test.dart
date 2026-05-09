import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  test('secret IAM member emits secret_id + role + member', () {
    final s = GoogleSecretManagerSecret(
      localName: 'api_key',
      secretId: TfArg.literal('api'),
      replication: Replication.auto(),
    );
    final iam = GoogleSecretManagerSecretIamMember(
      localName: 'api_key_reader',
      secretId: TfArg.ref(s.secretIdRef),
      role: TfArg.literal('roles/secretmanager.secretAccessor'),
      member: TfArg.literal('serviceAccount:reader@p.iam.gserviceaccount.com'),
    );
    expect(
      iam.argMap.keys.toList(),
      equals(<String>['secret_id', 'role', 'member']),
    );
    expect(
      iam.argMap['secret_id']!.toTfJson(),
      equals(r'${google_secret_manager_secret.api_key.secret_id}'),
    );
    expect(
      iam.terraformType,
      equals('google_secret_manager_secret_iam_member'),
    );
  });
}
