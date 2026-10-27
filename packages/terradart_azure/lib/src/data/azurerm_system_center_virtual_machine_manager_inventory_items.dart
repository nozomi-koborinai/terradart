// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_system_center_virtual_machine_manager_inventory_items`.
const Set<String>
_azurermSystemCenterVirtualMachineManagerInventoryItemsSensitive = <String>{};

/// Factory wrapper for `azurerm_system_center_virtual_machine_manager_inventory_items`.
final class DataAzurermSystemCenterVirtualMachineManagerInventoryItems
    extends Data {
  static const String tfType =
      'azurerm_system_center_virtual_machine_manager_inventory_items';

  DataAzurermSystemCenterVirtualMachineManagerInventoryItems(
    super.localName, {
    required TfArg<String> inventoryType,
    required TfArg<String> systemCenterVirtualMachineManagerServerId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'inventory_type': inventoryType,
           'system_center_virtual_machine_manager_server_id':
               systemCenterVirtualMachineManagerServerId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSystemCenterVirtualMachineManagerInventoryItemsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `inventory_items` attribute.
  TfRef<List<Map<String, Object?>>> get inventoryItems =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'inventory_items');

  /// Reference to `inventory_type` attribute.
  TfRef<String> get inventoryType =>
      TfRef.attribute<String>(this, 'inventory_type');

  /// Reference to `system_center_virtual_machine_manager_server_id` attribute.
  TfRef<String> get systemCenterVirtualMachineManagerServerId =>
      TfRef.attribute<String>(
        this,
        'system_center_virtual_machine_manager_server_id',
      );
}
