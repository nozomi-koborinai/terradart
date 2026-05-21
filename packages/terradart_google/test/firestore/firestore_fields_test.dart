import 'dart:typed_data';

import 'package:terradart_core/terradart_core.dart';
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
      const a =
          FirestoreReference('projects/p/databases/(default)/documents/a');
      const b =
          FirestoreReference('projects/p/databases/(default)/documents/a');
      const c =
          FirestoreReference('projects/p/databases/(default)/documents/b');
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

  group('FirestoreFields.encode — primitives', () {
    test('null → nullValue', () {
      final out = FirestoreFields.encode({'k': null});
      expect(
        out.toTfJson(),
        equals('{"k":{"nullValue":null}}'),
      );
    });

    test('bool → booleanValue', () {
      final out = FirestoreFields.encode({'enabled': true, 'disabled': false});
      expect(
        out.toTfJson(),
        equals(
            '{"enabled":{"booleanValue":true},"disabled":{"booleanValue":false}}'),
      );
    });

    test('int → integerValue (string-encoded for 64-bit precision)', () {
      final out = FirestoreFields.encode({'count': 42});
      expect(
        out.toTfJson(),
        equals('{"count":{"integerValue":"42"}}'),
      );
    });

    test('int near 2^53 boundary stays precise as string', () {
      final big = 9007199254740993; // 2^53 + 1, loses precision as JSON number
      final out = FirestoreFields.encode({'big': big});
      expect(
        out.toTfJson(),
        contains('"integerValue":"9007199254740993"'),
      );
    });

    test('double → doubleValue', () {
      final out = FirestoreFields.encode({'price': 19.99});
      expect(
        out.toTfJson(),
        equals('{"price":{"doubleValue":19.99}}'),
      );
    });

    test('String → stringValue', () {
      final out = FirestoreFields.encode({'name': 'premium'});
      expect(
        out.toTfJson(),
        equals('{"name":{"stringValue":"premium"}}'),
      );
    });

    test('String with quotes / unicode encoded correctly', () {
      final out = FirestoreFields.encode({'name': 'こんにちは "world"'});
      final encoded = out.toTfJson() as String;
      expect(encoded, contains('"stringValue"'));
    });
  });

  group('FirestoreFields.encode — DateTime / bytes', () {
    test('DateTime → timestampValue (UTC ISO 8601)', () {
      final dt = DateTime.utc(2024, 1, 15, 10, 30, 0);
      final out = FirestoreFields.encode({'created_at': dt});
      expect(
        out.toTfJson(),
        equals('{"created_at":{"timestampValue":"2024-01-15T10:30:00.000Z"}}'),
      );
    });

    test('non-UTC DateTime converted to UTC', () {
      final localTime = DateTime(2024, 1, 15, 19, 30, 0);
      final out = FirestoreFields.encode({'created_at': localTime});
      final encoded = out.toTfJson() as String;
      expect(encoded, contains('"timestampValue"'));
      expect(encoded, contains('Z"'));
    });

    test('Uint8List → bytesValue (base64)', () {
      final bytes = Uint8List.fromList([0x48, 0x65, 0x6c, 0x6c, 0x6f]);
      final out = FirestoreFields.encode({'payload': bytes});
      expect(
        out.toTfJson(),
        equals('{"payload":{"bytesValue":"SGVsbG8="}}'),
      );
    });
  });

  group('FirestoreFields.encode — collections', () {
    test('List → arrayValue with values recursively encoded', () {
      final out = FirestoreFields.encode({
        'features': ['analytics', 'sso'],
      });
      expect(
        out.toTfJson(),
        equals(
          '{"features":{"arrayValue":{"values":'
          '[{"stringValue":"analytics"},{"stringValue":"sso"}]}}}',
        ),
      );
    });

    test('mixed-type List → each element gets its own type wrapper', () {
      final out = FirestoreFields.encode({
        'mixed': ['hello', 42, true],
      });
      expect(
        out.toTfJson(),
        equals(
          '{"mixed":{"arrayValue":{"values":'
          '[{"stringValue":"hello"},{"integerValue":"42"},{"booleanValue":true}]}}}',
        ),
      );
    });

    test('Map → mapValue with fields recursively encoded', () {
      final out = FirestoreFields.encode({
        'metadata': {'created_by': 'system', 'version': 2},
      });
      expect(
        out.toTfJson(),
        equals(
          '{"metadata":{"mapValue":{"fields":'
          '{"created_by":{"stringValue":"system"},"version":{"integerValue":"2"}}}}}',
        ),
      );
    });

    test('deeply nested map + list', () {
      final out = FirestoreFields.encode({
        'tier': 'pro',
        'capabilities': {
          'limits': {'requests_per_hour': 10000},
          'allowed_features': ['sso', 'audit_log'],
        },
      });
      final encoded = out.toTfJson() as String;
      expect(encoded, contains('"tier":{"stringValue":"pro"}'));
      expect(encoded, contains('"limits":{"mapValue":{"fields":'));
      expect(encoded, contains('"requests_per_hour":{"integerValue":"10000"}'));
      expect(encoded, contains('"allowed_features":{"arrayValue":{"values":'));
    });
  });

  group('FirestoreFields.encode — sentinels', () {
    test('FirestoreReference → referenceValue', () {
      const ref = FirestoreReference(
        'projects/my-project/databases/(default)/documents/plans/premium',
      );
      final out = FirestoreFields.encode({'preferred_plan': ref});
      expect(
        out.toTfJson(),
        equals(
          '{"preferred_plan":{"referenceValue":'
          '"projects/my-project/databases/(default)/documents/plans/premium"}}',
        ),
      );
    });

    test('FirestoreGeoPoint → geoPointValue', () {
      const p = FirestoreGeoPoint(latitude: 35.6762, longitude: 139.6503);
      final out = FirestoreFields.encode({'office': p});
      expect(
        out.toTfJson(),
        equals(
          '{"office":{"geoPointValue":'
          '{"latitude":35.6762,"longitude":139.6503}}}',
        ),
      );
    });

    test('sentinels embedded inside list', () {
      final out = FirestoreFields.encode({
        'related_plans': [
          const FirestoreReference(
              'projects/p/databases/(default)/documents/plans/free'),
          const FirestoreReference(
              'projects/p/databases/(default)/documents/plans/pro'),
        ],
      });
      final encoded = out.toTfJson() as String;
      expect(
        encoded,
        contains(
            '"referenceValue":"projects/p/databases/(default)/documents/plans/free"'),
      );
      expect(
        encoded,
        contains(
            '"referenceValue":"projects/p/databases/(default)/documents/plans/pro"'),
      );
    });
  });

  group('FirestoreFields.encode — error path', () {
    test('unsupported type throws ArgumentError', () {
      expect(
        () => FirestoreFields.encode({'k': Object()}),
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message.toString(),
            'message',
            allOf(
              contains('Unsupported Firestore value type'),
              contains('Object'),
            ),
          ),
        ),
      );
    });

    test('empty map → empty JSON object', () {
      final out = FirestoreFields.encode({});
      expect(out.toTfJson(), equals('{}'));
    });

    test('returns TfArg<String> (literal)', () {
      final out = FirestoreFields.encode({'k': 'v'});
      expect(out, isA<TfArgLiteral<String>>());
    });
  });
}
