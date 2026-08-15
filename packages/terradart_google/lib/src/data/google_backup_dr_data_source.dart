// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_backup_dr_data_source`.
const Set<String> _googleBackupDrDataSourceSensitive = <String>{};

/// Factory wrapper for `google_backup_dr_data_source`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBackupDrDataSource extends Data {
  static const String tfType = 'google_backup_dr_data_source';

  DataGoogleBackupDrDataSource({
    required super.localName,
    required TfArg<String> backupVaultId,
    required TfArg<String> dataSourceId,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_vault_id': backupVaultId,
           'data_source_id': dataSourceId,
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBackupDrDataSourceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_blocked_by_vault_access_restriction` attribute.
  TfRef<bool> get backupBlockedByVaultAccessRestriction =>
      TfRef.attribute<bool>(this, 'backup_blocked_by_vault_access_restriction');

  /// Reference to `backup_config_info` attribute.
  TfRef<List<Map<String, Object?>>> get backupConfigInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'backup_config_info');

  /// Reference to `backup_count` attribute.
  TfRef<String> get backupCount =>
      TfRef.attribute<String>(this, 'backup_count');

  /// Reference to `config_state` attribute.
  TfRef<String> get configState =>
      TfRef.attribute<String>(this, 'config_state');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `data_source_backup_appliance_application` attribute.
  TfRef<List<Map<String, Object?>>> get dataSourceBackupApplianceApplication =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'data_source_backup_appliance_application',
      );

  /// Reference to `data_source_gcp_resource` attribute.
  TfRef<List<Map<String, Object?>>> get dataSourceGcpResource =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'data_source_gcp_resource',
      );

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `total_stored_bytes` attribute.
  TfRef<String> get totalStoredBytes =>
      TfRef.attribute<String>(this, 'total_stored_bytes');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
