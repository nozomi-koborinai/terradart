import 'package:terradart_core/src/synth/sensitive_literal_error.dart';
import 'package:test/test.dart';

void main() {
  group('SensitiveLiteralError', () {
    test('message includes resource address, field path, alternatives', () {
      final err = SensitiveLiteralError(
        resourceAddress: 'google_sql_user.coffee_user',
        fieldPath: 'password',
      );

      final msg = err.toString();
      expect(msg, contains('google_sql_user.coffee_user'));
      expect(msg, contains('password'));
      expect(msg, contains('TfArg.variable'));
      expect(msg, contains('_wo'));
    });

    test('nested fieldPath is preserved in message', () {
      final err = SensitiveLiteralError(
        resourceAddress: 'google_storage_bucket.assets',
        fieldPath: 'customer_encryption.encryption_key',
      );

      expect(
        err.toString(),
        contains('customer_encryption.encryption_key'),
      );
    });

    test('is a subclass of StateError', () {
      final err = SensitiveLiteralError(
        resourceAddress: 'x.y',
        fieldPath: 'z',
      );
      expect(err, isA<StateError>());
    });
  });
}
