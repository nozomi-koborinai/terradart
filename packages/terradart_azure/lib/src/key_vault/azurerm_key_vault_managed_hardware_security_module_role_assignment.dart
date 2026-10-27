// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_key_vault_managed_hardware_security_module_role_assignment`.
const Set<String>
_azurermKeyVaultManagedHardwareSecurityModuleRoleAssignmentSensitive =
    <String>{};

/// Factory wrapper for `azurerm_key_vault_managed_hardware_security_module_role_assignment`.
final class AzurermKeyVaultManagedHardwareSecurityModuleRoleAssignment
    extends Resource {
  static const String tfType =
      'azurerm_key_vault_managed_hardware_security_module_role_assignment';

  AzurermKeyVaultManagedHardwareSecurityModuleRoleAssignment(
    super.localName, {
    required TfArg<String> managedHsmId,
    required TfArg<String> name,
    required TfArg<String> principalId,
    required TfArg<String> roleDefinitionId,
    required TfArg<String> scope,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'managed_hsm_id': managedHsmId,
           'name': name,
           'principal_id': principalId,
           'role_definition_id': roleDefinitionId,
           'scope': scope,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKeyVaultManagedHardwareSecurityModuleRoleAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVaultManagedHardwareSecurityModuleRoleAssignment>`.
  RefTo<AzurermKeyVaultManagedHardwareSecurityModuleRoleAssignment> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `managed_hsm_id` attribute.
  TfRef<String> get managedHsmId =>
      TfRef.attribute<String>(this, 'managed_hsm_id');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalId =>
      TfRef.attribute<String>(this, 'principal_id');

  /// Reference to `role_definition_id` attribute.
  TfRef<String> get roleDefinitionId =>
      TfRef.attribute<String>(this, 'role_definition_id');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}
