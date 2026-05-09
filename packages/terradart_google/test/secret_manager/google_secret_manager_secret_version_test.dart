// Test calls @Deprecated `secretData` to verify it's still a working code
// path; suppress the deprecation warning at the test boundary only.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  test('write-only entry point: secretDataWo + secretDataWoVersion', () {
    final secret = GoogleSecretManagerSecret(
      localName: 'api_key',
      secretId: TfArg.literal('api'),
      replication: Replication.auto(),
    );
    final v = GoogleSecretManagerSecretVersion(
      localName: 'api_key_v1',
      secret: TfArg.ref(secret.id),
      secretDataWo: TfArg.literal('plain-secret'),
      secretDataWoVersion: TfArg.literal(1),
    );
    expect(
      v.argMap.keys.toList(),
      equals(<String>['secret', 'secret_data_wo', 'secret_data_wo_version']),
    );
    expect(
      v.argMap['secret']!.toTfJson(),
      equals(r'${google_secret_manager_secret.api_key.id}'),
    );
    expect(v.argMap['secret_data_wo']!.toTfJson(), equals('plain-secret'));
    expect(v.argMap['secret_data_wo_version']!.toTfJson(), equals(1));
  });

  test('\$sensitiveFields contains secret_data per provider schema', () {
    // The sensitive set is machine-derived from
    // the provider schema. The hashicorp/google v7.31.0 schema flags only
    // `secret_data` as sensitive (`secret_data_wo` is `write_only`, not
    // sensitive). An earlier hand-rolled stub incorrectly bundled both;
    // factories now read the codegen-emitted const which mirrors the real
    // schema. Users who want belt-and-suspenders masking on
    // `secret_data_wo` can overlay an `@Sensitive` annotation in future.
    final v = GoogleSecretManagerSecretVersion(
      localName: 'v',
      secret: TfArg.literal('projects/p/secrets/s'),
    );
    expect(v.$sensitiveFields, equals(<String>{'secret_data'}));
  });

  test('legacy secretData path still works (with deprecation)', () {
    final v = GoogleSecretManagerSecretVersion(
      localName: 'v',
      secret: TfArg.literal('projects/p/secrets/s'),
      secretData: TfArg.literal('legacy-value'),
    );
    expect(v.argMap['secret_data']!.toTfJson(), equals('legacy-value'));
  });
}
