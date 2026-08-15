// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_backup_dr_data_source_reference`.
const Set<String> _googleBackupDrDataSourceReferenceSensitive = <String>{};

/// Factory wrapper for `google_backup_dr_data_source_reference`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBackupDrDataSourceReference extends Data {
  static const String tfType = 'google_backup_dr_data_source_reference';

  DataGoogleBackupDrDataSourceReference({
    required super.localName,
    required TfArg<String> dataSourceReferenceId,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_source_reference_id': dataSourceReferenceId,
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBackupDrDataSourceReferenceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_config_state` attribute.
  TfRef<String> get backupConfigState =>
      TfRef.attribute<String>(this, 'backup_config_state');

  /// Reference to `backup_count` attribute.
  TfRef<num> get backupCount => TfRef.attribute<num>(this, 'backup_count');

  /// Reference to `data_source` attribute.
  TfRef<String> get dataSource => TfRef.attribute<String>(this, 'data_source');

  /// Reference to `gcp_resource_name` attribute.
  TfRef<String> get gcpResourceName =>
      TfRef.attribute<String>(this, 'gcp_resource_name');

  /// Reference to `last_backup_state` attribute.
  TfRef<String> get lastBackupState =>
      TfRef.attribute<String>(this, 'last_backup_state');

  /// Reference to `last_successful_backup_time` attribute.
  TfRef<String> get lastSuccessfulBackupTime =>
      TfRef.attribute<String>(this, 'last_successful_backup_time');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');
}
