// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../key_vault/azurerm_key_vault_managed_hardware_security_module.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_key_vault_managed_hardware_security_module`.
const Set<String> _azurermKeyVaultManagedHardwareSecurityModuleSensitive =
    <String>{};

/// Factory wrapper for `azurerm_key_vault_managed_hardware_security_module`.
final class DataAzurermKeyVaultManagedHardwareSecurityModule extends Data {
  static const String tfType =
      'azurerm_key_vault_managed_hardware_security_module';

  DataAzurermKeyVaultManagedHardwareSecurityModule(
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
  Set<String> get sensitiveFields =>
      _azurermKeyVaultManagedHardwareSecurityModuleSensitive;

  /// A reference to the `azurerm_key_vault_managed_hardware_security_module` this data source reads, for
  /// arguments typed `RefTo<AzurermKeyVaultManagedHardwareSecurityModule>`.
  RefTo<AzurermKeyVaultManagedHardwareSecurityModule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `admin_object_ids` attribute.
  TfRef<List<String>> get adminObjectIds =>
      TfRef.attribute<List<String>>(this, 'admin_object_ids');

  /// Reference to `hsm_uri` attribute.
  TfRef<String> get hsmUri => TfRef.attribute<String>(this, 'hsm_uri');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `purge_protection_enabled` attribute.
  TfRef<bool> get purgeProtectionEnabled =>
      TfRef.attribute<bool>(this, 'purge_protection_enabled');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `soft_delete_retention_days` attribute.
  TfRef<num> get softDeleteRetentionDays =>
      TfRef.attribute<num>(this, 'soft_delete_retention_days');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
