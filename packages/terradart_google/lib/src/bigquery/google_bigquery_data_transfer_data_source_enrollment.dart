// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_data_transfer_data_source_enrollment`.
const Set<String> _googleBigqueryDataTransferDataSourceEnrollmentSensitive =
    <String>{};

/// Factory wrapper for `google_bigquery_data_transfer_data_source_enrollment`.
///
/// Enrolls a BigQuery Data Transfer Service data source in a project, making it
/// available for use by `google_bigquery_data_transfer_config`. Some data
/// sources, notably Google Cloud Carbon Footprint exports, must be enrolled
/// before a transfer config can be created against them.
///
/// Enrollment is project-wide: a data source enrolled in a project is available
/// in every location that offers it.
///
/// Enrollment is eventually consistent, so a newly created or recreated
/// enrollment may briefly read as absent before it settles.
final class GoogleBigqueryDataTransferDataSourceEnrollment extends Resource {
  static const String tfType =
      'google_bigquery_data_transfer_data_source_enrollment';

  GoogleBigqueryDataTransferDataSourceEnrollment({
    required super.localName,
    required TfArg<String> dataSourceId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    TfArg<String>? unenrollLocation,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_source_id': dataSourceId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           if (unenrollLocation != null) 'unenroll_location': unenrollLocation,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryDataTransferDataSourceEnrollmentSensitive;
}
