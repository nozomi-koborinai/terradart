import 'dart:convert' as convert;
import 'dart:typed_data';

import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sentinel value for Firestore `referenceValue` — a document path of
/// the form `projects/<project>/databases/<db>/documents/<col>/<doc>...`.
///
/// Embed inside the map passed to [FirestoreFields.encode]:
///
/// ```dart
/// FirestoreFields.encode({
///   'preferred_plan': FirestoreReference(
///     'projects/my-project/databases/(default)/documents/plans/premium',
///   ),
/// })
/// ```
///
/// The encoder detects this sentinel and emits
/// `{"referenceValue": "<path>"}` in the wire format.
@immutable
final class FirestoreReference {
  const FirestoreReference(this.path);

  /// Full Firestore document path:
  /// `projects/<project>/databases/<db>/documents/<col>/<doc>`.
  /// The encoder writes this verbatim — there is no path validation.
  final String path;

  @override
  bool operator ==(Object other) =>
      other is FirestoreReference && other.path == path;

  @override
  int get hashCode => path.hashCode;
}

/// Sentinel value for Firestore `geoPointValue` — a latitude/longitude
/// pair.
///
/// Embed inside the map passed to [FirestoreFields.encode]:
///
/// ```dart
/// FirestoreFields.encode({
///   'office_location': FirestoreGeoPoint(
///     latitude: 35.6762, longitude: 139.6503,
///   ),
/// })
/// ```
///
/// The encoder emits
/// `{"geoPointValue": {"latitude": <lat>, "longitude": <lon>}}`.
@immutable
final class FirestoreGeoPoint {
  const FirestoreGeoPoint({required this.latitude, required this.longitude});

  final double latitude;
  final double longitude;

  @override
  bool operator ==(Object other) =>
      other is FirestoreGeoPoint &&
      other.latitude == latitude &&
      other.longitude == longitude;

  @override
  int get hashCode => Object.hash(latitude, longitude);
}

/// Static factory for Firestore document `fields` wire-format JSON.
///
/// `google_firestore_document.fields` expects a JSON-encoded string in
/// Firestore's type-discriminated wire format. [encode] takes a plain
/// Dart map and produces a `TfArg<String>` ready to assign:
///
/// ```dart
/// fields: FirestoreFields.encode({
///   'tier': 'premium',
///   'monthly_price': 19.99,
///   'active': true,
///   'features': ['analytics', 'priority_support'],
///   'metadata': {'created_by': 'system'},
///   'office': FirestoreGeoPoint(latitude: 35.6, longitude: 139.7),
///   'preferred_plan': FirestoreReference(
///     'projects/p/databases/(default)/documents/plans/premium',
///   ),
/// })
/// ```
///
/// Type coverage:
///
/// | Dart input | Firestore wire |
/// |---|---|
/// | `null` | `{"nullValue": null}` |
/// | `bool` | `{"booleanValue": <v>}` |
/// | `int` | `{"integerValue": "<v>"}` (string-encoded for 64-bit precision) |
/// | `double` | `{"doubleValue": <v>}` |
/// | `String` | `{"stringValue": <v>}` |
/// | `DateTime` | `{"timestampValue": "<v.toUtc().toIso8601String()>"}` |
/// | `Uint8List` | `{"bytesValue": "<base64(v)>"}` |
/// | `List` | `{"arrayValue": {"values": [recurse]}}` |
/// | `Map<String, Object?>` | `{"mapValue": {"fields": {recurse}}}` |
/// | [FirestoreReference] | `{"referenceValue": <path>}` |
/// | [FirestoreGeoPoint] | `{"geoPointValue": {"latitude": <lat>, "longitude": <lon>}}` |
///
/// Any other input type throws [ArgumentError] at synth time. This
/// fails fast — silent fallback to `stringValue` (or similar) would
/// hide the type mismatch until `terraform apply`.
///
/// **Quotas not enforced**: Firestore allows 1 MiB per document and 20
/// levels of nested map/array. The encoder does not check these;
/// Terraform apply surfaces violations as provider errors.
class FirestoreFields {
  const FirestoreFields._();

  /// Encode [data] as a Firestore wire-format JSON string and return it
  /// as a `TfArg<String>` literal.
  static TfArg<String> encode(Map<String, Object?> data) {
    final encoded = <String, Object?>{
      for (final entry in data.entries) entry.key: _encodeValue(entry.value),
    };
    return TfArg.literal(convert.jsonEncode(encoded));
  }

  static Object? _encodeValue(Object? value) {
    if (value == null) return {'nullValue': null};
    if (value is bool) return {'booleanValue': value};
    if (value is int) return {'integerValue': value.toString()};
    if (value is double) return {'doubleValue': value};
    if (value is String) return {'stringValue': value};
    if (value is DateTime) {
      return {'timestampValue': value.toUtc().toIso8601String()};
    }
    if (value is Uint8List) {
      return {'bytesValue': convert.base64.encode(value)};
    }
    if (value is FirestoreReference) {
      return {'referenceValue': value.path};
    }
    if (value is FirestoreGeoPoint) {
      return {
        'geoPointValue': {
          'latitude': value.latitude,
          'longitude': value.longitude,
        },
      };
    }
    if (value is List) {
      return {
        'arrayValue': {
          'values': [for (final v in value) _encodeValue(v)],
        },
      };
    }
    if (value is Map<String, Object?>) {
      return {
        'mapValue': {
          'fields': {
            for (final entry in value.entries)
              entry.key: _encodeValue(entry.value),
          },
        },
      };
    }
    throw ArgumentError.value(
      value,
      'FirestoreFields.encode',
      'Unsupported Firestore value type: ${value.runtimeType}. '
          'Supported: bool, int, double, String, DateTime, Uint8List, '
          'List, Map<String, Object?>, FirestoreReference, '
          'FirestoreGeoPoint, null.',
    );
  }
}
