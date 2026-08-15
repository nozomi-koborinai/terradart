// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_backup_dr_backup_vault`.
const Set<String> _googleBackupDrBackupVaultSensitive = <String>{};

/// Factory wrapper for `google_backup_dr_backup_vault`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBackupDrBackupVault extends Data {
  static const String tfType = 'google_backup_dr_backup_vault';

  DataGoogleBackupDrBackupVault({
    required super.localName,
    required TfArg<String> backupVaultId,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_vault_id': backupVaultId,
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBackupDrBackupVaultSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_restriction` attribute.
  TfRef<String> get accessRestriction =>
      TfRef.attribute<String>(this, 'access_restriction');

  /// Reference to `allow_missing` attribute.
  TfRef<bool> get allowMissing => TfRef.attribute<bool>(this, 'allow_missing');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `backup_count` attribute.
  TfRef<String> get backupCount =>
      TfRef.attribute<String>(this, 'backup_count');

  /// Reference to `backup_minimum_enforced_retention_duration` attribute.
  TfRef<String> get backupMinimumEnforcedRetentionDuration =>
      TfRef.attribute<String>(
        this,
        'backup_minimum_enforced_retention_duration',
      );

  /// Reference to `backup_retention_inheritance` attribute.
  TfRef<String> get backupRetentionInheritance =>
      TfRef.attribute<String>(this, 'backup_retention_inheritance');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletable` attribute.
  TfRef<bool> get deletable => TfRef.attribute<bool>(this, 'deletable');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `effective_time` attribute.
  TfRef<String> get effectiveTime =>
      TfRef.attribute<String>(this, 'effective_time');

  /// Reference to `encryption_config` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption_config');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `force_delete` attribute.
  TfRef<bool> get forceDelete => TfRef.attribute<bool>(this, 'force_delete');

  /// Reference to `force_update` attribute.
  TfRef<bool> get forceUpdate => TfRef.attribute<bool>(this, 'force_update');

  /// Reference to `force_update_access_restriction` attribute.
  TfRef<bool> get forceUpdateAccessRestriction =>
      TfRef.attribute<bool>(this, 'force_update_access_restriction');

  /// Reference to `ignore_backup_plan_references` attribute.
  TfRef<bool> get ignoreBackupPlanReferences =>
      TfRef.attribute<bool>(this, 'ignore_backup_plan_references');

  /// Reference to `ignore_inactive_datasources` attribute.
  TfRef<bool> get ignoreInactiveDatasources =>
      TfRef.attribute<bool>(this, 'ignore_inactive_datasources');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `total_stored_bytes` attribute.
  TfRef<String> get totalStoredBytes =>
      TfRef.attribute<String>(this, 'total_stored_bytes');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
