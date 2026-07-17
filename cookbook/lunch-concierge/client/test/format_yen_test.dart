import 'package:flutter_test/flutter_test.dart';
import 'package:lunch_concierge_client/theme.dart';

void main() {
  group('formatYen', () {
    test('formats zero', () {
      expect(formatYen(0), '¥0');
    });

    test('formats amounts under one thousand without commas', () {
      expect(formatYen(999), '¥999');
    });

    test('inserts a thousands separator', () {
      expect(formatYen(1200), '¥1,200');
    });

    test('inserts separators for larger amounts', () {
      expect(formatYen(1000000), '¥1,000,000');
    });
  });
}
