// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_databricks_workspace_root_dbfs_customer_managed_key`.
const Set<String>
_azurermDatabricksWorkspaceRootDbfsCustomerManagedKeySensitive = <String>{};

/// Factory wrapper for `azurerm_databricks_workspace_root_dbfs_customer_managed_key`.
final class AzurermDatabricksWorkspaceRootDbfsCustomerManagedKey
    extends Resource {
  static const String tfType =
      'azurerm_databricks_workspace_root_dbfs_customer_managed_key';

  AzurermDatabricksWorkspaceRootDbfsCustomerManagedKey(
    super.localName, {
    RefTo<AzurermKeyVault>? keyVaultId,
    required TfArg<String> keyVaultKeyId,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key_vault_id': ?keyVaultId?.encodeAs('id'),
           'key_vault_key_id': keyVaultKeyId,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDatabricksWorkspaceRootDbfsCustomerManagedKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDatabricksWorkspaceRootDbfsCustomerManagedKey>`.
  RefTo<AzurermDatabricksWorkspaceRootDbfsCustomerManagedKey> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `key_vault_key_id` attribute.
  TfRef<String> get keyVaultKeyId =>
      TfRef.attribute<String>(this, 'key_vault_key_id');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
