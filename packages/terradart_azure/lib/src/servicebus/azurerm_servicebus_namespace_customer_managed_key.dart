// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_servicebus_namespace_customer_managed_key`.
const Set<String> _azurermServicebusNamespaceCustomerManagedKeySensitive =
    <String>{};

/// Factory wrapper for `azurerm_servicebus_namespace_customer_managed_key`.
final class AzurermServicebusNamespaceCustomerManagedKey extends Resource {
  static const String tfType =
      'azurerm_servicebus_namespace_customer_managed_key';

  AzurermServicebusNamespaceCustomerManagedKey(
    super.localName, {
    TfArg<bool>? infrastructureEncryptionEnabled,
    required TfArg<String> keyVaultKeyId,
    required TfArg<String> namespaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'infrastructure_encryption_enabled':
               ?infrastructureEncryptionEnabled,
           'key_vault_key_id': keyVaultKeyId,
           'namespace_id': namespaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermServicebusNamespaceCustomerManagedKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermServicebusNamespaceCustomerManagedKey>`.
  RefTo<AzurermServicebusNamespaceCustomerManagedKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `infrastructure_encryption_enabled` attribute.
  TfRef<bool> get infrastructureEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'infrastructure_encryption_enabled');

  /// Reference to `key_vault_key_id` attribute.
  TfRef<String> get keyVaultKeyId =>
      TfRef.attribute<String>(this, 'key_vault_key_id');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceId =>
      TfRef.attribute<String>(this, 'namespace_id');
}
