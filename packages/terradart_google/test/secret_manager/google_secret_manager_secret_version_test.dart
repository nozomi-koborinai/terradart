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

  test(
    'sensitiveFields contains only secret_data (secret_data_wo is write_only, not sensitive, in provider schema)',
    () {
      final v = GoogleSecretManagerSecretVersion(
        'v',
        secret: RefTo.literal('projects/p/secrets/s'),
        payload: SecretManagerSecretVersionPlaintextPayload(
          .variable('legacy_value'),
        ),
      );
      expect(v.sensitiveFields, equals(<String>{'secret_data'}));
    },
  );

  test('plaintext payload still works (with deprecation)', () {
    final v = GoogleSecretManagerSecretVersion(
      'v',
      secret: RefTo.literal('projects/p/secrets/s'),
      payload: SecretManagerSecretVersionPlaintextPayload(
        .variable('legacy_value'),
      ),
    );
    expect(v.argMap.keys, isNot(contains('secret_data_wo')));
    expect(v.argMap['secret_data']!.toTfJson(), equals(r'${var.legacy_value}'));
  });

  group('payload sensitivity at synth time', () {
    GoogleSecretManagerSecretVersion plaintext(Sensitive<String> data) =>
        GoogleSecretManagerSecretVersion(
          'v',
          secret: RefTo.literal('projects/p/secrets/s'),
          payload: SecretManagerSecretVersionPlaintextPayload(data),
        );

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
