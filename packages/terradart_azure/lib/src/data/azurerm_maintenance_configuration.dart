// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../maintenance/azurerm_maintenance_configuration.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_maintenance_configuration`.
const Set<String> _azurermMaintenanceConfigurationSensitive = <String>{};

/// Factory wrapper for `azurerm_maintenance_configuration`.
final class DataAzurermMaintenanceConfiguration extends Data {
  static const String tfType = 'azurerm_maintenance_configuration';

  DataAzurermMaintenanceConfiguration(
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
  Set<String> get sensitiveFields => _azurermMaintenanceConfigurationSensitive;

  /// A reference to the `azurerm_maintenance_configuration` this data source reads, for
  /// arguments typed `RefTo<AzurermMaintenanceConfiguration>`.
  RefTo<AzurermMaintenanceConfiguration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `in_guest_user_patch_mode` attribute.
  TfRef<String> get inGuestUserPatchMode =>
      TfRef.attribute<String>(this, 'in_guest_user_patch_mode');

  /// Reference to `install_patches` attribute.
  TfRef<List<Map<String, Object?>>> get installPatches =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'install_patches');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `properties` attribute.
  TfRef<Map<String, String>> get properties =>
      TfRef.attribute<Map<String, String>>(this, 'properties');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `visibility` attribute.
  TfRef<String> get visibility => TfRef.attribute<String>(this, 'visibility');

  /// Reference to `window` attribute.
  TfRef<List<Map<String, Object?>>> get window =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'window');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
