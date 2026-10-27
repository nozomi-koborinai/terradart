// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../key_vault/azurerm_key_vault.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_key_vault`.
const Set<String> _azurermKeyVaultSensitive = <String>{};

/// Factory wrapper for `azurerm_key_vault`.
final class DataAzurermKeyVault extends Data {
  static const String tfType = 'azurerm_key_vault';

  DataAzurermKeyVault(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKeyVaultSensitive;

  /// A reference to the `azurerm_key_vault` this data source reads, for
  /// arguments typed `RefTo<AzurermKeyVault>`.
  RefTo<AzurermKeyVault> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policy` attribute.
  TfRef<List<Map<String, Object?>>> get accessPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'access_policy');

  /// Reference to `enabled_for_deployment` attribute.
  TfRef<bool> get enabledForDeployment =>
      TfRef.attribute<bool>(this, 'enabled_for_deployment');

  /// Reference to `enabled_for_disk_encryption` attribute.
  TfRef<bool> get enabledForDiskEncryption =>
      TfRef.attribute<bool>(this, 'enabled_for_disk_encryption');

  /// Reference to `enabled_for_template_deployment` attribute.
  TfRef<bool> get enabledForTemplateDeployment =>
      TfRef.attribute<bool>(this, 'enabled_for_template_deployment');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network_acls` attribute.
  TfRef<List<Map<String, Object?>>> get networkAcls =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_acls');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `purge_protection_enabled` attribute.
  TfRef<bool> get purgeProtectionEnabled =>
      TfRef.attribute<bool>(this, 'purge_protection_enabled');

  /// Reference to `rbac_authorization_enabled` attribute.
  TfRef<bool> get rbacAuthorizationEnabled =>
      TfRef.attribute<bool>(this, 'rbac_authorization_enabled');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `vault_uri` attribute.
  TfRef<String> get vaultUri => TfRef.attribute<String>(this, 'vault_uri');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
