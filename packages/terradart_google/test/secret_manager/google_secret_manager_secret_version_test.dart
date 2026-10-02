// Test builds the @Deprecated plaintext payload to verify it's still a
// working code path; suppress the deprecation warning at the test boundary
// only.
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: invalid_use_of_protected_member
// Tests verify the codegen-emitted sensitiveFields getter value; reading a
// @protected getter from test scope is the intended cross-boundary pattern
// for wrapper integration tests.

import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

import '../_helpers.dart';

void main() {
  test('write-only payload: secret_data_wo + secret_data_wo_version', () {
    final secret = GoogleSecretManagerSecret(
      'api_key',
      secretId: const TfArg.literal('api'),
      replication: const .auto(SecretManagerSecretAuto()),
    );
    final v = GoogleSecretManagerSecretVersion(
      'api_key_v1',
      secret: secret.ref,
      payload: SecretManagerSecretVersionWriteOnlyPayload(
        secretDataWo: secret.id,
        secretDataWoVersion: const TfArg.literal('1'),
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
      'v',
      secret: RefTo.literal('projects/p/secrets/s'),
      payload: const SecretManagerSecretVersionPlaintextPayload(
        TfArg.literal('legacy-value'),
      ),
    );
    expect(v.sensitiveFields, equals(<String>{'secret_data'}));
  });

  test('plaintext payload still works (with deprecation)', () {
    final v = GoogleSecretManagerSecretVersion(
      'v',
      secret: RefTo.literal('projects/p/secrets/s'),
      payload: const SecretManagerSecretVersionPlaintextPayload(
        TfArg.literal('legacy-value'),
      ),
    );
    expect(v.argMap.keys, isNot(contains('secret_data_wo')));
    expect(v.argMap['secret_data']!.toTfJson(), equals('legacy-value'));
  });

  group('payload sensitivity at synth time', () {
    GoogleSecretManagerSecretVersion plaintext(TfArg<String> data) =>
        GoogleSecretManagerSecretVersion(
          'v',
          secret: RefTo.literal('projects/p/secrets/s'),
          payload: SecretManagerSecretVersionPlaintextPayload(data),
        );

    test('a literal secret_data fails synth with a SensitiveLiteral issue', () {
      final stack = TestStack(providers: [const GoogleProvider(project: 'p')]);
      stack.add(plaintext(const TfArg.literal('legacy-value')));
      expect(
        () => stack.synth(),
        throwsA(
          isA<SynthException>().having(
            (e) => e.issues.single,
            'issue',
            isA<SensitiveLiteral>().having(
              (i) => i.field,
              'field',
              'secret_data',
            ),
          ),
        ),
      );
    });

    test('a variable secret_data synths to a var reference', () {
      final stack = TestStack(providers: [const GoogleProvider(project: 'p')]);
      final secretValue = stack.variable<String>(
        'secret_value',
        sensitive: true,
      );
      stack.add(plaintext(secretValue));
      final resource =
          ((stack.synth().tfJson['resource']
                      as Map)['google_secret_manager_secret_version']
                  as Map)['v']
              as Map;
      expect(resource['secret_data'], equals(r'${var.secret_value}'));
    });

    test('an undeclared variable in the write-only payload fails synth', () {
      final stack = TestStack(providers: [const GoogleProvider(project: 'p')]);
      stack.add(
        GoogleSecretManagerSecretVersion(
          'v',
          secret: RefTo.literal('projects/p/secrets/s'),
          payload: SecretManagerSecretVersionWriteOnlyPayload(
            secretDataWo: TfArg.variable('missing'),
            secretDataWoVersion: const TfArg.literal('1'),
          ),
        ),
      );
      expect(() => stack.synth(), throwsA(anything));
    });
  });

  test('the payload is exhaustive over the two variants', () {
    String key(SecretManagerSecretVersionPayload p) => switch (p) {
      SecretManagerSecretVersionWriteOnlyPayload() => 'secret_data_wo',
      SecretManagerSecretVersionPlaintextPayload() => 'secret_data',
    };
    expect(
      key(
        const SecretManagerSecretVersionWriteOnlyPayload(
          secretDataWo: TfArg.literal('s'),
          secretDataWoVersion: TfArg.literal('1'),
        ),
      ),
      'secret_data_wo',
    );
  });
}
