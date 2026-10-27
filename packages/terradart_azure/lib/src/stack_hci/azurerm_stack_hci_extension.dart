// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_stack_hci_extension`.
const Set<String> _azurermStackHciExtensionSensitive = <String>{
  'protected_settings',
};

/// Factory wrapper for `azurerm_stack_hci_extension`.
final class AzurermStackHciExtension extends Resource {
  static const String tfType = 'azurerm_stack_hci_extension';

  AzurermStackHciExtension(
    super.localName, {
    required TfArg<String> arcSettingId,
    TfArg<bool>? autoUpgradeMinorVersionEnabled,
    TfArg<bool>? automaticUpgradeEnabled,
    required TfArg<String> name,
    Sensitive<String>? protectedSettings,
    required TfArg<String> publisher,
    TfArg<String>? settings,
    required TfArg<String> type,
    TfArg<String>? typeHandlerVersion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arc_setting_id': arcSettingId,
           'auto_upgrade_minor_version_enabled':
               ?autoUpgradeMinorVersionEnabled,
           'automatic_upgrade_enabled': ?automaticUpgradeEnabled,
           'name': name,
           'protected_settings': ?protectedSettings,
           'publisher': publisher,
           'settings': ?settings,
           'type': type,
           'type_handler_version': ?typeHandlerVersion,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStackHciExtensionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStackHciExtension>`.
  RefTo<AzurermStackHciExtension> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arc_setting_id` attribute.
  TfRef<String> get arcSettingId =>
      TfRef.attribute<String>(this, 'arc_setting_id');

  /// Reference to `auto_upgrade_minor_version_enabled` attribute.
  TfRef<bool> get autoUpgradeMinorVersionEnabled =>
      TfRef.attribute<bool>(this, 'auto_upgrade_minor_version_enabled');

  /// Reference to `automatic_upgrade_enabled` attribute.
  TfRef<bool> get automaticUpgradeEnabled =>
      TfRef.attribute<bool>(this, 'automatic_upgrade_enabled');

  /// Reference to `protected_settings` attribute.
  TfRef<String> get protectedSettings =>
      TfRef.attribute<String>(this, 'protected_settings');

  /// Reference to `publisher` attribute.
  TfRef<String> get publisher => TfRef.attribute<String>(this, 'publisher');

  /// Reference to `settings` attribute.
  TfRef<String> get settings => TfRef.attribute<String>(this, 'settings');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `type_handler_version` attribute.
  TfRef<String> get typeHandlerVersion =>
      TfRef.attribute<String>(this, 'type_handler_version');
}
