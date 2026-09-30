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
    TfArg<String>? unenrollLocation,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_source_id': dataSourceId,
           'unenroll_location': ?unenrollLocation,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryDataTransferDataSourceEnrollmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryDataTransferDataSourceEnrollment>`.
  RefTo<GoogleBigqueryDataTransferDataSourceEnrollment> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorization_type` attribute.
  TfRef<String> get authorizationType =>
      TfRef.attribute<String>(this, 'authorization_type');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `data_refresh_type` attribute.
  TfRef<String> get dataRefreshType =>
      TfRef.attribute<String>(this, 'data_refresh_type');

  /// Reference to `default_data_refresh_window_days` attribute.
  TfRef<num> get defaultDataRefreshWindowDays =>
      TfRef.attribute<num>(this, 'default_data_refresh_window_days');

  /// Reference to `default_schedule` attribute.
  TfRef<String> get defaultSchedule =>
      TfRef.attribute<String>(this, 'default_schedule');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `help_url` attribute.
  TfRef<String> get helpUrl => TfRef.attribute<String>(this, 'help_url');

  /// Reference to `manual_runs_disabled` attribute.
  TfRef<bool> get manualRunsDisabled =>
      TfRef.attribute<bool>(this, 'manual_runs_disabled');

  /// Reference to `minimum_schedule_interval` attribute.
  TfRef<String> get minimumScheduleInterval =>
      TfRef.attribute<String>(this, 'minimum_schedule_interval');

  /// Reference to `parameters` attribute.
  TfRef<List<Map<String, Object?>>> get parameters =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'parameters');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `supports_custom_schedule` attribute.
  TfRef<bool> get supportsCustomSchedule =>
      TfRef.attribute<bool>(this, 'supports_custom_schedule');

  /// Reference to `update_deadline_seconds` attribute.
  TfRef<num> get updateDeadlineSeconds =>
      TfRef.attribute<num>(this, 'update_deadline_seconds');

  /// Reference to `data_source_id` attribute.
  TfRef<String> get dataSourceIdRef =>
      TfRef.attribute<String>(this, 'data_source_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `unenroll_location` attribute.
  TfRef<String> get unenrollLocationRef =>
      TfRef.attribute<String>(this, 'unenroll_location');
}
