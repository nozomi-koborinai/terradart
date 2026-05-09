import 'package:terradart_core/src/duration_helper.dart';
import 'package:test/test.dart';

void main() {
  group('Duration.toTfDurationString', () {
    test('whole-second values', () {
      expect(const Duration(seconds: 5).toTfDurationString(), equals('5s'));
      expect(
        const Duration(days: 7).toTfDurationString(),
        equals('${7 * 24 * 3600}s'),
      );
      expect(Duration.zero.toTfDurationString(), equals('0s'));
    });

    test(
        'millisecond fragments throw (Terraform durations are integer seconds)',
        () {
      expect(
        () => const Duration(milliseconds: 1500).toTfDurationString(),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('microsecond fragments throw', () {
      expect(
        () => const Duration(microseconds: 500).toTfDurationString(),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('negative durations throw', () {
      expect(
        () => const Duration(seconds: -1).toTfDurationString(),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('large whole-second durations are accepted', () {
      // 1 hour
      expect(
        const Duration(hours: 1).toTfDurationString(),
        equals('3600s'),
      );
      // 30 days
      expect(
        const Duration(days: 30).toTfDurationString(),
        equals('${30 * 86400}s'),
      );
    });
  });
}
