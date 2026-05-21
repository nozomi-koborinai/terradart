import 'package:terradart_google/src/firestore/firestore_fields.dart';
import 'package:test/test.dart';

void main() {
  group('FirestoreReference', () {
    test('stores the path verbatim', () {
      const ref = FirestoreReference(
        'projects/p/databases/(default)/documents/plans/premium',
      );
      expect(
        ref.path,
        equals('projects/p/databases/(default)/documents/plans/premium'),
      );
    });

    test('equality is by path', () {
      const a = FirestoreReference('projects/p/databases/(default)/documents/a');
      const b = FirestoreReference('projects/p/databases/(default)/documents/a');
      const c = FirestoreReference('projects/p/databases/(default)/documents/b');
      expect(a, equals(b));
      expect(a, isNot(equals(c)));
    });
  });

  group('FirestoreGeoPoint', () {
    test('stores latitude + longitude', () {
      const p = FirestoreGeoPoint(latitude: 35.6, longitude: 139.7);
      expect(p.latitude, equals(35.6));
      expect(p.longitude, equals(139.7));
    });

    test('equality is by latitude + longitude', () {
      const a = FirestoreGeoPoint(latitude: 35.6, longitude: 139.7);
      const b = FirestoreGeoPoint(latitude: 35.6, longitude: 139.7);
      const c = FirestoreGeoPoint(latitude: 0.0, longitude: 0.0);
      expect(a, equals(b));
      expect(a, isNot(equals(c)));
    });
  });
}
