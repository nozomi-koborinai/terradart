// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_eventhub_namespace_customer_managed_key`.
const Set<String> _azurermEventhubNamespaceCustomerManagedKeySensitive =
    <String>{};

/// Factory wrapper for `azurerm_eventhub_namespace_customer_managed_key`.
final class AzurermEventhubNamespaceCustomerManagedKey extends Resource {
  static const String tfType =
      'azurerm_eventhub_namespace_customer_managed_key';

  AzurermEventhubNamespaceCustomerManagedKey(
    super.localName, {
    required TfArg<String> eventhubNamespaceId,
    TfArg<bool>? infrastructureEncryptionEnabled,
    required TfArg<List<String>> keyVaultKeyIds,
    TfArg<String>? userAssignedIdentityId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'eventhub_namespace_id': eventhubNamespaceId,
           'infrastructure_encryption_enabled':
               ?infrastructureEncryptionEnabled,
           'key_vault_key_ids': keyVaultKeyIds,
           'user_assigned_identity_id': ?userAssignedIdentityId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermEventhubNamespaceCustomerManagedKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEventhubNamespaceCustomerManagedKey>`.
  RefTo<AzurermEventhubNamespaceCustomerManagedKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `eventhub_namespace_id` attribute.
  TfRef<String> get eventhubNamespaceId =>
      TfRef.attribute<String>(this, 'eventhub_namespace_id');

  /// Reference to `infrastructure_encryption_enabled` attribute.
  TfRef<bool> get infrastructureEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'infrastructure_encryption_enabled');

  /// Reference to `key_vault_key_ids` attribute.
  TfRef<List<String>> get keyVaultKeyIds =>
      TfRef.attribute<List<String>>(this, 'key_vault_key_ids');

  /// Reference to `user_assigned_identity_id` attribute.
  TfRef<String> get userAssignedIdentityId =>
      TfRef.attribute<String>(this, 'user_assigned_identity_id');
}
