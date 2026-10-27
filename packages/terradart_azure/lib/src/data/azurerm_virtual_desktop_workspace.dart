// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../virtual_desktop/azurerm_virtual_desktop_workspace.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_desktop_workspace`.
const Set<String> _azurermVirtualDesktopWorkspaceSensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_desktop_workspace`.
final class DataAzurermVirtualDesktopWorkspace extends Data {
  static const String tfType = 'azurerm_virtual_desktop_workspace';

  DataAzurermVirtualDesktopWorkspace(
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
  Set<String> get sensitiveFields => _azurermVirtualDesktopWorkspaceSensitive;

  /// A reference to the `azurerm_virtual_desktop_workspace` this data source reads, for
  /// arguments typed `RefTo<AzurermVirtualDesktopWorkspace>`.
  RefTo<AzurermVirtualDesktopWorkspace> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `friendly_name` attribute.
  TfRef<String> get friendlyName =>
      TfRef.attribute<String>(this, 'friendly_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
