// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_backup_dr_backup_plan`.
const Set<String> _googleBackupDrBackupPlanSensitive = <String>{};

/// Factory wrapper for `google_backup_dr_backup_plan`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBackupDrBackupPlan extends Data {
  static const String tfType = 'google_backup_dr_backup_plan';

  DataGoogleBackupDrBackupPlan({
    required super.localName,
    required TfArg<String> backupPlanId,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_plan_id': backupPlanId,
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBackupDrBackupPlanSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_rules` attribute.
  TfRef<List<Map<String, Object?>>> get backupRules =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'backup_rules');

  /// Reference to `backup_vault` attribute.
  TfRef<String> get backupVault =>
      TfRef.attribute<String>(this, 'backup_vault');

  /// Reference to `backup_vault_service_account` attribute.
  TfRef<String> get backupVaultServiceAccount =>
      TfRef.attribute<String>(this, 'backup_vault_service_account');

  /// Reference to `compute_instance_backup_plan_properties` attribute.
  TfRef<List<Map<String, Object?>>> get computeInstanceBackupPlanProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'compute_instance_backup_plan_properties',
      );

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disk_backup_plan_properties` attribute.
  TfRef<List<Map<String, Object?>>> get diskBackupPlanProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'disk_backup_plan_properties',
      );

  /// Reference to `log_retention_days` attribute.
  TfRef<num> get logRetentionDays =>
      TfRef.attribute<num>(this, 'log_retention_days');

  /// Reference to `max_custom_on_demand_retention_days` attribute.
  TfRef<num> get maxCustomOnDemandRetentionDays =>
      TfRef.attribute<num>(this, 'max_custom_on_demand_retention_days');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `supported_resource_types` attribute.
  TfRef<List<String>> get supportedResourceTypes =>
      TfRef.attribute<List<String>>(this, 'supported_resource_types');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
