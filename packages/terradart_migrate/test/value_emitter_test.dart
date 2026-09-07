import 'package:terradart_migrate/src/emit/value_emitter.dart';
import 'package:test/test.dart';

void main() {
  group('ValueEmitter.hasPlainSensitiveLeaf', () {
    // Mirrors synth: a sensitive nested leaf passes when it is a Terraform
    // template — a `${ ... }` or `%{ ... }` sequence anywhere — and is a
    // plain literal otherwise (escaped sequences are literal text).
    test('a template anywhere in the leaf is not plain', () {
      for (final leaf in [
        r'${var.key}',
        r'key-${var.suffix}',
        '%{ if var.x }a%{ else }b%{ endif }',
      ]) {
        expect(
          ValueEmitter.hasPlainSensitiveLeaf(
            {
              'cfg': {'key': leaf},
            },
            ['cfg', 'key'],
          ),
          isFalse,
          reason: leaf,
        );
      }
    });

    test('a literal leaf is plain, escapes included', () {
      for (final leaf in ['hunter2', r'$${not-a-template}', 42]) {
        expect(
          ValueEmitter.hasPlainSensitiveLeaf(
            {
              'cfg': {'key': leaf},
            },
            ['cfg', 'key'],
          ),
          isTrue,
          reason: '$leaf',
        );
      }
    });

    test('walks lists and reports an absent leaf as not plain', () {
      expect(
        ValueEmitter.hasPlainSensitiveLeaf(
          {
            'cfg': [
              {'key': r'${var.a}'},
              {'key': 'plain'},
            ],
          },
          ['cfg', 'key'],
        ),
        isTrue,
      );
      expect(
        ValueEmitter.hasPlainSensitiveLeaf(
          {'cfg': <String, Object?>{}},
          ['cfg', 'key'],
        ),
        isFalse,
      );
    });
  });
}
