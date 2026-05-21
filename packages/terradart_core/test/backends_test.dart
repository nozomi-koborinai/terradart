import 'package:terradart_core/src/backends.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:test/test.dart';

void main() {
  group('LocalBackend', () {
    test('backendType is "local"', () {
      const backend = LocalBackend();
      expect(backend.backendType, equals('local'));
    });

    test('toTfJson with no path returns empty map', () {
      const backend = LocalBackend();
      expect(backend.toTfJson(), equals(<String, Object?>{}));
    });

    test('toTfJson with explicit path emits path key', () {
      const backend = LocalBackend(path: 'state/terraform.tfstate');
      expect(
        backend.toTfJson(),
        equals(<String, Object?>{'path': 'state/terraform.tfstate'}),
      );
    });

    test('implements StackBackend interface', () {
      const StackBackend backend = LocalBackend();
      expect(backend.backendType, equals('local'));
    });
  });

  group('GcsBackend (regression)', () {
    test('backendType is "gcs"', () {
      const backend = GcsBackend(bucket: 'my-state');
      expect(backend.backendType, equals('gcs'));
    });
  });
}
