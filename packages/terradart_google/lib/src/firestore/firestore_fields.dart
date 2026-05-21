import 'package:meta/meta.dart';

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
