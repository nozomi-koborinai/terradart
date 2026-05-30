import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:test/test.dart';

void main() {
  group('Constraints.computedOnly', () {
    test('true only when computed and neither optional nor required', () {
      expect(const Constraints(computed: true).computedOnly, isTrue);
    });

    test('false when optional+computed (a settable input with a default)', () {
      expect(
        const Constraints(optional: true, computed: true).computedOnly,
        isFalse,
      );
    });

    test('false when required', () {
      expect(
        const Constraints(required: true, computed: true).computedOnly,
        isFalse,
      );
    });

    test('false when plain optional input', () {
      expect(const Constraints(optional: true).computedOnly, isFalse);
    });

    test('false for the empty constraints', () {
      expect(const Constraints().computedOnly, isFalse);
    });
  });
}
