// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_key_vault_managed_hardware_security_module_role_definition`.
const Set<String>
_azurermKeyVaultManagedHardwareSecurityModuleRoleDefinitionSensitive =
    <String>{};

/// Typed helper for the `permission` block of
/// `azurerm_key_vault_managed_hardware_security_module_role_definition` (derived from provider schema).
@immutable
final class KeyVaultManagedHardwareSecurityModuleRoleDefinitionPermission {
  const KeyVaultManagedHardwareSecurityModuleRoleDefinitionPermission({
    this.actions,
    this.dataActions,
    this.notActions,
    this.notDataActions,
  });

  final TfArg<List<String>>? actions;

  final TfArg<List<String>>? dataActions;

  final TfArg<List<String>>? notActions;

  final TfArg<List<String>>? notDataActions;

  @internal
  Map<String, Object?> encode() => {
    'actions': ?actions?.toTfJson(),
    'data_actions': ?dataActions?.toTfJson(),
    'not_actions': ?notActions?.toTfJson(),
    'not_data_actions': ?notDataActions?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_key_vault_managed_hardware_security_module_role_definition`.
final class AzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition
    extends Resource {
  static const String tfType =
      'azurerm_key_vault_managed_hardware_security_module_role_definition';

  AzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> managedHsmId,
    required TfArg<String> name,
    TfArg<String>? roleName,
    List<KeyVaultManagedHardwareSecurityModuleRoleDefinitionPermission>?
    permission,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'managed_hsm_id': managedHsmId,
           'name': name,
           'role_name': ?roleName,
           if (permission != null)
             'permission': TfArg.literal([
               for (final e in permission) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKeyVaultManagedHardwareSecurityModuleRoleDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition>`.
  RefTo<AzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_manager_id` attribute.
  TfRef<String> get resourceManagerId =>
      TfRef.attribute<String>(this, 'resource_manager_id');

  /// Reference to `role_type` attribute.
  TfRef<String> get roleType => TfRef.attribute<String>(this, 'role_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `managed_hsm_id` attribute.
  TfRef<String> get managedHsmId =>
      TfRef.attribute<String>(this, 'managed_hsm_id');

  /// Reference to `role_name` attribute.
  TfRef<String> get roleName => TfRef.attribute<String>(this, 'role_name');
}
