import 'package:terradart_core/src/dart_source.dart';
import 'package:test/test.dart';

void main() {
  group('dartStringLiteral', () {
    test('uses a raw string when the value has no quote or newline', () {
      expect(dartStringLiteral('orders-prod'), equals("r'orders-prod'"));
      expect(dartStringLiteral(r'a\b$c'), equals(r"r'a\b$c'"));
      expect(dartStringLiteral(''), equals("r''"));
    });

    test('escapes a single quote in a non-raw string', () {
      expect(dartStringLiteral("user's-topic"), equals(r"'user\'s-topic'"));
    });

    test('escapes backslash and dollar once it leaves raw form', () {
      expect(
        dartStringLiteral(r"it's $5 \ done"),
        equals(r"'it\'s \$5 \\ done'"),
      );
    });

    test('escapes newline, carriage return, and tab', () {
      expect(dartStringLiteral('a\nb\rc\td'), equals(r"'a\nb\rc\td'"));
    });

    test('escapes other control characters as a unicode escape', () {
      final value = 'a${String.fromCharCode(1)}b';
      expect(dartStringLiteral(value), equals(r"'a\u{1}b'"));
    });
  });

  group('isDartIdentifier', () {
    test('accepts plain identifiers', () {
      expect(isDartIdentifier('ordersTopicId'), isTrue);
      expect(isDartIdentifier('_x1'), isTrue);
    });

    test('rejects reserved words, hyphens, dollars, digits first, empty', () {
      expect(isDartIdentifier('class'), isFalse);
      expect(isDartIdentifier('null'), isFalse);
      expect(isDartIdentifier('orders-topic'), isFalse);
      expect(isDartIdentifier(r'a$b'), isFalse);
      expect(isDartIdentifier('1abc'), isFalse);
      expect(isDartIdentifier(''), isFalse);
    });
  });

  group('isTerraformIdentifier', () {
    test('accepts letters, digits, underscore, hyphen', () {
      expect(isTerraformIdentifier('orders-topic_id'), isTrue);
      expect(isTerraformIdentifier('_x'), isTrue);
    });

    test('rejects digits first, spaces, dollars, empty', () {
      expect(isTerraformIdentifier('1abc'), isFalse);
      expect(isTerraformIdentifier('a b'), isFalse);
      expect(isTerraformIdentifier(r'a$b'), isFalse);
      expect(isTerraformIdentifier(''), isFalse);
    });
  });
}
