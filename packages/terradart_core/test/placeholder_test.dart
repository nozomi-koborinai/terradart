import 'package:terradart_core/src/placeholder.dart';
import 'package:test/test.dart';

void main() {
  group('placeholderFor', () {
    test('String -> empty string', () {
      expect(placeholderFor<String>(), '');
    });

    test('int -> 0', () {
      expect(placeholderFor<int>(), 0);
    });

    test('double -> 0.0', () {
      expect(placeholderFor<double>(), 0.0);
    });

    test('bool -> false', () {
      expect(placeholderFor<bool>(), false);
    });

    test('List<String> -> const empty list', () {
      expect(placeholderFor<List<String>>(), isEmpty);
      expect(placeholderFor<List<String>>(), isA<List<String>>());
    });

    test('Map<String, String> -> const empty map', () {
      expect(placeholderFor<Map<String, String>>(), isEmpty);
      expect(placeholderFor<Map<String, String>>(), isA<Map<String, String>>());
    });

    test('unsupported type throws UnsupportedError', () {
      expect(
        () => placeholderFor<DateTime>(),
        throwsA(isA<UnsupportedError>()),
      );
    });
  });
}
