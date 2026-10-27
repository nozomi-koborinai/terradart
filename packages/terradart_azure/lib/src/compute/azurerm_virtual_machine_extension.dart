// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_machine_extension`.
const Set<String> _azurermVirtualMachineExtensionSensitive = <String>{
  'protected_settings',
};

/// Typed helper for the `protected_settings_from_key_vault` block of
/// `azurerm_virtual_machine_extension` (derived from provider schema).
@immutable
final class VirtualMachineExtensionProtectedSettingsFromKeyVault {
  const VirtualMachineExtensionProtectedSettingsFromKeyVault({
    required this.secretUrl,
    required this.sourceVaultId,
  });

  final TfArg<String> secretUrl;

  final TfArg<String> sourceVaultId;

  @internal
  Map<String, Object?> encode() => {
    'secret_url': secretUrl.toTfJson(),
    'source_vault_id': sourceVaultId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_virtual_machine_extension`.
final class AzurermVirtualMachineExtension extends Resource {
  static const String tfType = 'azurerm_virtual_machine_extension';

  AzurermVirtualMachineExtension(
    super.localName, {
    TfArg<bool>? autoUpgradeMinorVersion,
    TfArg<bool>? automaticUpgradeEnabled,
    TfArg<bool>? failureSuppressionEnabled,
    required TfArg<String> name,
    Sensitive<String>? protectedSettings,
    TfArg<List<String>>? provisionAfterExtensions,
    required TfArg<String> publisher,
    TfArg<String>? settings,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    required TfArg<String> typeHandlerVersion,
    required TfArg<String> virtualMachineId,
    VirtualMachineExtensionProtectedSettingsFromKeyVault?
    protectedSettingsFromKeyVault,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_upgrade_minor_version': ?autoUpgradeMinorVersion,
           'automatic_upgrade_enabled': ?automaticUpgradeEnabled,
           'failure_suppression_enabled': ?failureSuppressionEnabled,
           'name': name,
           'protected_settings': ?protectedSettings,
           'provision_after_extensions': ?provisionAfterExtensions,
           'publisher': publisher,
           'settings': ?settings,
           'tags': ?tags,
           'type': type,
           'type_handler_version': typeHandlerVersion,
           'virtual_machine_id': virtualMachineId,
           if (protectedSettingsFromKeyVault != null)
             'protected_settings_from_key_vault': TfArg.literal(
               protectedSettingsFromKeyVault.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualMachineExtensionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualMachineExtension>`.
  RefTo<AzurermVirtualMachineExtension> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_upgrade_minor_version` attribute.
  TfRef<bool> get autoUpgradeMinorVersion =>
      TfRef.attribute<bool>(this, 'auto_upgrade_minor_version');

  /// Reference to `automatic_upgrade_enabled` attribute.
  TfRef<bool> get automaticUpgradeEnabled =>
      TfRef.attribute<bool>(this, 'automatic_upgrade_enabled');

  /// Reference to `failure_suppression_enabled` attribute.
  TfRef<bool> get failureSuppressionEnabled =>
      TfRef.attribute<bool>(this, 'failure_suppression_enabled');

  /// Reference to `protected_settings` attribute.
  TfRef<String> get protectedSettings =>
      TfRef.attribute<String>(this, 'protected_settings');

  /// Reference to `provision_after_extensions` attribute.
  TfRef<List<String>> get provisionAfterExtensions =>
      TfRef.attribute<List<String>>(this, 'provision_after_extensions');

  /// Reference to `publisher` attribute.
  TfRef<String> get publisher => TfRef.attribute<String>(this, 'publisher');

  /// Reference to `settings` attribute.
  TfRef<String> get settings => TfRef.attribute<String>(this, 'settings');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `type_handler_version` attribute.
  TfRef<String> get typeHandlerVersion =>
      TfRef.attribute<String>(this, 'type_handler_version');

  /// Reference to `virtual_machine_id` attribute.
  TfRef<String> get virtualMachineId =>
      TfRef.attribute<String>(this, 'virtual_machine_id');
}
