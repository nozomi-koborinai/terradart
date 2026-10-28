// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_system_center_virtual_machine_manager_inventory_items`.
const Set<String>
_azurermSystemCenterVirtualMachineManagerInventoryItemsSensitive = <String>{};

/// Data System Center Virtual Machine Manager Inventory Items Inventory enum for `inventory_type`.
extension type const DataSystemCenterVirtualMachineManagerInventoryItemsInventoryType._(
  TfArg<String> _
) implements TfArg<String> {
  DataSystemCenterVirtualMachineManagerInventoryItemsInventoryType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  DataSystemCenterVirtualMachineManagerInventoryItemsInventoryType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataSystemCenterVirtualMachineManagerInventoryItemsInventoryType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const cloud =
      DataSystemCenterVirtualMachineManagerInventoryItemsInventoryType._(
        TfArgLiteral('Cloud'),
      );
  static const virtualmachine =
      DataSystemCenterVirtualMachineManagerInventoryItemsInventoryType._(
        TfArgLiteral('VirtualMachine'),
      );
  static const virtualmachinetemplate =
      DataSystemCenterVirtualMachineManagerInventoryItemsInventoryType._(
        TfArgLiteral('VirtualMachineTemplate'),
      );
  static const virtualnetwork =
      DataSystemCenterVirtualMachineManagerInventoryItemsInventoryType._(
        TfArgLiteral('VirtualNetwork'),
      );

  static const List<
    DataSystemCenterVirtualMachineManagerInventoryItemsInventoryType
  >
  values = [cloud, virtualmachine, virtualmachinetemplate, virtualnetwork];
}

/// Factory wrapper for `azurerm_system_center_virtual_machine_manager_inventory_items`.
final class DataAzurermSystemCenterVirtualMachineManagerInventoryItems
    extends Data {
  static const String tfType =
      'azurerm_system_center_virtual_machine_manager_inventory_items';

  DataAzurermSystemCenterVirtualMachineManagerInventoryItems(
    super.localName, {
    required DataSystemCenterVirtualMachineManagerInventoryItemsInventoryType
    inventoryType,
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
