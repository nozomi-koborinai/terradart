// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_backup_dr_backup_plan_association`.
const Set<String> _googleBackupDrBackupPlanAssociationSensitive = <String>{};

/// Factory wrapper for `google_backup_dr_backup_plan_association`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBackupDrBackupPlanAssociation extends Data {
  static const String tfType = 'google_backup_dr_backup_plan_association';

  DataGoogleBackupDrBackupPlanAssociation({
    required super.localName,
    required TfArg<String> backupPlanAssociationId,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_plan_association_id': backupPlanAssociationId,
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBackupDrBackupPlanAssociationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_plan` attribute.
  TfRef<String> get backupPlan => TfRef.attribute<String>(this, 'backup_plan');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `data_source` attribute.
  TfRef<String> get dataSource => TfRef.attribute<String>(this, 'data_source');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `resource` attribute.
  TfRef<String> get resource => TfRef.attribute<String>(this, 'resource');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `rules_config_info` attribute.
  TfRef<List<Map<String, Object?>>> get rulesConfigInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rules_config_info');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
