// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_system_center_virtual_machine_manager_virtual_machine_template`.
const Set<String>
_azurermSystemCenterVirtualMachineManagerVirtualMachineTemplateSensitive =
    <String>{};

/// Factory wrapper for `azurerm_system_center_virtual_machine_manager_virtual_machine_template`.
final class AzurermSystemCenterVirtualMachineManagerVirtualMachineTemplate
    extends Resource {
  static const String tfType =
      'azurerm_system_center_virtual_machine_manager_virtual_machine_template';

  AzurermSystemCenterVirtualMachineManagerVirtualMachineTemplate(
    super.localName, {
    required TfArg<String> customLocationId,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String>
    systemCenterVirtualMachineManagerServerInventoryItemId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_location_id': customLocationId,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'system_center_virtual_machine_manager_server_inventory_item_id':
               systemCenterVirtualMachineManagerServerInventoryItemId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSystemCenterVirtualMachineManagerVirtualMachineTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSystemCenterVirtualMachineManagerVirtualMachineTemplate>`.
  RefTo<AzurermSystemCenterVirtualMachineManagerVirtualMachineTemplate>
  get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_location_id` attribute.
  TfRef<String> get customLocationId =>
      TfRef.attribute<String>(this, 'custom_location_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `system_center_virtual_machine_manager_server_inventory_item_id` attribute.
  TfRef<String> get systemCenterVirtualMachineManagerServerInventoryItemId =>
      TfRef.attribute<String>(
        this,
        'system_center_virtual_machine_manager_server_inventory_item_id',
      );

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
