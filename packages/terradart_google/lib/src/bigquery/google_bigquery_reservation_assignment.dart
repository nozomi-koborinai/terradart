// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_reservation.dart'
    show GoogleBigqueryReservation;

/// Sensitive field paths for `google_bigquery_reservation_assignment`.
const Set<String> _googleBigqueryReservationAssignmentSensitive = <String>{};

extension type const BigqueryReservationAssignmentJobType._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryReservationAssignmentJobType.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryReservationAssignmentJobType.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryReservationAssignmentJobType.arg(TfArg<String> arg)
    : this._(arg);

  static const unspecified = BigqueryReservationAssignmentJobType._(
    TfArgLiteral('JOB_TYPE_UNSPECIFIED'),
  );
  static const pipeline = BigqueryReservationAssignmentJobType._(
    TfArgLiteral('PIPELINE'),
  );
  static const query = BigqueryReservationAssignmentJobType._(
    TfArgLiteral('QUERY'),
  );
  static const continuous = BigqueryReservationAssignmentJobType._(
    TfArgLiteral('CONTINUOUS'),
  );

  static const List<BigqueryReservationAssignmentJobType> values = [
    unspecified,
    pipeline,
    query,
    continuous,
  ];
}

/// Factory wrapper for `google_bigquery_reservation_assignment`.
///
/// The BigqueryReservation Assignment resource.
final class GoogleBigqueryReservationAssignment extends Resource {
  static const String tfType = 'google_bigquery_reservation_assignment';

  GoogleBigqueryReservationAssignment(
    super.localName, {
    required TfArg<String> assignee,
    required BigqueryReservationAssignmentJobType jobType,
    TfArg<String>? location,
    TfArg<String>? project,
    required RefTo<GoogleBigqueryReservation> reservation,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'assignee': assignee,
           'job_type': jobType,
           'location': ?location,
           'project': ?project,
           'reservation': reservation.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryReservationAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryReservationAssignment>`.
  RefTo<GoogleBigqueryReservationAssignment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `assignee` attribute.
  TfRef<String> get assignee => TfRef.attribute<String>(this, 'assignee');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `job_type` attribute.
  TfRef<String> get jobType => TfRef.attribute<String>(this, 'job_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `principal` attribute.
  TfRef<String> get principal => TfRef.attribute<String>(this, 'principal');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `reservation` attribute.
  TfRef<String> get reservation => TfRef.attribute<String>(this, 'reservation');
}
