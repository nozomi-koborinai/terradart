// Test builds the @Deprecated plaintext payload to verify it's still a
// working code path; suppress the deprecation warning at the test boundary
// only.
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: invalid_use_of_protected_member
// Tests verify the codegen-emitted sensitiveFields getter value; reading a
// @protected getter from test scope is the intended cross-boundary pattern
// for wrapper integration tests.

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  test('write-only payload: secret_data_wo + secret_data_wo_version', () {
    final secret = GoogleSecretManagerSecret(
      localName: 'api_key',
      secretId: TfArg.literal('api'),
      replication: SecretManagerSecretReplication.auto(),
    );
    final v = GoogleSecretManagerSecretVersion(
      localName: 'api_key_v1',
      secret: TfArg.ref(secret.id),
      payload: SecretManagerSecretVersionWriteOnlyPayload(
        secretDataWo: TfArg.ref(secret.id),
        secretDataWoVersion: TfArg.literal('1'),
      ),
    );
    expect(
      v.argMap.keys.toList(),
      equals(<String>['secret', 'secret_data_wo', 'secret_data_wo_version']),
    );
    expect(
      v.argMap['secret']!.toTfJson(),
      equals(r'${google_secret_manager_secret.api_key.id}'),
    );
    expect(
      v.argMap['secret_data_wo']!.toTfJson(),
      equals(r'${google_secret_manager_secret.api_key.id}'),
    );
    expect(v.argMap['secret_data_wo_version']!.toTfJson(), equals('1'));
  });

  test('sensitiveFields contains secret_data per provider schema', () {
    // The sensitive set is machine-derived from the provider schema, which
    // flags only `secret_data` as sensitive (`secret_data_wo` is
    // `write_only`, not sensitive).
    final v = GoogleSecretManagerSecretVersion(
      localName: 'v',
      secret: TfArg.literal('projects/p/secrets/s'),
      payload: SecretManagerSecretVersionPlaintextPayload(
        secretData: TfArg.literal('legacy-value'),
      ),
    );
    expect(v.sensitiveFields, equals(<String>{'secret_data'}));
  });

  test('plaintext payload still works (with deprecation)', () {
    final v = GoogleSecretManagerSecretVersion(
      localName: 'v',
      secret: TfArg.literal('projects/p/secrets/s'),
      payload: SecretManagerSecretVersionPlaintextPayload(
        secretData: TfArg.literal('legacy-value'),
      ),
    );
    expect(v.argMap.keys, isNot(contains('secret_data_wo')));
    expect(v.argMap['secret_data']!.toTfJson(), equals('legacy-value'));
  });

  test('the payload is exhaustive over the two variants', () {
    String key(SecretManagerSecretVersionPayload p) => switch (p) {
          SecretManagerSecretVersionWriteOnlyPayload() => 'secret_data_wo',
          SecretManagerSecretVersionPlaintextPayload() => 'secret_data',
        };
    expect(
      key(SecretManagerSecretVersionWriteOnlyPayload(
        secretDataWo: TfArg.literal('s'),
        secretDataWoVersion: TfArg.literal('1'),
      )),
      'secret_data_wo',
    );
  });
}
