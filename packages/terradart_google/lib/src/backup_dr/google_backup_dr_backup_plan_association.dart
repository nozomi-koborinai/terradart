// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_backup_dr_backup_plan_association`.
const Set<String> _googleBackupDrBackupPlanAssociationSensitive = <String>{};

/// Factory wrapper for `google_backup_dr_backup_plan_association`.
///
/// A Backup and DR BackupPlanAssociation.
///
/// Backup and DR Service **backup plan association** — binds a resource
/// to a [GoogleBackupDrBackupPlan].
///
/// **Cost:** associating a workload starts BackupDR **management** fees
/// (e.g. GCE VM management SKU `0456-5BF2-438E` **$0.02/GiBy·mo**) plus
/// vault storage when backups land. Deferred with the never_apply
/// Backup DR Wave (no apply-smoke quickstart).
///
/// Enable `backupdr.googleapis.com` via [GoogleProjectService] before apply.
final class GoogleBackupDrBackupPlanAssociation extends Resource {
  static const String tfType = 'google_backup_dr_backup_plan_association';

  GoogleBackupDrBackupPlanAssociation({
    required super.localName,
    required TfArg<String> backupPlanAssociationId,
    required TfArg<String> location,
    required TfArg<String> backupPlan,
    required TfArg<String> resource,
    required TfArg<String> resourceType,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_plan_association_id': backupPlanAssociationId,
           'location': location,
           'backup_plan': backupPlan,
           'resource': resource,
           'resource_type': resourceType,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBackupDrBackupPlanAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `data_source` attribute.
  TfRef<String> get dataSource => TfRef.attribute<String>(this, 'data_source');

  /// Reference to `rules_config_info` attribute.
  TfRef<List<Map<String, Object?>>> get rulesConfigInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rules_config_info');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
