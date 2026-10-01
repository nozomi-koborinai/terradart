// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_reservation.dart'
    show GoogleBigqueryReservation;

/// Sensitive field paths for `google_bigquery_reservation_assignment`.
const Set<String> _googleBigqueryReservationAssignmentSensitive = <String>{};

enum BigqueryReservationAssignmentJobType implements TerraformEnum {
  unspecified('JOB_TYPE_UNSPECIFIED'),
  pipeline('PIPELINE'),
  query('QUERY'),
  continuous('CONTINUOUS');

  const BigqueryReservationAssignmentJobType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_bigquery_reservation_assignment`.
///
/// The BigqueryReservation Assignment resource.
final class GoogleBigqueryReservationAssignment extends Resource {
  static const String tfType = 'google_bigquery_reservation_assignment';

  GoogleBigqueryReservationAssignment({
    required super.localName,
    required TfArg<String> assignee,
    required TfArg<BigqueryReservationAssignmentJobType> jobType,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `assignee` attribute.
  TfRef<String> get assigneeRef => TfRef.attribute<String>(this, 'assignee');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `job_type` attribute.
  TfRef<String> get jobTypeRef => TfRef.attribute<String>(this, 'job_type');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `principal` attribute.
  TfRef<String> get principalRef => TfRef.attribute<String>(this, 'principal');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `reservation` attribute.
  TfRef<String> get reservationRef =>
      TfRef.attribute<String>(this, 'reservation');
}
