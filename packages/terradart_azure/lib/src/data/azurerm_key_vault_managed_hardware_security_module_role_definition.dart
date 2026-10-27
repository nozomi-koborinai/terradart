// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../key_vault/azurerm_key_vault_managed_hardware_security_module_role_definition.dart';

/// Sensitive field paths for `azurerm_key_vault_managed_hardware_security_module_role_definition`.
const Set<String>
_azurermKeyVaultManagedHardwareSecurityModuleRoleDefinitionSensitive =
    <String>{};

/// Factory wrapper for `azurerm_key_vault_managed_hardware_security_module_role_definition`.
final class DataAzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition
    extends Data {
  static const String tfType =
      'azurerm_key_vault_managed_hardware_security_module_role_definition';

  DataAzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition(
    super.localName, {
    required TfArg<String> managedHsmId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'managed_hsm_id': managedHsmId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKeyVaultManagedHardwareSecurityModuleRoleDefinitionSensitive;

  /// A reference to the `azurerm_key_vault_managed_hardware_security_module_role_definition` this data source reads, for
  /// arguments typed `RefTo<AzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition>`.
  RefTo<AzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `assignable_scopes` attribute.
  TfRef<List<String>> get assignableScopes =>
      TfRef.attribute<List<String>>(this, 'assignable_scopes');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `permission` attribute.
  TfRef<List<Map<String, Object?>>> get permission =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'permission');

  /// Reference to `resource_manager_id` attribute.
  TfRef<String> get resourceManagerId =>
      TfRef.attribute<String>(this, 'resource_manager_id');

  /// Reference to `role_name` attribute.
  TfRef<String> get roleName => TfRef.attribute<String>(this, 'role_name');

  /// Reference to `role_type` attribute.
  TfRef<String> get roleType => TfRef.attribute<String>(this, 'role_type');

  /// Reference to `managed_hsm_id` attribute.
  TfRef<String> get managedHsmId =>
      TfRef.attribute<String>(this, 'managed_hsm_id');
}
