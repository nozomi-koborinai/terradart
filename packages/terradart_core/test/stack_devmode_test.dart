import 'package:terradart_core/src/stack.dart';
import 'package:test/test.dart';

import 'helpers/fake_resources.dart';

void main() {
  group('Stack.devMode', () {
    test('defaults to false', () {
      final stack = TestStack(providers: const []);
      expect(stack.devMode, isFalse);
    });

    test('explicit true is exposed via getter', () {
      final stack = TestStack(providers: const [], devMode: true);
      expect(stack.devMode, isTrue);
    });
  });
}
