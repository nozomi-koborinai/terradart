import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:test/test.dart';

void main() {
  group('Constraints', () {
    test('default values', () {
      const c = Constraints();
      expect(c.required, isFalse);
      expect(c.optional, isFalse);
      expect(c.computed, isFalse);
      expect(c.sensitive, isFalse);
      expect(c.writeOnly, isFalse);
      expect(c.forceNew, isFalse);
      expect(c.enumValues, isNull);
      expect(c.deprecationMessage, isNull);
    });

    test('optionalAndComputed convenience', () {
      const c = Constraints(optional: true, computed: true);
      expect(c.optionalAndComputed, isTrue);
      const c2 = Constraints(optional: true);
      expect(c2.optionalAndComputed, isFalse);
    });

    test('copyWith preserves provided fields and replaces overrides', () {
      const original = Constraints(required: true, sensitive: true);
      final updated = original.copyWith(forceNew: true);
      expect(updated.required, isTrue);
      expect(updated.sensitive, isTrue);
      expect(updated.forceNew, isTrue);
    });
  });
}
