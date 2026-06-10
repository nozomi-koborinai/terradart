// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_reservation_assignment`.
const Set<String> _googleBigqueryReservationAssignmentSensitive = <String>{};

/// Factory wrapper for `google_bigquery_reservation_assignment`.
final class GoogleBigqueryReservationAssignment extends Resource {
  static const String tfType = 'google_bigquery_reservation_assignment';

  GoogleBigqueryReservationAssignment({
    required super.localName,
    required TfArg<String> assignee,
    required TfArg<String> jobType,
    TfArg<String>? location,
    TfArg<String>? project,
    required TfArg<String> reservation,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'assignee': assignee,
           'job_type': jobType,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           'reservation': reservation,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryReservationAssignmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
