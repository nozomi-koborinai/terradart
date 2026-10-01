// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_reservation_group`.
const Set<String> _googleBigqueryReservationGroupSensitive = <String>{};

/// Factory wrapper for `google_bigquery_reservation_group`.
///
/// A reservation group is a container for reservations.
///
/// A BigQuery **reservation group** is a named container for reservations
/// in a location. Creating a group alone does not allocate slots or bill
/// capacity — attach reservations (and assignments) separately.
///
/// Enable `bigqueryreservation.googleapis.com` via [GoogleProjectService]
/// before apply.
///
/// Example:
/// ```dart
/// GoogleBigqueryReservationGroup(
///   localName: 'analytics',
///   name: TfArg.literal('terradart-res-group'),
///   location: TfArg.literal('US'),
/// );
/// ```
final class GoogleBigqueryReservationGroup extends Resource {
  static const String tfType = 'google_bigquery_reservation_group';

  GoogleBigqueryReservationGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? location,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': ?location,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryReservationGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryReservationGroup>`.
  RefTo<GoogleBigqueryReservationGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
