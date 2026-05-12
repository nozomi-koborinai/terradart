import 'package:terradart_codegen/src/codegen/wrap_init/clock.dart';
import 'package:test/test.dart';

void main() {
  group('Clock', () {
    test('SystemClock returns close-to-now DateTime', () {
      final clock = const SystemClock();
      final before = DateTime.now();
      final t = clock.now();
      final after = DateTime.now();
      expect(t.isBefore(before), isFalse);
      expect(t.isAfter(after), isFalse);
    });

    test('FixedClock returns its fixed instant verbatim', () {
      final fixed = DateTime.utc(2026, 1, 2, 3, 4, 5);
      final clock = FixedClock(fixed);
      expect(clock.now(), fixed);
      expect(clock.now(), fixed); // idempotent
    });
  });
}
