// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_backup_protected_file_share`.
const Set<String> _azurermBackupProtectedFileShareSensitive = <String>{};

/// Factory wrapper for `azurerm_backup_protected_file_share`.
final class AzurermBackupProtectedFileShare extends Resource {
  static const String tfType = 'azurerm_backup_protected_file_share';

  AzurermBackupProtectedFileShare(
    super.localName, {
    required TfArg<String> backupPolicyId,
    required TfArg<String> recoveryVaultName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> sourceFileShareName,
    required TfArg<String> sourceStorageAccountId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_policy_id': backupPolicyId,
           'recovery_vault_name': recoveryVaultName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'source_file_share_name': sourceFileShareName,
           'source_storage_account_id': sourceStorageAccountId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBackupProtectedFileShareSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBackupProtectedFileShare>`.
  RefTo<AzurermBackupProtectedFileShare> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_policy_id` attribute.
  TfRef<String> get backupPolicyId =>
      TfRef.attribute<String>(this, 'backup_policy_id');

  /// Reference to `recovery_vault_name` attribute.
  TfRef<String> get recoveryVaultName =>
      TfRef.attribute<String>(this, 'recovery_vault_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `source_file_share_name` attribute.
  TfRef<String> get sourceFileShareName =>
      TfRef.attribute<String>(this, 'source_file_share_name');

  /// Reference to `source_storage_account_id` attribute.
  TfRef<String> get sourceStorageAccountId =>
      TfRef.attribute<String>(this, 'source_storage_account_id');
}
