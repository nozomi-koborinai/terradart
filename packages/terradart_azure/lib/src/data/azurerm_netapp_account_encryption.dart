// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../netapp/azurerm_netapp_account_encryption.dart';

/// Sensitive field paths for `azurerm_netapp_account_encryption`.
const Set<String> _azurermNetappAccountEncryptionSensitive = <String>{};

/// Factory wrapper for `azurerm_netapp_account_encryption`.
final class DataAzurermNetappAccountEncryption extends Data {
  static const String tfType = 'azurerm_netapp_account_encryption';

  DataAzurermNetappAccountEncryption(
    super.localName, {
    required TfArg<String> netappAccountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'netapp_account_id': netappAccountId},
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappAccountEncryptionSensitive;

  /// A reference to the `azurerm_netapp_account_encryption` this data source reads, for
  /// arguments typed `RefTo<AzurermNetappAccountEncryption>`.
  RefTo<AzurermNetappAccountEncryption> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cross_tenant_key_vault_resource_id` attribute.
  TfRef<String> get crossTenantKeyVaultResourceId =>
      TfRef.attribute<String>(this, 'cross_tenant_key_vault_resource_id');

  /// Reference to `encryption_key` attribute.
  TfRef<String> get encryptionKey =>
      TfRef.attribute<String>(this, 'encryption_key');

  /// Reference to `federated_client_id` attribute.
  TfRef<String> get federatedClientId =>
      TfRef.attribute<String>(this, 'federated_client_id');

  /// Reference to `system_assigned_identity_principal_id` attribute.
  TfRef<String> get systemAssignedIdentityPrincipalId =>
      TfRef.attribute<String>(this, 'system_assigned_identity_principal_id');

  /// Reference to `user_assigned_identity_id` attribute.
  TfRef<String> get userAssignedIdentityId =>
      TfRef.attribute<String>(this, 'user_assigned_identity_id');

  /// Reference to `netapp_account_id` attribute.
  TfRef<String> get netappAccountId =>
      TfRef.attribute<String>(this, 'netapp_account_id');
}
