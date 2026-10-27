// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_arc_machine_extension`.
const Set<String> _azurermArcMachineExtensionSensitive = <String>{
  'protected_settings',
};

/// Factory wrapper for `azurerm_arc_machine_extension`.
final class AzurermArcMachineExtension extends Resource {
  static const String tfType = 'azurerm_arc_machine_extension';

  AzurermArcMachineExtension(
    super.localName, {
    required TfArg<String> arcMachineId,
    TfArg<bool>? automaticUpgradeEnabled,
    TfArg<String>? forceUpdateTag,
    required TfArg<String> location,
    required TfArg<String> name,
    Sensitive<String>? protectedSettings,
    required TfArg<String> publisher,
    TfArg<String>? settings,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    TfArg<String>? typeHandlerVersion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arc_machine_id': arcMachineId,
           'automatic_upgrade_enabled': ?automaticUpgradeEnabled,
           'force_update_tag': ?forceUpdateTag,
           'location': location,
           'name': name,
           'protected_settings': ?protectedSettings,
           'publisher': publisher,
           'settings': ?settings,
           'tags': ?tags,
           'type': type,
           'type_handler_version': ?typeHandlerVersion,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermArcMachineExtensionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermArcMachineExtension>`.
  RefTo<AzurermArcMachineExtension> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arc_machine_id` attribute.
  TfRef<String> get arcMachineId =>
      TfRef.attribute<String>(this, 'arc_machine_id');

  /// Reference to `automatic_upgrade_enabled` attribute.
  TfRef<bool> get automaticUpgradeEnabled =>
      TfRef.attribute<bool>(this, 'automatic_upgrade_enabled');

  /// Reference to `force_update_tag` attribute.
  TfRef<String> get forceUpdateTag =>
      TfRef.attribute<String>(this, 'force_update_tag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `protected_settings` attribute.
  TfRef<String> get protectedSettings =>
      TfRef.attribute<String>(this, 'protected_settings');

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
}
